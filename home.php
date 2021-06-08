<div id="wrapper">
	<div id="page">
<p>
<p>
		<div id="box2">
			<p><b>Welcome to e-waste collection services.</b></p>
		
		</div>
		<div id="poptrox"> 
			<!-- start -->
			<ul id="gallery">
				<li class="nopad"><a href="index.php?page=1">	
	<img src="apply_online_doi.png" width="230" height="150" alt="" title="Apply now" /></a></li>
				<li><a href="index.php?page=2"><img src="payments.png" width="230" height="150" alt="" title="Praesent scelerisque scelerisque erat" /></a></li>
				<li><a href="index.php"><img src="collection.jfif" width="230" height="150" alt="" title="Integer sit amet pede vel arcu aliquet pretium" /></a></li>
			<li>Apply online here &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
			&nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp &nbsp</li>  
				<li>Make Payments Online &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
			&nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp </li>
                <li>Your Garbage gets collected </li>
			</ul>
		
		
		
		</div>
	
			<!-- end --> 
		</div>
		<p>
		<div id="box">
		<center>
			<p><h1>Latest News and Notisfications</h1></p>
			</center>
			<?php
$conn =mysqli_connect("localhost","root","","gabbage");
if ($conn->connect_error) { die("Connection failed: " . $conn->connect_error);}
$sql = "SELECT *  FROM notice ORDER BY id";
$result = $conn->query($sql);
echo "
<div id='wrapper'>
	<div id='page'>
<p>
<p>
		<div id='box2'>" ;

		if ( isset($result->num_rows) && $result->num_rows >0)
{
	 while($row = $result->fetch_assoc()) 
{
echo "<li>" . ucfirst($row["date"]) . "<br> - " . ucfirst($row["details"]) . "</li>";
}
} 
else {}
?>
		</div>
	</div>
</div>
</div>