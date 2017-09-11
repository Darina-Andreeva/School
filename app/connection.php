<?php

$user ="root";
$pass="";

try
{
    $DB_con = new PDO('mysql:host=localhost;dbname=toucantech', $user, $pass);
    $DB_con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}
catch(PDOException $e)
{
    echo $e->getMessage();

}

$GLOBALS= $DB_con;


