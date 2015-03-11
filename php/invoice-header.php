<?php 
$sql= "SELECT * FROM Orders ";
$sql.= " INNER JOIN Customers ON PkCustomer=FkCustomer";
$sql.= " WHERE PkOrder=%d";

$result = $mysqli->query( sprintf($sql, $invoice_number));
$order = $result->fetch_assoc();
?>
<div id="page-wrap">

		<div id="header"></div>
		
		<div id="identity">
		
            <div id="address">Name of the Structure<br>
								Address<br>
								City, Postal Code<br>

								Phone: (555) 555-5555</div>

            <div id="logo">
								<img src="../img/logo.jpg" height="100px">
            </div>
		
		</div>
		
		<div style="clear:both"></div>
		
		<div id="customer">

            <div id="customer-title"><?php echo $client_address; ?></div>

            <table id="meta">
                <tr>
                    <td class="meta-head">Invoice #</td>
                    <td><div><?php echo $invoice_number; ?></div></td>
                </tr>
              <tr>

                    <td class="meta-head">Date</td>
                    <td><div id="date"><?php echo $now; ?></div></td>
                </tr>
                <tr>
                    <td class="meta-head">Amount Due</td>
                    <td><div class="due"><?php echo $order['Total']; ?></div></td>
                </tr>

            </table>
		
		</div>
		