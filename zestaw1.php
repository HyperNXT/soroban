<!DOCTYPE html>
<?php require("function.php"); ?>
<html>

    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Soroban</title>
        <link rel="stylesheet" href="style.css">
        <script src="skrypt.js" charset="utf-8"></script>
        <script src="http://code.jquery.com/jquery-latest.min.js"></script>

        
        <script type="text/javascript">
      function wyslijZaznaczenie(ulId, nrOdp)
      {

            $.ajax
            ({
                type: "POST",
                url: "odczytaj.php",
                data: {"zaz": ulId},
                cache: false,
            });

                setTimeout(function(){zaznacz(ulId, nrOdp)});
      }
    </script>
        
    </head>
    <body>
    

    <?php
    switch($_GET['id'])
    {
        case 1: wyswietl(1);
        break;
        
        case 2: wyswietl(2);
        break;
        
        case 3: wyswietl(3);
        break;
        
        case 4: wyswietl(4);
        break;
        
        case 5: wyswietl(5);
        break;
        
        case 6: wyswietl(6);
        break;
        
        case 7: wyswietl(7);
        break;
        
        case 8: wyswietl(8);
        break;
        
        case 9: wyswietl(9);
        break;
        
        case 10: wyswietl(10);
        break;
        
        default;
    }
    ?>    
    
    </body>
</html>

