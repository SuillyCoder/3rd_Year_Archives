<!DOCTYPE html>
<html>
<head>
<title></title>
</head>
<body>
<?php
    $QPassNum = 1234567;
    $lastDigit = $QPassNum % 10;
    echo "<p> Quarantine Pass Number: " .  $QPassNum . "</p>";
    if ($lastDigit % 2 == 0){
    echo "<p>Allowed Days: <br />
          Tuesday: <br /> 
          Thursday: <br /> 
          Saturday: <br /> </p>";
    }
    else{
         echo "<p>Allowed Days: <br />
          Monday: <br /> 
          Wednesday: <br /> 
          Friday: <br /> </p>";
    }
?>
</body>
</html>