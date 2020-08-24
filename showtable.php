<!-- <?php
//include_once('connection.php');
//$query="select * from demo";
//$res = mysql_query($query);
?> -->


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Result</title>
  <link rel="stylesheet" href="style2.css" type="text/css">
</head>
<body>
<h1>COVID-19 Result</h1>
<div>
<table align="center" > <!-- class="box-table" -->
  <!-- <tr><th colspan="7">COVID-19 Result</th></tr> -->
  <tr>
    <th>Sl No.</th>
    <th>Age</th> 
    <th>Sex</th>
    <th>Temperature (°C)</th>
    <th>Assessment Date</th>
    <th>Assessment Score</th>
    <th>COVID-19 Result</th>
  </tr>
  
  <?php 

  $conn = mysqli_connect('localhost','root','','testing');

  if($conn-> connect_error){
    die("Connection failed: ". $conn-> connect_error);
  }
  $sql = "SELECT * FROM demo";

  $result = $conn-> query($sql);

  if($result-> num_rows > 0){
    while($rows = $result-> fetch_assoc()){
      echo "<tr><td>". $rows["Sl No."]."</td><td>". $rows["Age"]."</td><td>". $rows["Sex"]."</td><td>". $rows["Temperature"]."</td><td>". $rows["AsDate"]."</td><td>". $rows["Score"]."</td><td>". $rows["Covid19Res"]."</td></tr>";
    }
    echo "</table>";
  }
  else{
    echo "0 result";
  }

  $conn-> close();
  ?>

</table>
</div>
    <div class="footer2">
      <p>This COVID 19 Self Assessment System is only for software development purpose and may not yield actual result. Any information given by users of this system will not be disclosed or store to anywhere.</p>
    </div>

</body>
</html>