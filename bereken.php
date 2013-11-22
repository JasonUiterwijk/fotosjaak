<?php 
if ( $_POST["bewerking"] == 1)
{
	echo "Er moet worden opgeteld";
	$uitkomst = $_POST["getal1"] + $_POST["getal2"];
	$teken = " + ";
}
else if ($_POST["bewerking"] ==2)
{
	echo "Er moet worden afgetrokken";
	$uitkomst = $_POST["getal1"] - $_POST["getal2"];
	$teken = " - ";
}
 else if ($_POST["bewerking"] ==3)
 
 
{
	echo "Er moet worden vermeningvuldigd";
	$uitkomst = $_POST["getal1"] * $_POST["getal2"];
	$teken = " * ";
}
else if ($_POST["bewerking"] ==4)
{
	echo "Er moet worden gedeeld";
	$uitkomst = $_POST["getal1"] / $_POST["getal2"];
	$teken = " / ";
}
else 
{
	echo "er is geen keuze gemaakt";
}



//$som = $_POST["getal1"] + $_POST["getal2"]; 
echo $_POST["getal1"]. " + ".$_POST["getal2"]. " = ".$uitkomst; 
?>
<a href="index.php">opnieuw</a>
