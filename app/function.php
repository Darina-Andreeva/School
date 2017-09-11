<?php
$sth = $DB_con->prepare("SELECT school_name FROM schools");
$sth->execute();
$result = $sth->fetchAll();


if (isset($_POST['submit'])){
    $fname= $_POST['student_name'];
    $umail= $_POST['student_email'];
    $checkBox = $_POST['dropdown-selection'];
    var_dump($checkBox);
    if(empty($fname)){
        echo  $errors[] = "<p class='red'>The name required.</p>";
    }
    elseif(!preg_match("/^([a-zA-Z]+|[\p{Cyrillic}]+)$/u", $fname)) {
        echo  $errors[] = "<p class='red'>The name field should content only letters.</p>";
    }
    if(empty($umail)){
        echo  $errors[] = "<p class='red'>The email is required.</p>";
    }
    elseif(!filter_var($umail, FILTER_VALIDATE_EMAIL)) {
        echo  $errors[] = "<p class='red'>The email doesn't exist.</p>";
    }
    if(empty($checkBox)){
        echo  $errors[] = "<p class='red'>Pick the school.</p>";
    }

    if(!isset($errors)){
        $students = $DB_con->prepare("INSERT INTO member (member_name, member_email, member_school ) VALUES ('$fname','$umail','$checkBox')");
        $students->execute();
        header("Location: home.php");
    }
}

if (isset($_POST['find'])) {
    $school_name= $_POST['make'];
    $school = $DB_con->prepare(" SELECT * FROM member WHERE member_school LIKE '%$school_name%'");
    $school->execute();
    $resultSchool = $school->fetchAll();
}

