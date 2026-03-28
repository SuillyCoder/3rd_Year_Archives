<!DOCTYPE html>
<html>
<head>
</head>
<?php
    $REGIONS = array("Region 6", "Region 7");
    if(isset($_POST['action']))
    {
        if(empty($_POST['name']) || empty($_POST['atttype']))
        {
            $error=true;
        }
    }
?>

<body>
    <?php if (isset($error)) : ?>
        <p style = "color: red;">Please fill in the missing areas</p>
    <?php endif?>

     <h1> REGISTRATION </h1>
        <!--- NOTE: POST IS A PREFFERED METHOD -->
        <form action = "register.php" method="post">
            Name: <input name="name" type="text">
            <br><br>
            Attendee Type: 
            <input name="atttype" type="radio" value="Professional">Professional
            <input name="atttype" type="radio" value="Student">Student
            <br><br>

            Region:
            <select name="region">
                <?php foreach ($REGIONS as $region) : ?>
                    <option value="<?= $region ?>"><?= $region ?></option>
                <?php endforeach; ?>
            </select>

            Organization Type: 
            <select name="orgtype">
                <option value="Academe">Academe</option>
                <option value="Industry">Industry</option>
            </select>
            <br><br>
            <input type="submit" value="register">
        </form>

</body>
</html>