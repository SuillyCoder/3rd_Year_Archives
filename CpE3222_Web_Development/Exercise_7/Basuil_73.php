<?php session_start(); ?>
<!DOCTYPE html>
<html>
<head><title>Address Book</title></head>
<body>
    <h1>📒 Address Book</h1>
    <h3>Select Operation</h3>
    <a href="Basuil_73_Create.php"><button>➕ Create Member</button></a>
    <a href="Basuil_73_Search.php"><button>🔍 Search Member</button></a>
    <a href="Basuil_73_Edit.php"><button>✏️ Edit Member</button></a>
    <a href="Basuil_73_Delete.php"><button>🗑️ Delete Member</button></a>

    <hr>
    <h2>📋 Current Members (<?= count($_SESSION['addressBook'] ?? []) ?>)</h2>
    <?php if (empty($_SESSION['addressBook'])): ?>
        <p>No members yet.</p>
    <?php else: ?>
        <table border="1" cellpadding="8">
            <tr><th>Name</th><th>Address</th><th>Number</th><th>Email</th></tr>
            <?php foreach ($_SESSION['addressBook'] as $member): ?>
                <tr>
                    <td><?= htmlspecialchars($member['name'])    ?></td>
                    <td><?= htmlspecialchars($member['address']) ?></td>
                    <td><?= htmlspecialchars($member['number'])  ?></td>
                    <td><?= htmlspecialchars($member['email'])   ?></td>
                </tr>
            <?php endforeach; ?>
        </table>
    <?php endif; ?>
</body>
</html>