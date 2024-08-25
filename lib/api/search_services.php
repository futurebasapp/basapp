<?php
// Configurações do banco de dados
$host = '127.0.0.1:3306'; // Ajuste conforme necessário
$dbname = 'u862981574_basapp';
$username = 'u862981574_thisthefuture';
$password = '181920Ta';

// Conexão com o banco de dados
$conn = new mysqli($host, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Conexão falhou: " . $conn->connect_error);
}

// Recebe o termo de pesquisa enviado pelo Flutter
$search_query = $_GET['query'];

// Prepara a consulta para buscar serviços correspondentes
$sql = "SELECT id, nome, descricao, preco FROM servicos WHERE nome LIKE ? OR descricao LIKE ?";
$stmt = $conn->prepare($sql);
$search_term = "%$search_query%";
$stmt->bind_param("ss", $search_term, $search_term);
$stmt->execute();
$result = $stmt->get_result();

$servicos = [];

while ($row = $result->fetch_assoc()) {
    $servicos[] = $row;
}


echo json_encode($servicos);

$stmt->close();
$conn->close();
