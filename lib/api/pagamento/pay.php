<?php
include 'paypal_api.php';

// Defina os parâmetros do pagamento
$amount = "10.00";  // Valor do pagamento
$currency = "BRL";  // Moeda (pode ser USD, BRL, etc.)
$returnUrl = "http://seusite.com/sucesso.php";  // URL de retorno após sucesso
$cancelUrl = "http://seusite.com/cancelado.php";  // URL de cancelamento

// Sanitização dos parâmetros
$amount = filter_var($amount, FILTER_SANITIZE_NUMBER_FLOAT, FILTER_FLAG_ALLOW_FRACTION);
$currency = filter_var($currency, FILTER_SANITIZE_STRING);

// Criar pagamento
$result = createPayment($amount, $currency, $returnUrl, $cancelUrl);

// Responder com a URL de aprovação
header('Content-Type: application/json');
echo json_encode($result);
