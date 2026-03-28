<?php session_start();
$message = "";

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $name    = trim($_POST['name']);
    $address = trim($_POST['address']);
    $number  = trim($_POST['number']);
    $email   = trim($_POST['email']);

    if (empty($name) || empty($address) || empty($number) || empty($email)) {
        $message = "<p style='color:red'>Please fill in all fields.</p>";
    } else {
        $_SESSION['addressBook'][] = array(
            'name'    => $name,
            'address' => $address,
            'number'  => $number,
            'email'   => $email
        );
        $message = "<p style='color:green'>Member '$name' added successfully!</p>";
    }
}
?>
<!DOCTYPE html>
<html>
<head><title>Create Member</title></head>
<body>
    <h1>➕ Add New Member</h1>
    <?= $message ?>
    <form method="post">
        Name:         <input type="text" name="name"><br><br>
        Address:      <input type="text" name="address"><br><br>
        Phone Number: <input type="text" name="number"><br><br>
        Email:        <input type="text" name="email"><br><br>
        <input type="submit" value="Add Member">
    </form>
    <br><a href="Basuil_73.php">← Back to Main Menu</a>
</body>
</html>