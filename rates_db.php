<?php

// Database connection
$servername = "localhost";
$username = "dinusha_addarticle";
$password = "";

// Create connection
$conn = new mysqli($servername, $username, $password);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully";

function add_rates($ID,$category,$start_weight,$end_weight,$price,$active_date,$current_status,$tempory_active_end_date)
{
	global $db;
	$tablename = tablename($sl_post_courier);
	$query='INSERT INTO '.$tablename.' (ID,category,start_weight,end_weight,price,active_date, current_status,tempory_active_end_date)
	values(:ID,:category,:start_weight,:end_weight,:price,:active_date,:current_status,:tempory_active_end_date)';
	try{
		$statement=$sl_post_couriers->prepare($query);
		$statement->bindvalue(':ID',$ID);
		$statement->bindvalue(':category',$category);
		$statement->bindvalue(':start_weight',$start_weight);
		$statement->bindvalue(':end_weight',$end_weight);
		$statement->bindvalue(':price',$price);
		$statement->bindvalue(':active_date',$active_date);
		$statement->bindvalue(':current_status',$current_status);
		$statement->bindvalue(':tempory_active_end_date',$tempory_active_end_date);
		$statement->execute();
		$statement->closecursor();
		$user_idlt = $db->lastInsertId();
		return $user_idlt;
	}
	catch(PDOException $e)
	{
		$error_message=$e->getmessage();
		echo $error_message;
	}
}

function select_rates_by_id($unicno,$iteam_category)
{
	global $db;
	 $tablename=tablename($iteam_category);
    $query = 'SELECT *
              FROM '.$tablename.'
              WHERE ID = :ID';

	try {
        $statement = $db->prepare($query);
        $statement->bindValue(':ID', $unicno);
        $statement->execute();
        $result = $statement->fetch();
        $statement->closeCursor();
        return $result;
    } catch (PDOException $e) {
        $error_message = $e->getMessage();
        echo $error_message;
    }
}


