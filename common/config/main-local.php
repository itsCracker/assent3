<?php
return [
    'components' => [
        'db' => [
            'class' => 'yii\db\Connection',
            'dsn' => 'mysql:host=127.0.0.1;dbname=official_assent',
            'username' => 'root',
            'password' => 'root',
            'charset' => 'utf8',
        ],
        'user' => [
            'class' => 'yii\web\User',
            'identityClass' => 'common\models\User',
            'enableAutoLogin' => false,
            'enableSession' => true,
            'loginUrl' => 'http://assent.ke/site/login',
            'identityCookie' => [
                'name' => '_drozone-ERP',
                'httpOnly' => true,
                'domain' => '.assent.ke'
            ],
        ],
        'session' => [
            'name' => 'drozone-ERP',
            'cookieParams' => [
                'domain' => '.assent.ke',
                'httpOnly' => true,
            ],
        ],
        'mailer' => [
            'class' => 'yii\swiftmailer\Mailer',
            'viewPath' => '@common/mail',
            // send all mails to a file by default. You have to set
            // 'useFileTransport' to false and configure a transport
            // for the mailer to send real emails.
            'useFileTransport' => true,
        ],
    ],
];
