<!DOCTYPE html>
<html>
<head>
<title></title>
</head>
<body>
<?php
    $fontSize = 1;
    do{
     echo "<p style=font-size:" . $fontSize . "px;>This text is " . $fontSize . " pixels large.</p>";
     $fontSize++;
    } while($fontSize <= 30);
?>
</body>
</html>