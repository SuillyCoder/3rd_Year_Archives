<!DOCTYPE html>
<html>
<head>
    <title>Credit Card Validator</title>
</head>
    <?php
        function validateCard($cardNumber) {
            $pattern = '/^\d{4}(-|\s-\s|\s{1,2})\d{4}(\1)\d{4}(\1)\d{4}$|^\d{16}$/';
            $valid = preg_match($pattern, $cardNumber);
            $result = $valid ? "VALID CARD NUMBER" : "INVALID CARD NUMBER";
            echo "<p><strong>$cardNumber</strong> → $result</p>";
        }

        // Test Cases
        //validateCard("1234-5678-9101-1213");
        //validateCard("1234 - 5678 - 9101 - 1213");
        //validateCard("1234567891011213");
        //validateCard("1234  5678  9101  1213");

        // Some invalid cases to test rejection
        //validateCard("1234-5678-9101");        // Too short
        //validateCard("abcd-efgh-ijkl-mnop");   // Non-numeric
        //validateCard("1234_5678_9101_1213");   // Wrong separator
    ?>
<body>
    <form method="post">
        Enter your Card Number: 
        <input name="card" type="text">
        <br><br>
        <input type="submit" value="Submit">
    </form>

    <?php
        if ($_SERVER['REQUEST_METHOD'] == 'POST'){
            $cardInput = $_POST['card'];
            echo "<h3>Card Number: $cardInput</h3>";
            validateCard($cardInput);
        }
    ?>
</body>
</html>