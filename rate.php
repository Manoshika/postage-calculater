<!DOCTYPE html>
<html>
<head>
<style>
table 
{

  width: 100%;
  border-collapse: collapse; 
}


table, td, th {
  border: 1px solid black;
  padding: 5px;
}

th {text-align: left;}
</style>
</head>
<body>

<?php

$q = intval($_GET['q']);



mysqli_select_db($con,"postal_price_rates");
$sql="SELECT * FROM user WHERE id = '".$q."'";
$result = mysqli_query($con,$sql);

echo "<table>
<tr>

<th>Price</th>

</tr>";
while($row = mysqli_fetch_array($result)) {
  echo "<tr>";

  echo "<td>" . $row['price'] . "</td>";
  echo "</tr>";
}

echo "</table>";
mysqli_close($con);
?>

</body>
</html>