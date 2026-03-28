<!DOCTYPE html>
<html>
<head>
    <title>Register Status</title>

</head>
<?php
//    if(empty($_POST['name']) || (empty($_POST['atttype']))){
//       header("Location: /UserDataTest/index.html");
//       exit;
//    }
?>
<body>
    <h1>Hello, <?= $_POST['name'] ?></h1>
    <h1>Hailing from <?= $_POST['region'] ?></h1>
    <h1>You are a <?= $_POST['atttype'] ?></h1>
    <h1>From an <?= $_POST['orgtype'] ?></h1>
</body>
</html>