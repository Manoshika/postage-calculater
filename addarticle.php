<?php


/*
require_once('../model/database.php');
require_once('../model/user_db.php');
require_once ("CheckSession.php");
require_once('../model/pooffice_db.php');
*/
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css" />
  <script src="../bootstrap/js/bootstrap.min.js"></script>
  <script src="../jquery/3.4.1/jquery.min.js"></script>
  <script>
/*
	$(document).ready(function(){
    $("btnstore").submit(function(){
 if ($('input:checkbox').filter(':checked').length < 1){
        alert("Please Check at least one Check Box");
 return false;
 }
    });
});
*/
</script>

<title>Search Article</title>
<style>
    .divback {
        background-color: #EBEBEB;
        height:400px;
}
</style>
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>


</head>

<body>
        	
        <div class="form-group">
            
        <div class="col-sm-6">
        <label for="inputPostalCode">Type </label>

        <select name="P_type" id="P_type" tabindex="5" required>
            <?php
            require_once 'connect.php';
            global $db_connection;
             $query = 'SELECT Distinct(category)  FROM  `sl_post_courier`;';

        try {
            $statement = $db_connection->prepare($query);
            $statement->execute();
            
            while($result = $statement->fetch())
            {
                
                ?>
            <option value="<?php echo($result[0]); ?>"><?php echo($result[0]); ?></option>
            <?php
            }
            $statement->closeCursor();
        } catch (PDOException $e) {
            $error_message = $e->getMessage();
            echo $error_message;
        }
            ?>
            </select>
            
        </div>
        
        <div class="col-sm-6">
        <label for="inputPostalCode">Weight (g.) </label>
        <input type="text" class="form-control" id="inputPostalCode" name="iweight" placeholder="Weight grams only"  onClick="clear_price();" onkeypress="GetDetail(inputPostalCode.value,P_type.value);"  onBlur="GetDetail(inputPostalCode.value,P_type.value);"  value="" required tabindex="6">
        </div>

        <div class="col-sm-6">
        <label for="price">Postal Price (Rs.)</label>
        <input type="text" class="form-control" id="inputpostage" readonly name="ipostage" placeholder="Postage"  onClick="GetDetail(inputPostalCode.value,P_type.value);"  onMouseOut="" value="" required tabindex="7" o>
        </div>
        </div>
      
</div>
</div>        
           </form>
		
	</div>
	<script>
        
        function clear_price() 
        {
		  document.getElementById("inputpostage").value = "";
		}

		function GetDetail(str,ttt) {
			if (str.length == 0) {
				document.getElementById("inputpostage").value = "";
				return;
			}
			else {

				var xmlhttp = new XMLHttpRequest();
				xmlhttp.onreadystatechange = function () {

					if (this.readyState == 4 &&
							this.status == 200) {
//						alert(this.responseText);
//						var myObj = JSON.parse(this.responseText);
//						
						document.getElementById("inputpostage").value = this.responseText;	
					}
				};

				xmlhttp.open("GET", "ratescalculate.php?weight=" + str+"&type="+ttt, true);
			
				xmlhttp.send();
			}
		}
	</script>
</body>

</html>
