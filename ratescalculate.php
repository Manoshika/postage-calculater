<?php
require_once 'connect.php';
$weight = $_REQUEST["weight"];
$type = $_REQUEST["type"];


global $db_connection;
         $query = 'SELECT price FROM  `sl_post_courier` WHERE start_weight <= :weight AND end_weight >= :weight AND category = :type AND current_status="Active"';

    try {
        $statement = $db_connection->prepare($query);
        $statement->bindValue(':weight', $weight);
        $statement->bindValue(':type', $type);
        $statement->execute();
        $result = $statement->fetch();
        $statement->closeCursor();
        if($result[0]=='')
        {
           echo("No Results!");
        }
        else
        {
            echo($result[0]);
        }
        
    } catch (PDOException $e) {
        $error_message = $e->getMessage();
        echo $error_message;
    }

?>