function charging_rate($weight,$type,$iteam_category)
{
	global $db;
	 $type='%'.$type.'%';
	 $tablename=tablename($iteam_category);
    $query = 'SELECT *
              FROM '.$tablename.'
              WHERE start_weight <= :weight
			  AND end_weight >= :weight
			  AND category LIKE :type 
			  AND current_status="Active"';

	try {
        $statement = $db->prepare($query);
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

function select_rates_by_status($current_status,$iteam_category) {
	
    global $db;
	
	 $tablename=tablename($iteam_category);
    $query = 'SELECT *
              FROM '.$tablename.'
              WHERE current_status = :current_status';
	try {
        $statement = $db->prepare($query);
		$statement->bindValue(':current_status', $current_status);
		$statement->execute();
		$set_data=array();		
		foreach ($statement as $row) {
		$data=new rates($row[0],$row[1],$row[2],$row[3],$row[4],$row[5],$row[6],$row[7]);
		$set_data[]=$data;
		}		
        $statement->closeCursor();
        return $result=$set_data;
    } catch (PDOException $e) {
        $error_message = $e->getMessage();
        echo $error_message;
    }
}

function select_rates_by_active_date($active_date,$iteam_category) {
	
    global $db;
	
	 $tablename=tablename($iteam_category);
    $query = 'SELECT *
              FROM '.$tablename.'
              WHERE active_date = :active_date';
	try {
        $statement = $db->prepare($query);
		$statement->bindValue(':active_date', $active_date);
		$statement->execute();
		$set_data=array();	
		foreach ($statement as $row) {
		$data=new rates($row[0],$row[1],$row[2],$row[3],$row[4],$row[5],$row[6],$row[7]);
		$set_data[]=$data;
		}		
        $statement->closeCursor();
        return $result=$set_data;
    } catch (PDOException $e) {
        $error_message = $e->getMessage();
        echo $error_message;
    }
}


function select_rates_by_tempory_active_end_date($temporydate,$iteam_category) {
	
    global $db;
	
	 $tablename=tablename($iteam_category);
    $query = 'SELECT *
              FROM '.$tablename.'
              WHERE tempory_active_end_date = :temporydate';
	try {
        $statement = $db->prepare($query);
		$statement->bindValue(':temporydate', $temporydate);
		$statement->execute();
		$set_data=array();        	
		foreach ($statement as $row) {
		$data=new rates($row[0],$row[1],$row[2],$row[3],$row[4],$row[5],$row[6],$row[7]);
		$set_data[]=$data;
		}		
        $statement->closeCursor();		
        return $result=$set_data;
    } catch (PDOException $e) {
        $error_message = $e->getMessage();
        echo $error_message;
    }
}



function select_rates_by_category($category,$iteam_category) {
	
    global $db;
	 $category='%'.$category.'%'; 
	 $tablename=tablename($iteam_category);
    $query = 'SELECT *
              FROM '.$tablename.'
              WHERE category LIKE :category ';
	try {
        $statement = $db->prepare($query);
		$statement->bindValue(':category', $category);
		$statement->execute();
		$set_data=array();        	
		foreach ($statement as $row) {
		$data=new rates($row[0],$row[1],$row[2],$row[3],$row[4],$row[5],$row[6],$row[7]);
		$set_data[]=$data;
		}		
        $statement->closeCursor();		
        return $result=$set_data;
    } catch (PDOException $e) {
        $error_message = $e->getMessage();
        echo $error_message;
    }
}


function select_rates_by_category_with_active_date($category,$active_date,$iteam_category)
 {
	
    global $db;
	
	 $tablename=tablename($iteam_category);
    $query = 'SELECT *
              FROM '.$tablename.'
              WHERE category = :category
			  AND  active_date=:active_date';
	try {
        $statement = $db->prepare($query);
		$statement->bindValue(':category', $category);
		$statement->bindValue(':active_date', $active_date);
		$statement->execute();
		$set_data=array();      	
		foreach ($statement as $row) {
		$data=new rates($row[0],$row[1],$row[2],$row[3],$row[4],$row[5],$row[6],$row[7]);
		$set_data[]=$data;
		}		
        $statement->closeCursor();		
        return $result=$set_data;
    } catch (PDOException $e) {
        $error_message = $e->getMessage();
        echo $error_message;
    }
}





function update_rate($ID,$category,$start_weight,$end_weight,$price,$active_date,$current_status,$tempory_active_end_date,$iteam_category) 
{    global $db;
     $tablename=tablename($iteam_category);
    $query = 'UPDATE '.$tablename.'
              SET category=:category,start_weight=:start_weight,end_weight=:end_weight,price=:price,active_date=:active_date,current_status=:current_status,tempory_active_end_date=:tempory_active_end_date
			  WHERE ID = :ID';
    try{
        $statement = $db->prepare($query);
		$statement->bindValue(':ID',$ID);
		$statement->bindvalue(':category',$category);
		$statement->bindvalue(':start_weight',$start_weight);
		$statement->bindvalue(':end_weight',$end_weight);
		$statement->bindvalue(':price',$price);
		$statement->bindvalue(':active_date',$active_date);
		$statement->bindvalue(':current_status',$current_status);
		$statement->bindvalue(':tempory_active_end_date',$tempory_active_end_date);
		$row_count = $statement->execute();
        $statement->closeCursor();
        return $row_count;
    }
	catch(PDOException $e)
	{
		$error_message=$e->getmessage();
		echo $error_message;
	}
	

}

  function tablename($tablecode)
	{
		switch ($tablecode) 
		{
  case "magazine_news":
    $code="news_and_magazine";
    break;
  case "businessletters_normalletters":
     $code="normal_and_business_letters";
    break;
  case "normal_parcel":
     $code="normal_parcel_rate";
    break;
  case "printedopenpacket":
     $code="printedmatter_and_openpacket";
    break;
  case "courier":
     $code="sl_post_courier";
    break; 			
  default:
    $code="Your favorite color is neither list, Please check before update!";
}
return $code;
		
	}

?>