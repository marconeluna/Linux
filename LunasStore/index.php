<html>

<head>
<title>Lunas Store</title>
</head>
<body>

<?php
ini_set("display_errors", 1);
header('Content-Type: text/html; charset=iso-8859-1');



echo 'Versao Atual do PHP: ' . phpversion() . '<br>';

$servername = "192.51.1.185";
$username = "root";
$password = "Acesso@10";
$database = "Agente";

// Criar Conexão.


$link = new mysqli($servername, $username, $password, $database);

/* Check Connection */
if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}

$query = "INSERT INTO dados (AgenteID, Nome, Grupo, Email, Telefone) VALUES (1, 'Marcone J Roque Luna', 'N1', 'marcone.luna@ebtic.com.br', 0)";


if ($link->query($query) === TRUE) {
  echo "New Record Created Successfully";
} else {
  echo "Error: " . $link->error;
}

?>
</body>
</html>
