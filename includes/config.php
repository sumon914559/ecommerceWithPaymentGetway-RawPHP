<?php


 date_default_timezone_set('Asia/Dhaka');
    header('Content-Type: text/html; charset=utf-8');

    $user='root';
    $password=''; 
    $database='shopping';
    $connection = @mysql_connect("localhost",$user,$password) or die( mysql_error());
    @mysql_select_db($database) or die( "Unable to select database");
    mysql_set_charset('utf8', $connection); 






/*$mysql_hostname = "localhost";
$mysql_user = "root";
$mysql_password = "";
$mysql_database = "shopping";
$bd = mysql_connect($mysql_hostname, $mysql_user, $mysql_password) or die("Could not connect database");
mysql_select_db($mysql_database, $bd) or die("Could not select database");*/

/* For more information https://phpgurukul.com/php-projects-free-downloads/ */
?>