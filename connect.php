<?php
require_once 'config.php';

class Connection
{
    public static function getsoapConnection($host, $db, $user, $password,$dbRealName)
    {
        

        try {
			$dsn = "mysql:host=$host;dbname=$db;charset=UTF8";
            $options = [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION];
			$pdo = new PDO($dsn, $user, $password, $options);
            if($pdo){
//                echo "<font color='blue'>DB Connected </font>";
//                echo "</br>";
            }
			return $pdo;
        } catch (PDOException $e) {
			//echo" Database Error: $e->getMessage()";
            die($e->getMessage());
            exit();
        }
    }
}
$connection = new Connection();
$db_connection = $connection->getsoapConnection($host, $db, $user, $password,$dbRealName);
?>