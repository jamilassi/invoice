<?php define('OK',1);
include("php/global.php");
include("php/connection.php");
include("php/invoiceNumber.php");
include("php/queries.php");
include("php/functions.php");
include("php/header.php");
include("php/invoice-header.php");

	
?>
<?php echo get_address($order); ?>

		<table id="items">
		
		  <tr>
		      <th>Item</th>
		      <th>Description</th>
		      <th>Unit Cost</th>
		      <th>Quantity</th>
		      <th>Price</th>
		  </tr>
<?php 
get_order_rows($invoice_number);
?>	  
		  
		  
		  <tr class="item-row">
		      <td class="item-name"><div class="delete-wpr"></div></td>
		      <td><div></div></td>
		      <td><div></div></td>
		      <td><div></div></td>
		      <td><div></div></td>
		  </tr>
		  
		  <tr>
		      <td colspan="2" class="blank"> </td>
		      <td colspan="2" class="total-line">Subtotal</td>
		      <td class="total-value"><div id="subtotal">$ &nbsp;<?php echo $order['SubTotal']; ?></div></td>
		  </tr>
          <tr>

		      <td colspan="2" class="blank"> </td>
		      <td colspan="2" class="total-line">TPS</td>
		      <td class="total-value"><div id="total">$ &nbsp;<?php echo round(($subtotal*5)/100,2);?></div></td>
		  </tr>
          <tr>

		      <td colspan="2" class="blank"> </td>
		      <td colspan="2" class="total-line">TVQ</td>
		      <td class="total-value"><div id="total">$ &nbsp;<?php echo round(($subtotal*9.975)/100,2);?></div></td>
		  </tr>
		  <tr>

		      <td colspan="2" class="blank"> </td>
		      <td colspan="2" class="total-line">Total</td>
		      <td class="total-value"><div id="total">$ &nbsp;<?php echo $order['Total']; ?></div></td>
		  </tr>
		 
		
		</table>
		
		<div id="terms">
		  <h5>Terms</h5>
		  <textarea>NET 30 Days. Finance Charge of 1.5% will be made on unpaid balances after 30 days.</textarea>
		</div>
	
	</div>
	

<?php
include("php/footer.php");
?>