<?php
// Configurações do banco de dados
$host = '127.0.0.1:3306';
$dbname = 'u862981574_basapp';
$username = 'u862981574_thisthefuture';
$password = '181920Ta';

$conn = new mysqli($host, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Conexão falhou: " . $conn->connect_error);
}

// Recebe os dados de login enviados pelo Flutter
$email = $_POST['email'];
$senha = $_POST['senha'];

// Verifica se os campos estão preenchidos
if (empty($email) || empty($senha)) {
    echo json_encode(array("status" => "error", "message" => "Todos os campos são obrigatórios."));
    exit();
}

// Verifica se o usuário existe no banco de dados
$sql = "SELECT id, senha FROM users WHERE email = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $email);
$stmt->execute();
$stmt->store_result();

if ($stmt->num_rows > 0) {
    $stmt->bind_result($user_id, $senha_hashed);
    $stmt->fetch();

    // Verifica se a senha está correta
    if (password_verify($senha, $senha_hashed)) {
        echo json_encode(array("status" => "success", "message" => "Login bem-sucedido.", "user_id" => $user_id));
    } else {
        echo json_encode(array("status" => "error", "message" => "Senha incorreta."));
    }
} else {
    echo json_encode(array("status" => "error", "message" => "Email não encontrado."));
}

$stmt->close();
$conn->close();
?>