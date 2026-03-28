<?php session_start();
$searchResults = null;

if (isset($_GET['search']) && $_GET['search'] !== '') {
    $query = strtolower(trim($_GET['search']));
    $searchResults = array_filter($_SESSION['addressBook'] ?? [], function($member) use ($query) {
        return str_contains(strtolower($member['name']),    $query) ||
               str_contains(strtolower($member['address']), $query) ||
               str_contains(strtolower($member['number']),  $query) ||
               str_contains(strtolower($member['email']),   $query);
    });
}
?>
<!DOCTYPE html>
<html>
<head><title>Search Members</title></head>
<body>
    <h1>🔍 Search Members</h1>
    <form method="get">
        <input type="text" name="search" placeholder="Search by name, address, number...">
        <input type="submit" value="Search">
    </form>

    <?php if ($searchResults !== null): ?>
        <h3>Results:</h3>
        <?php if (empty($searchResults)): ?>
            <p style="color:red">No members found.</p>
        <?php else: ?>
            <table border="1" cellpadding="8">
                <tr><th>Name</th><th>Address</th><th>Number</th><th>Email</th></tr>
                <?php foreach ($searchResults as $member): ?>
                    <tr>
                        <td><?= htmlspecialchars($member['name'])    ?></td>
                        <td><?= htmlspecialchars($member['address']) ?></td>
                        <td><?= htmlspecialchars($member['number'])  ?></td>
                        <td><?= htmlspecialchars($member['email'])   ?></td>
                    </tr>
                <?php endforeach; ?>
            </table>
        <?php endif; ?>
    <?php endif; ?>
    <br><a href="Basuil_73.php">← Back to Main Menu</a>
</body>
</html>