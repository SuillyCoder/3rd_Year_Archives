<html>
    <head>
        <title></title>
    </head>
    <body>
        <?php

            $hashes = [
                "f4552671f8909587cf485ea990207f3b",
                "647bba344396e7c8170902bcf2e15551",
                "2afe4567e1bf64d32a5527244d104cea"
            ];

            $results = [];

            // Brute-force all 3-digit PINs from 000 to 999
            for ($i = 0; $i <= 999; $i++) {
                $pin = str_pad($i, 3, "0", STR_PAD_LEFT); // Ensures format: 000, 001, ..., 999
                $hash = md5($pin);

                if (in_array($hash, $hashes)) {
                    $index = array_search($hash, $hashes) + 1;
                    $results[$index] = $pin;
                }
            }

            // Display results
            echo "<p>MD5 Hash Cracking Results:\n</p>";
            foreach ($hashes as $i => $hash) {
                $num = $i + 1;
                echo "<p>Hash #{$num}: {$hash}\n<p>";
                echo "<p>PIN Found : " . ($results[$num] ?? "Not found") . "\n\n<p>";
            }
         
        ?>
    </body>
</html>