<!DOCTYPE html>
<html>
<head>
    <title>Multiplication Table</title>
</head>
   
<body>
    <form method="post">
        Enter 'n' value here: 
        <input name="n" type="text">
        <br><br>
        <input type="submit" value="Submit">
    </form>

    <?php
        if ($_SERVER['REQUEST_METHOD'] == 'POST'){
            $Count = 1;
            $nInput = $_POST['n'];
            echo"<h2>Multiplication Table up to: $nInput</h2><br>";
            echo "<table border='1'>
                <tr>
                </tr>";
            while ($Count <= $nInput) {
                echo "<tr>";
                for ($i = 1; $i < 11; $i++){
                    echo "<td>" . $Count * $i . "</td>";
                }
                echo "</tr>";
                $Count++;
            }
            echo "</table>";
        }
    ?>
</body>
</html>