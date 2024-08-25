<?php
// Configurações do banco de dados
$host = '127.0.0.1:3306';
$dbname = 'u862981574_basapp';
$username = 'u862981574_thisthefuture';
$password = '181920Ta';

$conn = new mysqli($host, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Falha na conexão: " . $conn->connect_error);
}

// Recebe os dados enviados via POST
$nome = $_POST['nome'];
$email = $_POST['email'];
$senha = $_POST['senha'];

// Verifica se os dados foram enviados
if (empty($nome) || empty($email) || empty($senha)) {
    echo json_encode(array("status" => "error", "message" => "Todos os campos são obrigatórios."));
    exit();
}

// Verifica se o email já está registrado
$sql = "SELECT id FROM users WHERE email = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $email);
$stmt->execute();
$stmt->store_result();

if ($stmt->num_rows > 0) {
    echo json_encode(array("status" => "error", "message" => "Email já cadastrado."));
    $stmt->close();
    exit();
}

$stmt->close();

// Criptografa a senha
$senha_hashed = password_hash($senha, PASSWORD_BCRYPT);

// Insere o novo usuário no banco de dados
$sql = "INSERT INTO users (nome, email, senha) VALUES (?, ?, ?)";
$stmt = $conn->prepare($sql);
$stmt->bind_param("sss", $nome, $email, $senha_hashed);

if ($stmt->execute()) {
    echo json_encode(array("status" => "success", "message" => "Usuário cadastrado com sucesso."));
} else {
    echo json_encode(array("status" => "error", "message" => "Erro ao cadastrar usuário."));
}

$stmt->close();
$conn->close();
?>