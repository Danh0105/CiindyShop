<?php

namespace App\Http\Controllers\Admin;

use App\HelpersClass\Date;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Transaction;
use App\Models\Product;
use Illuminate\Support\Facades\DB;

class AdminStatisticalController extends Controller
{
    public function index()
    {
        //Tổng hđơn hàng
        $totalTransactions = \DB::table('transactions')->select('id')->count();

        //Tổng thành viên
        $totalUsers = \DB::table('users')->select('id')->count();

        // Tông sản phẩm
        $totalProducts = \DB::table('products')->select('id')->count();


        // Tông đánh giá
        $totalRatings = \DB::table('ratings')->select('id')->count();

        // Danh sách đơn hàng mới
        $transactions = Transaction::orderByDesc('id')
            ->limit(10)
            ->get();

        // Top sản phẩm xem nhiều
        $topViewProducts = Product::orderByDesc('pro_view')
            ->limit(10)
            ->get();

        // Top sản phẩm mua nhiều
        $topPayProducts = Product::orderByDesc('pro_pay')
            ->limit(10)
            ->get();

        // Thống kê trạng thái đơn hàng
        // Tiep nhan
        $transactionDefault = Transaction::where('tst_status', 1)->select('id')->count();
        // dang van chuyen
        $transactionProcess = Transaction::where('tst_status', 2)->select('id')->count();
        // Thành công
        $transactionSuccess = Transaction::where('tst_status', 3)->select('id')->count();
        //Cancel
        $transactionCancel = Transaction::where('tst_status', -1)->select('id')->count();

        $statusTransaction = [
            [
                'Hoàn tất', $transactionSuccess, false
            ],
            [
                'Đang vận chuyển', $transactionProcess, false
            ],
            [
                'Tiếp nhận', $transactionDefault, false
            ],
            [
                'Huỷ bỏ', $transactionCancel, false
            ]
        ];

        $listDay = Date::getListDayInMonth();

        //Doanh thu theo tháng ứng với trạng thái đã xử lý
        $revenueTransactionMonth = Transaction::where('tst_status', 3)
            ->whereMonth('created_at', date('m'))
            ->select(\DB::raw('sum(tst_total_money) as totalMoney'), \DB::raw('DATE(created_at) day'))
            ->groupBy('day')
            ->get()->toArray();

        //Doanh thu theo tháng ứng với trạng thái tiếp nhận
        $revenueTransactionMonthDefault = Transaction::where('tst_status', 1)
            ->whereMonth('created_at', date('m'))
            ->select(\DB::raw('sum(tst_total_money) as totalMoney'), \DB::raw('DATE(created_at) day'))
            ->groupBy('day')
            ->get()->toArray();

        $arrRevenueTransactionMonth = [];
        $arrRevenueTransactionMonthDefault = [];
        foreach ($listDay as $day) {
            $total = 0;
            foreach ($revenueTransactionMonth as $key => $revenue) {
                if ($revenue['day'] ==  $day) {
                    $total = $revenue['totalMoney'];
                    break;
                }
            }

            $arrRevenueTransactionMonth[] = (int)$total;

            $total = 0;
            foreach ($revenueTransactionMonthDefault as $key => $revenue) {
                if ($revenue['day'] ==  $day) {
                    $total = $revenue['totalMoney'];
                    break;
                }
            }
            $arrRevenueTransactionMonthDefault[] = (int)$total;
        }
        $results = DB::table('orders')
            ->join('transactions', 'transactions.id', '=', 'orders.od_transaction_id')
            ->join('products', 'products.id', '=', 'orders.od_product_id')
            ->select(
                DB::raw('SUM(orders.od_qty * products.pro_price_entry) AS tongnhap'),
                DB::raw('SUM(orders.od_qty * orders.od_price) AS tongban'),
                DB::raw('MONTH(transactions.created_at) AS transaction_month')
            )
            ->groupBy(DB::raw('MONTH(transactions.created_at)'))
            ->get();
        $profit = array_fill(0, 12, 0);
        $sum = array_fill(0, 12, 0);
        foreach ($results as $item) {
            $profit[$item->transaction_month - 1] += $item->tongban - $item->tongnhap;
            $sum[$item->transaction_month - 1] += $item->tongban;
        }

        $viewData = [
            'profit'                     => json_encode($profit),
            'sum'                        => json_encode($sum),
            'totalTransactions'          => $totalTransactions,
            'totalUsers'                 => $totalUsers,
            'totalProducts'              => $totalProducts,
            'totalRatings'               => $totalRatings,
            'transactions'               => $transactions,
            'topViewProducts'            => $topViewProducts,
            'topPayProducts'             => $topPayProducts,
            'statusTransaction'          => json_encode($statusTransaction),
            'listDay'                    => json_encode($listDay),
            'arrRevenueTransactionMonth' => json_encode($arrRevenueTransactionMonth),
            'arrRevenueTransactionMonthDefault' => json_encode($arrRevenueTransactionMonthDefault)
        ];

        return view('admin.statistical.index', $viewData);
    }
    public function getday()
    {
        $results = DB::table('orders')
            ->join('transactions', 'transactions.id', '=', 'orders.od_transaction_id')
            ->join('products', 'products.id', '=', 'orders.od_product_id')
            ->select(
                DB::raw('SUM(products.pro_price_entry * orders.od_qty) AS gianhap'),
                DB::raw('SUM(orders.od_price * orders.od_qty) AS giaban'),
                DB::raw('DATE(transactions.created_at) AS transaction_day')
            )
            ->groupBy(DB::raw('DATE(transactions.created_at)'))
            ->get();

        /*         return response()->json($results);
 */
        $profit = [];
        $sum = [];
        $day = [];
        foreach ($results as $item) {
            $profit[] = $item->giaban - $item->gianhap;
            $sum[] = $item->giaban;
            $day[] = $item->transaction_day;
        }
        $viewData = [
            'profit'  => $profit,
            'sum'     => $sum,
            'day'     => $day,
        ];
        return response()->json($viewData);
    }
}
