<?php
include 'paypal_api.php';  // Certifique-se de que 'paypal_api.php' está no mesmo diretório ou ajuste o caminho conforme necessário

// Captura os parâmetros da URL
$paymentId = $_GET['paymentId'] ?? null;
$PayerID = $_GET['PayerID'] ?? null;

if ($paymentId && $PayerID) {
    // Confirmar o pagamento com PayPal
    $accessToken = getAccessToken();
    $paymentUrl = "https://api-m.sandbox.paypal.com/v1/payments/payment/$paymentId/execute";

    $paymentData = [
        "payer_id" => $PayerID,
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
    curl_close($ch);

    $responseData = json_decode($response, true);

    if (isset($responseData['state']) && $responseData['state'] === 'approved') {
        echo "Pagamento realizado com sucesso!";
    } else {
        echo "Falha ao confirmar o pagamento.";
    }
} else {
    echo "Parâmetros de pagamento inválidos.";
}