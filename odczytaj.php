<?php

if(isset($_POST['zaz']))
{
    $db_config = array(
    'host' => 'localhost',
     'port' => '3306',
     'user' => 'root',
     'pass' => '',
     'db' => 'soroban',
     'db_type' => 'mysql',
     'encoding' => 'utf-8'
    );


    try
    {
     $dsn = $db_config['db_type'] .
     ':host=' . $db_config['host'] .
     ';port=' . $db_config['port'] .
     ';encoding=' . $db_config['encoding'] .
     ';dbname=' . $db_config['db'];

     // tworzymy obiekt klasy PDO inicjując tym samym połączenie
     $dbh = new PDO($dsn, $db_config['user'],  $db_config['pass']);
     $dbh -> query ('SET NAMES utf8');
     $dbh -> query ('SET CHARACTER_SET utf8_unicode_ci');

     // ustawiamy opcję PDO::ATTR_ERRMODE:
     $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
     
     $stmt = $dbh->prepare('UPDATE podanaodp SET podana = :zaz WHERE id_pod = 1');  
     $stmt->bindValue(':zaz', $_POST['zaz'], PDO::PARAM_INT); 
     $result = $stmt->execute();  
     $stmt->closeCursor();

    } catch(PDOException $e)
    {
     die('Unable to connect: ' . $e->getMessage());
    }
}
?>
