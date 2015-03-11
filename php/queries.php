<?php
$sql= "SELECT * FROM Orders ";
$sql.= " INNER JOIN Customers ON PkCustomer=FkCustomer";
$sql.= " WHERE PkOrder=%d";
$order;
$subtotal =0;


if ($result = $mysqli->query( sprintf($sql, $invoice_number) ))
	{
		$order = $result->fetch_assoc();
	
	}
	

?>