<?php
function wyswietl($nrq)
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

     // w przypadku błędu, poniższe się już nie wykona:
     //define('DB_CONNECTED', true);
      $stmt = $dbh->prepare("Select * FROM pytania where nr_pyt= '" . $nrq . "' AND zestaw = 1");
      $stmt->execute();
      $row = $stmt->fetch(PDO::FETCH_ASSOC);
      echo $row['tresc']; 
        
      $stmt->closeCursor();
        
      echo '<br/>';
        
      $stmt = $dbh->prepare("Select nr_odp FROM klucz WHERE nr_pyt = '" . $nrq . "' AND zestaw=1");
      $stmt->execute();
      $klucz = $stmt->fetch(PDO::FETCH_ASSOC);
        
      $stmt = $dbh->prepare("Select tresc FROM odpowiedzi WHERE nr_pyt = '" . $nrq . "' AND zestaw=1");
      $stmt->execute();
      $nr = 1;
      while($row = $stmt->fetch(PDO::FETCH_ASSOC))
      {
          switch($nr)
          {
          case 1: $odp = 'A';
          break;
          case 2: $odp = 'B';
          break;
          case 3: $odp = 'C';
          break;
          case 4: $odp = 'D';
          break;
          default;
          }
          
          echo '<ul class="' . $odp . '")><li id="' . $odp . '"  onclick="wyslijZaznaczenie(\'' . $odp . '\',\'' . $klucz['nr_odp'] . '\' )">' . $row['tresc'] . '</li></ul>' . 
          '<br/>';
          
          $nr++;
      }
        
     $stmt->closeCursor();
      
      $stmt = $dbh->prepare("Select podana FROM podanaodp WHERE id_pod = 1");
      $stmt->execute();
      $pod = $stmt->fetch(PDO::FETCH_ASSOC);
      if($pod['podana'] == $klucz['nr_odp'])
      {
       $stmt = $dbh->prepare("UPDATE tabe_wynikow SET pkt = pkt+1 WHERE id_druzyny = 1");
       $result = $stmt->execute();  
          
       $stmt->closeCursor();
      }
       $stmt->closeCursor();
        
    if($nrq < 10)
        echo '<li><a href="zestaw1.php?id=' . ++$nrq . '">DALEJ</a></li>';
    else
        echo '<li><a href="index.html">WRÓC</a></li>';
    // łapiemy ewentualny wyjątek:
    } catch(PDOException $e)
    {
     die('Unable to connect: ' . $e->getMessage());
    }
}
?>