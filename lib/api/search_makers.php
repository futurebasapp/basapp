<?php
// Conexão com o banco de dados
$host = '127.0.0.1:3306'; // Ajuste conforme necessário
$dbname = 'u862981574_basapp';
$username = 'u862981574_thisthefuture';
$password = '181920Ta';

$conn = new mysqli($host, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Conexão falhou: " . $conn->connect_error);
}

// Recebe o termo de pesquisa enviado pelo Flutter
$search_query = $_GET['query'];

// Prepara a consulta para buscar makers
$sql = "SELECT id, nome, especialidade, rating FROM makers WHERE nome LIKE ?";
$stmt = $conn->prepare($sql);
$search_term = "%$search_query%";
$stmt->bind_param("s", $search_term);
$stmt->execute();
$result = $stmt->get_result();

$makers = [];

while ($row = $result->fetch_assoc()) {
    $makers[] = $row;
}

// Retorna os resultados como JSON
echo json_encode($makers);

$stmt->close();
$conn->close();
