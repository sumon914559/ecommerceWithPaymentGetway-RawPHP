<?php 
session_start();
error_reporting(0);
include('includes/config.php');


/*echo "<pre>";
$reVale = urldecode($_GET['v']);
print_r($reVale);
echo "</pre>";
exit;*/

	$orderIds = $_SESSION['last_id'];
	//print_r($orderIds);
	//exit;

	if($_POST != NUll ){	
		 
		foreach($orderIds as $key => $tblOrderId){	 
		$getRes 			= $_POST;		
		$paymentMethod      = 'CashBaba';
		 $orderId 			= $getRes['OrderId'];
		 $transaction_id     = $getRes['TransactionId'];
		 $transaction_date   = $getRes['TransactionDate'];
		
		$_SESSION['customerName']  = $getRes['CustomerName'];
		$_SESSION['orderNo']       = $getRes['OrderId'];
		$_SESSION['TransactionId'] = $getRes['TransactionId'];
		
			//mysql_query("update orders set  paymentMethod ='".$paymentMethod."' where id = ".$tblOrderId);

			mysql_query("update orders set  paymentMethod ='".$paymentMethod."',transaction_id ='".$transaction_id."',
			transaction_date ='".$transaction_date."',order_no ='".$orderId."' where id = ".$tblOrderId);

		}
		header('location:index.php');
	}
	else{
		
		foreach($orderIds as $key => $tblOrderId){	
		
		$paymentMethod      = 'CashBaba';
		
		$CustomerName 		= $_SESSION['CustomerName'];
		$orderId 			= $_SESSION['OrderId'];
		$transaction_id     = $_SESSION['TransactionId'];
		$transaction_date   = $_SESSION['TransactionDate'];
		
		 $_SESSION['customerName']  = $CustomerName;
		 $_SESSION['orderNo']       = $OrderId;
		 $_SESSION['TransactionId'] = $transaction_id;
		
			//mysql_query("update orders set  paymentMethod ='".$paymentMethod."' where id = ".$tblOrderId);

			mysql_query("update orders set  paymentMethod ='".$paymentMethod."',
			transaction_id ='".$transaction_id."',
			transaction_date ='".$transaction_date."',order_no ='".$orderId."' where id = ".$tblOrderId);

		}
		
		header('location:index.php');
		
	}

?>
<h1>
Your transaction success !!
</h1>
<a href="http://localhost/shopping/">Back to home </a>
<?php
		/*echo "<pre>";
			print_r($_POST);
		echo "</pre>"; */

?>