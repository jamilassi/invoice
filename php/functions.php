<?php
function get_address($row) 
	{
	
	$name = $row['Firstname'].', '.$row['Lastname'];
	
	$html = '<address>';
	
			if ($row['Company'] != '')
			{
			$html.= '<strong>'.$row['Company'].'</strong><br>';
			$html.= $name.'<br>';
			} else 
					{
					$html.= '<strong>'.$name.'</strong>';
						
					}
			
	$html.= $row['Address'].'<br>';
	$html.= $row['City'].', '.$row['State'].' '.$row['ZipCode'].'<br>';
	$html.= $row['Country'].'<br>';
	$html.= '<abbr title="Phone">Phone:</abbr>';
	$html.= $row['Phone'];
	$html.= '</address>';
	
	return $html;
	
	}
	
function get_order_rows($invoice_number)
	{
	global $mysqli;
	global $subtotal;
	$sql= "SELECT * FROM OrderRows ";
	$sql.= " INNER JOIN Products ON PkProduct=FkProduct";
	$sql.= " WHERE FkOrder=%d";
	
	
		
	if ($result = $mysqli->query( sprintf($sql, $invoice_number) ))
		{
		while ( $row = $result->fetch_assoc() ) 
		{
			
			$price=$row['Quantity']*$row['Price'];
			$subtotal+=$price;
			echo '<tr class="item-row">';
			
		      echo '<td class="item-name"><div>'.$row['Name'].'</div></td>';
		      echo '<td><div>'.$row['Description'].'</div></td>';
		      echo '<td><div>'.$row['Price'].'</div></td>';
		      echo '<td><div>'.$row['Quantity'].'</div></td>';
		      echo '<td><div>$'.$price.'</div></td>';
			  echo '</tr>';
		
		}
	}	
	}	