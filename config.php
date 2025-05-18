<?php
    
    session_start(); // ✅ Required to access $_SESSION
    use Stripe\Terminal\Location;

    require __DIR__ . "/vendor/autoload.php";
    $stripe_secret_key = "sk_test_51RNbXGRdy99MB75kg4Dz8YqVSi5xRaNRVOtoafIO46qgDLO0Zp95YzCOu4heUhEjcueaaiZz9j8Cd2NZBZsewqa500ZzwU3ApW";
    \Stripe\Stripe::setApiKey($stripe_secret_key);


    $checkout_session = \Stripe\Checkout\Session::create([
        "mode" => "payment",
        "success_url" => "http://localhost/EcoVoltify/homepage.php",
        "line_items" => [
            [
                "quantity" => 1,
                "price_data" => [
                    "currency" => "usd",
                    "unit_amount" => $_SESSION['order_total_with_donation']*100,
                    "product_data" => [
                        "name" => "Total Price",

                    ]
                ]
            ]
        ]

    ]);
    http_response_code(303);
    header("Location: " . $checkout_session->url);


 ?>
