<!DOCTYPE html>
<html>
<head>
<title>Odd Even Table</title>
</head>
<body>
<?php
$Count = 1;
echo "<table border='1'>
      <tr>
        <th>ODD</th>
        <th>EVEN</th>
      </tr>";
while ($Count <= 100) {
    echo "<tr>
          <td>" . $Count . "</td>";
    $Count++;
    echo "<td>" . $Count . "</td>";
    $Count++;
    echo "</tr>";
}
echo "</table>";
?>
</body>
</html>
