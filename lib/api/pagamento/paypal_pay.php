<?php
// PayPal API credentials
$clientId = getenv('PAYPAL_CLIENT_ID');
$secretKey = getenv('PAYPAL_SECRET_KEY');

// PayPal API endpoints
$authUrl = "https://api-m.sandbox.paypal.com/v1/oauth2/token";
$paymentUrl = "https://api-m.sandbox.paypal.com/v1/payments/payment";

// Function to get an access token
function getAccessToken() {
    global $clientId, $secretKey, $authUrl;

    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $authUrl);
    curl_setopt($ch, CURLOPT_POST, true);
    curl_setopt($ch, CURLOPT_USERPWD, "$clientId:$secretKey");
    curl_setopt($ch, CURLOPT_POSTFIELDS, "grant_type=client_credentials");
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_HTTPHEADER, [
        "Accept: application/json",
        "Accept-Language: en_US"
    ]);

    $response = curl_exec($ch);
    if (curl_errno($ch)) {
        http_response_code(500);
        echo json_encode(['error' => curl_error($ch)]);
        exit;
    }
    curl_close($ch);

    if (!$response) {
        http_response_code(500);
        echo json_encode(['error' => 'Failed to retrieve access token.']);
        exit;
    }

    $responseData = json_decode($response, true);
    return $responseData['access_token'];
}

function createPayment($amount, $currency, $returnUrl, $cancelUrl) {
    global $paymentUrl;

    $accessToken = getAccessToken();

    $paymentData = [
        "intent" => "sale",
        "redirect_urls" => [
            "return_url" => $returnUrl,
            "cancel_url" => $cancelUrl,
        ],
        "payer" => [
            "payment_method" => "paypal",
        ],
        "transactions" => [
            [
                "amount" => [
                    "total" => $amount,
                    "currency" => $currency,
                ],
                "description" => "Payment description",
            ],
        ],
    ];

    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $paymentUrl);
    curl_setopt($ch, CURLOPT_POST, true);
    curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($paymentData));
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_HTTPHEADER, [
        "Content-Type: application/json",
        "Authorization: Bearer $accessToken",
    ]);

    $response = curl_exec($ch);
    if (curl_errno($ch)) {
        http_response_code(500);
        echo json_encode(['error' => curl_error($ch)]);
        exit;
    }
    curl_close($ch);

    $responseData = json_decode($response, true);

    if (isset($responseData['links'])) {
        foreach ($responseData['links'] as $link) {
            if ($link['rel'] === 'approval_url') {
                echo json_encode(['approval_url' => $link['href']]);
                exit;
            }
        }
    } else {
        http_response_code(500);
        echo json_encode(['error' => 'Payment creation failed.']);
        exit;
    }
}