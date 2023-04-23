<?php
return [
    [
        'name' => 'Sản Phẩm',
        'list-check' => ['category', 'producer', 'type', 'attribute', 'keyword', 'product', 'discount-code'],
        'icon' => 'fa fa-database',
        'sub'  => [
            [
                'name'  => 'Danh Mục',
                'namespace' => 'category',
                'route' => 'admin.category.index',
                'icon'  => 'fa fa-edit'
            ],
            [
                'name'  => 'Nhà sản Xuất',
                'namespace' => 'producer',
                'route' => 'admin.producer.index',
                'icon'  => 'fa fa-truck'
            ],
//            [
//                'name'  => 'Kiểu dữ liệu',
//                'namespace' => 'type',
//                'route' => 'admin.type.index',
//                'icon'  => 'fa fa-bookmark'
//            ],
            [
                'name'  => 'Dữ Liệu Sản Phẩm',
                'namespace' => 'attribute',
                'route' => 'admin.attribute.index',
                'icon'  => 'fa fa-key'
            ],
            [
                'name'  => 'Từ Khóa',
                'namespace' => 'keyword',
                'route' => 'admin.keyword.index',
                'icon'  => 'fa fa-key'
            ],
            [
                'name'  => 'Sản Phẩm',
                'namespace' => 'product',
                'route' => 'admin.product.index',
                'icon'  => 'fa fa-database'
            ],
            [
                'name'  => 'Mã Giảm Giá',
                'namespace' => 'discount-code',
                'route' => 'admin.discount.code.index',
                'icon'  => 'fa fa-fw fa-arrow-circle-down'
            ],
        ]
    ],
    [
        'name' => 'Bài Viết',
        'list-check' => ['menu','article'],
        'icon' => 'fa fa-edit',
        'sub'  => [
            [
                'name'  => 'Danh Mục',
                'namespace' => 'menu',
                'route' => 'admin.menu.index',
                'icon'  => 'fa fa-key'
            ],
            [
                'name'  => 'Bài Viết',
                'namespace' => 'article',
                'route' => 'admin.article.index',
                'icon'  => 'fa fa-key'
            ],
        ]
    ],
    [
        'name' => 'Tài Khoản',
        'list-check' => ['user','rating','comment','contact'],
        'icon' => 'fa fa-user',
        'sub'  => [
            [
                'name'  => 'Người Dùng',
                'route' => 'admin.user.index',
                'namespace' => 'user',
                'icon'  => 'fa fa-user'
            ],
            [
                'name'  => 'Đánh Giá',
                'namespace' => 'rating',
                'route' => 'admin.rating.index',
                'icon'  => 'fa fa-star'
            ],
            [
                'name'  => 'Bình Luận',
                'namespace' => 'comment',
                'route' => 'admin.comment.index',
                'icon'  => 'fa fa-star'
            ],
            [
                'name'  => 'Liên Hệ',
                'namespace' => 'contact',
                'route' => 'admin.contact',
                'icon'  => 'fa fa-star'
            ],
            
        ]
    ],
    [
        'name' => 'Đơn Hàng',
        'list-check' => ['transaction'],
        'icon' => 'fa-shopping-cart',
        'sub'  => [
            [
                'name'  => 'Quản Lý Đơn Hàng',
                'namespace' => 'transaction',
                'route' => 'admin.transaction.index',
                'icon'  => 'fa-cart-plus'
            ]
        ]
    ],
    [
        'name'  => 'Quản lý trang',
        'label' => 'true'
    ]
    
];
