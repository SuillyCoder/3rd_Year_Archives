<!DOCTYPE html>
<html>
<head>
<title>Odd Even Table</title>
</head>
<body>
<?php
$Celsius = 0;
echo "<table border='1'>
      <tr>
        <th>CELSIUS</th>
        <th>FAHRENHEIT</th>
      </tr>";
while ($Celsius <= 100) {
    echo "<tr>
          <td>" . $Celsius . "</td>";
    $Fahrenheit = ($Celsius * (9/5)) + 32;
    echo "<td>" .  $Fahrenheit . "</td>";
    $Celsius++;
    echo "</tr>";
}
echo "</table>";
?>
</body>
</html>
