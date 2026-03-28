<?php session_start();
$message = "";

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $index = $_POST['index'];
    $deletedName = $_SESSION['addressBook'][$index]['name'];
    array_splice($_SESSION['addressBook'], $index, 1);
    $message = "<p style='color:green'>Member '$deletedName' deleted.</p>";
}
?>
<!DOCTYPE html>
<html>
<head><title>Delete Member</title></head>
<body>
    <h1>🗑️ Delete Member</h1>
    <?= $message ?>

    <?php if (empty($_SESSION['addressBook'])): ?>
        <p>No members to delete.</p>
    <?php else: ?>
        <table border="1" cellpadding="8">
            <tr><th>Name</th><th>Address</th><th>Number</th><th>Email</th><th>Action</th></tr>
            <?php foreach ($_SESSION['addressBook'] as $i => $member): ?>
                <tr>
                    <td><?= htmlspecialchars($member['name'])    ?></td>
                    <td><?= htmlspecialchars($member['address']) ?></td>
                    <td><?= htmlspecialchars($member['number'])  ?></td>
                    <td><?= htmlspecialchars($member['email'])   ?></td>
                    <td>
                        <form method="post" onsubmit="return confirm('Delete <?= htmlspecialchars($member['name']) ?>?')">
                            <input type="hidden" name="index" value="<?= $i ?>">
                            <input type="submit" value="Delete">
                        </form>
                    </td>
                </tr>
            <?php endforeach; ?>
        </table>
    <?php endif; ?>
    <br><a href="Basuil_73.php">← Back to Main Menu</a>
</body>
</html>