<?php
require_once 'connect.php';

function charging_rate($weight,$type)
{
    global $db_connection;
         $query = 'SELECT * FROM  `sl_post_courier` WHERE start_weight <= :weight AND end_weight >= :weight AND category LIKE :type AND current_status="Active"';

    try {
        $statement = $db_connection->prepare($query);
        $statement->bindValue(':weight', $weight);
        $statement->bindValue(':type', $type);
        $statement->execute();
        $result = $statement->fetch();
        $statement->closeCursor();
        return $result;
    } catch (PDOException $e) {
        $error_message = $e->getMessage();
        echo $error_message;
    }

    
}

$pass_weight=300;
$pass_type='Normal';
$mano = charging_rate($pass_weight,$pass_type);
//print_r($mano);//This can view pass array


echo "<p><font color='Green'>Array number wise</font></p>";
echo "<p>".$mano[0]."</p>";
echo "<p>".$mano[1]."</p>";
echo "<p>".$mano[2]."</p>";
echo "<p>".$mano[3]."</p>";
echo "<p>".$mano[4]."</p>";
echo "<p>".$mano[5]."</p>";
echo "<p>".$mano[6]."</p>";
echo "<p>".$mano[7]."</p>";


echo "<p><font color='Green'>Array number wise</font></p>";

echo "<p>".$mano['ID']."</p>";
echo "<p>".$mano['category']."</p>";
echo "<p>".$mano['start_weight']."</p>";
echo "<p>".$mano['end_weight']."</p>";
echo "<p>".$mano['price']."</p>";
echo "<p>".$mano['active_date']."</p>";
echo "<p>".$mano['current_status']."</p>";
echo "<p>".$mano['tempory_active_end_date']."</p>";





?>


