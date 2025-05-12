<?php
    require 'vendor/autoload.php';
    require('stripe-php-master/init.php');
    require('stripe_keys.php');
    \Stripe\Stripe::setApiKey($secret_key);

// use Stripe\Terminal\Location;

//     require __DIR__ . "/vendor/autoload.php";
//     
//     

//     $checkout_session = \Stripe\Checkout\Session::create([
//         "mode" => "payment",
//         "success_url" => "http://localhost/EcoVoltify/success.php",
//         "line_items" => [
//             [
//                 "quantity" => 1,
//                 "price_data" => [
//                     "currency" => "usd",
//                     "unit_amount" => $_SESSION['finaltotal']*100,
//                     "product_data" => [
//                         "name" => $_SESSION['product_name'],

//                     ]
//                 ]
//             ]
//         ]

//     ]);
//     http_response_code(303);
//     header("Location: " . $checkout_session->url);

 ?>