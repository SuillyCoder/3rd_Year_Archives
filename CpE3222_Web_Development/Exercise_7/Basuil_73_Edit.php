<?php session_start();
$message = "";

// Save edited member
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $index = $_POST['index'];
    $_SESSION['addressBook'][$index] = array(
        'name'    => trim($_POST['name']),
        'address' => trim($_POST['address']),
        'number'  => trim($_POST['number']),
        'email'   => trim($_POST['email'])
    );
    $message = "<p style='color:green'>Member updated successfully!</p>";
}

// Load member into edit form
$editMember = null;
$editIndex  = null;
if (isset($_GET['edit'])) {
    $editIndex  = $_GET['edit'];
    $editMember = $_SESSION['addressBook'][$editIndex];
}
?>
<!DOCTYPE html>
<html>
<head><title>Edit Member</title></head>
<body>
    <h1>✏️ Edit Member</h1>
    <?= $message ?>

    <!-- Member list to pick who to edit -->
    <h3>Select a member to edit:</h3>
    <?php if (empty($_SESSION['addressBook'])): ?>
        <p>No members yet.</p>
    <?php else: ?>
        <table border="1" cellpadding="8">
            <tr><th>Name</th><th>Address</th><th>Number</th><th>Email</th><th>Action</th></tr>
            <?php foreach ($_SESSION['addressBook'] as $i => $member): ?>
                <tr>
                    <td><?= htmlspecialchars($member['name'])    ?></td>
                    <td><?= htmlspecialchars($member['address']) ?></td>
                    <td><?= htmlspecialchars($member['number'])  ?></td>
                    <td><?= htmlspecialchars($member['email'])   ?></td>
                    <td><a href="?edit=<?= $i ?>"><button>Edit</button></a></td>
                </tr>
            <?php endforeach; ?>
        </table>
    <?php endif; ?>

    <!-- Edit form appears when a member is selected -->
    <?php if ($editMember): ?>
        <h3>Editing: <?= htmlspecialchars($editMember['name']) ?></h3>
        <form method="post">
            <input type="hidden" name="index" value="<?= $editIndex ?>">
            Name:         <input type="text" name="name"    value="<?= htmlspecialchars($editMember['name'])    ?>"><br><br>
            Address:      <input type="text" name="address" value="<?= htmlspecialchars($editMember['address']) ?>"><br><br>
            Phone Number: <input type="text" name="number"  value="<?= htmlspecialchars($editMember['number'])  ?>"><br><br>
            Email:        <input type="text" name="email"   value="<?= htmlspecialchars($editMember['email'])   ?>"><br><br>
            <input type="submit" value="Save Changes">
        </form>
    <?php endif; ?>
    <br><a href="Basuil_73.php">← Back to Main Menu</a>
</body>
</html>