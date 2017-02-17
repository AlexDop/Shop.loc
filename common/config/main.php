<?php
return [
    'vendorPath' => dirname(dirname(__DIR__)) . '/vendor',
    'components' => [
        //'cart' => [
            //'class' => 'yz\shoppingcart\ShoppingCart',
           // 'cartId' => 'my_application_cart',
       // ],
        'mailer' => [
            'class' => 'yii\swiftmailer\Mailer',
        ],
    ],
];
