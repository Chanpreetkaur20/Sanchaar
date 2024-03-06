<?php 
// DB credentials.
define('DB_HOST','localhost');
define('DB_USER','techh');
define('DB_PASS','52wX366P5Bp667iH');
define('DB_NAME','techh');
// Establish database connection.
try
{
$dbh = new PDO("mysql:host=".DB_HOST.";dbname=".DB_NAME,DB_USER, DB_PASS,array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'"));
}
catch (PDOException $e)
{
exit("Error: " . $e->getMessage());
}
?>
