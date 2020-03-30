<?php 
session_start();
error_reporting(0);
include('includes/config.php');
if(strlen($_SESSION['login'])==0)
    {   
header('location:login.php');
}
else{
	if (isset($_POST['submit'])) {

		
			$today	  		= date("m-d-Y");
			$paymethod 		=  $_POST['paymethod'];
			$payType 		=  $_POST['cashBabaPayMethod'];
			$virtualAmount  =  $_POST['virtualAccountNo'];
			$orderNo  		= time(); 
			$c 		  		= $_SESSION['cart'];
			$quantity 		= 0;
			$price    		= 0;	
			 
			
			/*echo "<pre>";
				print_r($c);
			echo "</pre>";
			exit;*/
			
			foreach($c as $cValue)
			{
				$quantity += $cValue['quantity'];
				if($cValue['quantity'] > 1){
					$price    += $cValue['price'] * $quantity ;
				}else{
					$price    += $cValue['price'];
				}
				
			}
			
		if($paymethod == "CashBaba" ){	
		
		// start for wallet payment process		
		
		$data = array(
					"MerchantId" 			 => 990040191,      
					"MerchantKey" 			 => "%kTaip0uiu",
					"NoOfItems" 			 => $quantity,
					"OrderId" 				 => $orderNo,
					"OrderAmount" 			 => $price,
					"ExpectedSettlementDate" => $today,
					"ReturnUrl" 			 => "http://localhost/shopping/success.php"
				);
				
				//print_r($data);
				//exit;
		
		
		//$url = 'https://www.cashbaba.ug:6081/api/Payment/Sale';
		$url = 'https://sanapi.cashbaba.com.bd/api/Payment/Sale';
		
		$jdata = json_encode($data);
			
			//print_r($jdata);
			
			
			//open connection
				$ch = curl_init();

				//set the url, number of POST vars, POST data
				curl_setopt($ch,CURLOPT_URL, $url);
				curl_setopt($ch,CURLOPT_POST, count($data));
				curl_setopt($ch,CURLOPT_POSTFIELDS, $jdata);
				curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
				curl_setopt($ch, CURLOPT_HTTPHEADER, array(                                                                          
					'Content-Type: application/json')                                                                       
				);       

				//execute post
				curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
				 $result = curl_exec($ch);
				 $receivedData = json_decode($result,true);
				 
				 
				//print_r($receivedData);
				//exit;
				
				// Check for errors and display the error message
				if($errno = curl_errno($ch)) {
					$error_message = curl_strerror($errno);
					echo "cURL error ({$errno}):\n {$error_message}";
				}

				//close connection
				curl_close($ch);   
			
			
			 $url = $receivedData['RedirectUrl'];
			 $msg = $receivedData['Message'];
			 
			if($msg == 'Ok'){
				header('Location:'.$url);
				unset($_SESSION['cart']);
				exit;
			}else{
				echo $msg ;
			}
		}elseif($paymethod == "Virtual_Cash"  AND $virtualAmount !="" ){
			
			$ProvideUrl = "http://localhost/shopping/success.php" ;
			
			$data = array(
					
					"MerchantId" 			 => 990040191,
					"MerchantSecurityKey"    => "%kTaip0uiu",
					"VirtualAccountNumber"   => $virtualAmount,
					"NoOfItems" 			 => $quantity,
					"OrderId" 				 => $orderNo,
					"OrderAmount" 			 => $price,
					"ExpectedSettlementDate" => $today,
					"ReturnUrl" 			 => $ProvideUrl
				);
				
			/*	echo "<pre>";				
				print_r($data);
				echo "</pre>";
				exit;*/
		
		
		//$url = 'https://www.cashbaba.ug:6081/api/Payment/Sale';
		$url = 'https://sanapi.cashbaba.com.bd/api/Payment/SPExprSale';
		
		$jdata = json_encode($data);
			
			print_r($jdata);
			
			exit;
			//open connection
				$ch = curl_init();

				//set the url, number of POST vars, POST data
				curl_setopt($ch,CURLOPT_URL, $url);
				curl_setopt($ch,CURLOPT_POST, count($data));
				curl_setopt($ch,CURLOPT_POSTFIELDS, $jdata);
				curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
				curl_setopt($ch, CURLOPT_HTTPHEADER, array(                                                                          
					'Content-Type: application/json')                                                                       
				);       

				//execute post
				curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
				 $result = curl_exec($ch);
				 $receivedData = json_decode($result,true);
				 
				 
				echo "<pre>";
					print_r($receivedData);
				echo "</pre>";
				echo "<br/>";
				exit;
				
				// Check for errors and display the error message
				if($errno = curl_errno($ch)) {
					$error_message = curl_strerror($errno);
					echo "cURL error ({$errno}):\n {$error_message}";
				}

				//close connection
				curl_close($ch);   
			
			 $url = $ProvideUrl;
			 $msg = $receivedData['Message'];
			 
			if($msg == 'Ok'){
				
					$_SESSION['TransactionId']  		  = $receivedData['TransactionId'];
					$_SESSION['OrderId'] 				  = $receivedData['OrderId'];
					$_SESSION['OrderAmount']              = $receivedData['OrderAmount'];
					$_SESSION['CustomerName']             = $receivedData['CustomerName'];
					$_SESSION['TransactionDate']		  = $receivedData['TransactionDate'];
					$_SESSION['IsOTPRequired']            = $receivedData['IsOTPRequired'];
					$_SESSION['TransactionCurrencyCode']  = $receivedData['TransactionCurrencyCode'];
					$_SESSION['QRCode'] 				  = $receivedData['QRCode'];
					$_SESSION['Identifier'] 			  = $receivedData['Identifier'];
					$_SESSION['IsOperationSuccessful']    = $receivedData['IsOperationSuccessful'];
				
				header('Location:'.$ProvideUrl);
				unset($_SESSION['cart']);
				exit;
				
			}else{
				echo $msg ;
			}
			
		}else{
			echo "Please Select CashBaba Payment Method";
		}
	}
?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<!-- Meta -->
		<meta charset="utf-8">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
		<meta name="description" content="">
		<meta name="author" content="">
	    <meta name="keywords" content="MediaCenter, Template, eCommerce">
	    <meta name="robots" content="all">

	    <title>Shopping Portal | Payment Method</title>
	    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
	    <link rel="stylesheet" href="assets/css/main.css">
	    <link rel="stylesheet" href="assets/css/green.css">
	    <link rel="stylesheet" href="assets/css/owl.carousel.css">
		<link rel="stylesheet" href="assets/css/owl.transitions.css">
		<!--<link rel="stylesheet" href="assets/css/owl.theme.css">-->
		<link href="assets/css/lightbox.css" rel="stylesheet">
		<link rel="stylesheet" href="assets/css/animate.min.css">
		<link rel="stylesheet" href="assets/css/rateit.css">
		<link rel="stylesheet" href="assets/css/bootstrap-select.min.css">
		<link rel="stylesheet" href="assets/css/config.css">
		<link href="assets/css/green.css" rel="alternate stylesheet" title="Green color">
		<link href="assets/css/blue.css" rel="alternate stylesheet" title="Blue color">
		<link href="assets/css/red.css" rel="alternate stylesheet" title="Red color">
		<link href="assets/css/orange.css" rel="alternate stylesheet" title="Orange color">
		<link href="assets/css/dark-green.css" rel="alternate stylesheet" title="Darkgreen color">
		<link rel="stylesheet" href="assets/css/font-awesome.min.css">
		<link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700' rel='stylesheet' type='text/css'>
		<link rel="shortcut icon" href="assets/images/favicon.ico">
	</head>
    <body class="cnt-home">
	
		
<header class="header-style-1">
<?php include('includes/top-header.php');?>
<?php include('includes/main-header.php');?>
<?php include('includes/menu-bar.php');?>
</header>
<div class="breadcrumb">
	<div class="container">
		<div class="breadcrumb-inner">
			<ul class="list-inline list-unstyled">
				<li><a href="home.html">Home</a></li>
				<li class='active'>Payment Method</li>
			</ul>
		</div><!-- /.breadcrumb-inner -->
	</div><!-- /.container -->
</div><!-- /.breadcrumb -->

<div class="body-content outer-top-bd">
	<div class="container">
		<div class="checkout-box faq-page inner-bottom-sm">
			<div class="row">
				<div class="col-md-12">
					<h2>Choose Payment Method</h2>
					<div class="panel-group checkout-steps" id="accordion">
						<!-- checkout-step-01  -->
<div class="panel panel-default checkout-step-01">

	<!-- panel-heading -->
		<div class="panel-heading">
    	<h4 class="unicase-checkout-title">
	        <a data-toggle="collapse" class="" data-parent="#accordion" href="#collapseOne">
	         Select your Payment Method
	        </a>
	     </h4>
    </div>
    <!-- panel-heading -->

	<div id="collapseOne" class="panel-collapse collapse in">

		<!-- panel-body  -->
	    <div class="panel-body">
	    <form id="form-id"  name="payment" method="post">
		
	    <input id ="cash_baba"  type="radio" name="paymethod" value="CashBaba">
		 <img src="img/Cashbaba.png" alt="CashBaba" title="CashBaba" height="30px" style="margin-bottom:6px">
		 
	    <input id ="virId"  type="radio" name="paymethod" value="Virtual_Cash">
		 <!--<img src="img/Cashbaba.png" alt="CashBaba" title="CashBaba" height="30px" style="margin-bottom:6px">--> CashBaba Express
		 
	     <input type="radio" name="paymethod" value="Paypal"> 
		  <img src="img/Paypal.png" alt="Paypal" title="Paypal" height="20px" style="margin-bottom:6px">
	     <input type="radio" name="paymethod" value="Visa"> 
		  <img src="img/Visa.png" alt="Visa" title="Visa" height="20px" style="margin-bottom:6px">
	     <input type="radio" name="paymethod" value="Master card"> 
		  <img src="img/Master-card.png" alt="Master card" title="Master Card" height="40px" style="margin-bottom:6px">
		  <br/>
		  
		 <!-- <div id ="extra" style='display:none'>
		  <input type="radio" name="cashBabaPayMethod" value="Wallet"> Wallet
		  <!--<img src="img/Paypal.png" alt="Paypal" title="Paypal" height="20px" style="margin-bottom:6px">-->
	      <!--<input id="virId1" type="radio" name="cashBabaPayMethod" value="Virtual_Cash"> Virtual Cash
		  <!--<img src="img/Visa.png" alt="Visa" title="Visa" height="20px" style="margin-bottom:6px">-->
		 <!-- </div>-->
		  
		  <br/>
		  
		  <div id="virtualAmonutId" class="form-group" style='display:none'>
			<label>Virtual Cash Number</label>
			<input type="text" class="form-control" name="virtualAccountNo" style="width:20%" placeholder="Ex.01823145">
		  </div>
		  
		 
		 <br/><br/>
		 
	     <input type="submit" value="submit" name="submit" class="btn btn-primary">
	    	

	    </form>		
		</div>
		<!-- panel-body  -->

	</div><!-- row -->
</div>




<!-- checkout-step-01  -->
					  
					  	
					</div><!-- /.checkout-steps -->
				</div>
			</div><!-- /.row -->
		</div><!-- /.checkout-box -->
		<!-- ============================================== BRANDS CAROUSEL ============================================== -->
<?php echo include('includes/brands-slider.php');?>
<!-- ============================================== BRANDS CAROUSEL : END ============================================== -->	</div><!-- /.container -->
</div><!-- /.body-content -->
<?php include('includes/footer.php');?>
	<script src="assets/js/jquery-1.11.1.min.js"></script>
	
	<script src="assets/js/bootstrap.min.js"></script>
	
	<script src="assets/js/bootstrap-hover-dropdown.min.js"></script>
	<script src="assets/js/owl.carousel.min.js"></script>
	
	<script src="assets/js/echo.min.js"></script>
	<script src="assets/js/jquery.easing-1.3.min.js"></script>
	<script src="assets/js/bootstrap-slider.min.js"></script>
    <script src="assets/js/jquery.rateit.min.js"></script>
    <script type="text/javascript" src="assets/js/lightbox.min.js"></script>
    <script src="assets/js/bootstrap-select.min.js"></script>
    <script src="assets/js/wow.min.js"></script>
	<script src="assets/js/scripts.js"></script>

	<!-- For demo purposes – can be removed on production -->
	
	<!--<script src="switchstylesheet/switchstylesheet.js"></script>-->
	
	<script>
	
	/*$("input[name='paymethod']").click(function () {
            if ($("#cash_baba").is(":checked")) {
                $("#extra").show();
            } else {
                $("#extra").hide();
            }
		}); */
	
	$("input[name='paymethod']").click(function () {
            if ($("#virId").is(":checked")) {
                $("#virtualAmonutId").show();
            } else {
                $("#virtualAmonutId").hide();
            }
		});
	
	
		
	</script>
	<!-- For demo purposes – can be removed on production : End -->

	

</body>
</html>
<?php } ?>