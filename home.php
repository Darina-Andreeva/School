<?php
include "app".DIRECTORY_SEPARATOR."connection.php";
include "app".DIRECTORY_SEPARATOR."function.php";
include "template".DIRECTORY_SEPARATOR."template.php";


?>

<h3>You have successfully made a recording</h3>

<form action="#" method="post">
    <label>Schools</label>
    <select name="make" id="name">
        <option>Select</option>
        <?php foreach ($result as $key => $value){
            ?>
            <option value="<?php echo $value['school_name'];?>"><?php echo $value['school_name'];?></option>
        <?php }?>
    </select>
    <button type="submit" name="find">FIND</button>
</form>
<?php if ($_POST['make']!="Select"){?>
<table class="table table-striped">
    <thead>
    <tr>
        <th>Student Name</th>
        <th>Student Email</th>
    </tr>
    </thead>
    <tbody>
        <?php
        foreach (@$resultSchool as $key => $value){?>
        <tr>
            <td><?php echo $value['member_name'];?></td>
            <td><?php echo $value['member_email'];?></td>
        </tr>
        <?php }?>
    </tbody>
</table>
<?php } ?>
<script>
    document.getElementById('name').value = "<?php echo $_POST['make'];?>";
    </script>