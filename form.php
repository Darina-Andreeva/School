<?php
include "app".DIRECTORY_SEPARATOR."function.php";



?>

<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
    <h3>Students detail</h3>
    <label>Student name:</label>
        <input type="text" name="student_name"><br>

    <label>Student email:</label>
        <input type="email" name="student_email">

    <dl class="dropdown">
        <label>Student school:</label>
        <dt>
            <a href="#">
                <span class="hida">Select</span>
                <p class="multiSel"></p>
            </a>
            <input type="hidden" name="dropdown-selection" id="dropdown-selection" />
        </dt>

        <dd>
            <div class="mutliSelect">
                <ul>
                    <?php foreach ($result as $key => $value){?>
                        <li><input type='checkbox' value='<?php echo $value['school_name']?>' /><?php echo $value['school_name'];?></li>
                    <?php }?>
                </ul>
            </div>
        </dd>
    </dl>
    <button type="submit" name="submit">SAVE</button>
</form>

