<!DOCTYPE html>
<html lang="vi">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<style>
			body {
				font-family: "Times New Roman", Times, serif;
				margin: 20px;
			}

			header {
				text-align: center;
				background-color: #f2f2f2;
				padding: 10px;
			}

			section {
				margin: 20px 0;
			}

			table {
				width: 100%;
				border-collapse: collapse;
			}

			th,
			td {
				border: 1px solid #ddd;
				padding: 8px;
				text-align: left;
			}

			th {
				background-color: #f2f2f2;
			}

			footer {
				text-align: center;
				margin-top: 20px;
			}
		</style>
	</head>

	<body>

		<header>
			<h1>HÓA ĐƠN BÁN HÀNG</h1>
			<p><?php echo e($transaction["created_at"] ?? ""); ?></p>
		</header>

		<section>
			<h2>Thông tin khách hàng</h2>
			<p><strong>Tên khách hàng:</strong> <?php echo e($transaction["tst_name"] ?? ""); ?></p>
			<p><strong>Địa chỉ:</strong> <?php echo e($transaction["tst_address"] ?? ""); ?></p>
		</section>

		<section>
			<h2>Chi tiết đơn hàng</h2>
			<table id="order-table">
				<thead>
					<tr>
						<th>Sản phẩm</th>
						<th>Số lượng</th>
						<th>Đơn giá</th>
						<th>Thành tiền</th>
					</tr>
				</thead>
				<tbody>
					<?php $__currentLoopData = $order; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
						<tr>
							<td><?php echo e($item->product->pro_name ?? "[N\A]"); ?></td>
							<td><?php echo e($item->od_qty); ?></td>
							<td><?php echo e(number_format($item->od_price, 0, ",", ".")); ?> đ</td>
							<td><?php echo e(number_format($item->od_price * $item->od_qty, 0, ",", ".")); ?> đ</td>
						</tr>
					<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
				</tbody>
				<tfoot>
					<tr>
						<td style="text-align: right;" colspan="3"><strong>Tổng cộng:</strong></td>
						<td id="total-amount"></td>
					</tr>
				</tfoot>
			</table>
		</section>

		<footer>
			<p>Cảm ơn bạn đã mua hàng!</p>
		</footer>

		<script type="text/javascript">
			document.addEventListener("DOMContentLoaded", function() {
				var orderTable = document.getElementById('order-table');
				var rows = orderTable.getElementsByTagName('tbody')[0].getElementsByTagName('tr');
				var totalAmountCell = document.getElementById('total-amount');
				var totalAmount = 0;

				for (var i = 0; i < rows.length; i++) {
					var cells = rows[i].getElementsByTagName('td');
					var subtotal = parseFloat(cells[2].innerText.replace(/[^\d]/g, '')) * parseInt(cells[1].innerText
						.replace(/[^\d]/g, ''));
					totalAmount += subtotal;
				}

				totalAmountCell.innerText = numberFormat(totalAmount) + ' đ';
			});

			function numberFormat(value) {
				return value.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			}
		</script>

	</body>
	<script type="text/javascript">
		window.print();
	</script>

</html>
<?php /**PATH C:\laragon\www\THE CIINDYS\THE CIINDYS\resources\views/admin/transaction/order.blade.php ENDPATH**/ ?>