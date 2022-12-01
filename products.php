<?php 
	session_start();
	if( !isset($_SESSION['cart']) ){
		$_SESSION['cart'] = array();
	}
	//session_unset();
	//session_destroy();
	
?>
<html>
	<style>
		body{
			
		}
		/* main container */
		.main{
			padding: 10px;
            background: green;
		}
		
		.grid { /* This is the grid for the calculator section */
			display: grid;
			grid-template-columns: auto auto auto auto;
			align-content: center;
			padding: 10px;
			border-radius: 15px;
			text-align: center;
		}

		.grid > div { /* This is for all the child divs in the calculatorgrid */
			border: 5px solid black;
			border-radius: 15px;
			align-content: center;
			text-align: center;
			padding: 15px;
			margin: 5px;
		}

		img {
			height: 250px;
			width: 250px;
		}
		
		.prices{
			
		}
        
		
		.checked {
		  color: gold;
		}
		
	</style>
	<head>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	</head>
	<body>
		
		<div class='main'>
			<center><h1>JTCL's Catalog</h1></center>
			<div class="grid">
			<?php //display div only if database has products to display
				$dbhost= "localhost";
				$dbuser="root";
				$dbpass="";
				$db="test";
				$port = '3306';
				
				$conn= new mysqli ($dbhost, $dbuser, $dbpass,$db, $port) or die ("connect failed: %s/n".$conn -> error);

				$result = $conn->query("SELECT * FROM product ORDER BY rating DESC;");
				
				while($row = mysqli_fetch_array($result))
				{
					$starRating = "";
					for($x = 0; $x < 5; $x++){
						if($x <= $row['Rating'] - 1){
							$starRating .= '<span class="fa fa-star checked"></span>';
						} else{
							$starRating .= '<span class="fa fa-star "></span>';
						}
					}
					
					$product = "<div>
						<h3> ". $row['Product-Name'] . "</h3>
						<img src='". $row['Picture'] . "'>
						<br>
						<div class='prices'> $". $row['Price'] . " </div>
						
						<div> $starRating </div>
						<br>
                        <div> ".$row['Description']. " </div>
						<br>
                        <form action='' method='POST'>
                            <input type='text' name='ProductId' value = '". $row['ProductId'] . "' hidden>
                            
                            <input type='number' name='Quantity' placeholder='Enter amount to purchase' required>
                            
                            <input type='submit' name='addCart' value='Add To Cart'>
                        </form>

					</div>";
					
					echo $product;
				}
				
			
			
			?>
			</div>
		</div>
	</body>
	<?php 
		//handle logic adding value to carts
		if( isset($_POST['addCart']) ){
			
			$result = $conn->query("SELECT * FROM product WHERE ProductId = " . $_POST['ProductId'] ." LIMIT 1 ;");
			
			$chosenProduct = array(); 
			
			while($row = mysqli_fetch_array($result)){
				//get product details that was chosen to be added to the cart. 
				$row['Quantity'] = $_POST['Quantity']; 
				
				array_push($_SESSION['cart'], $row);
			}
			
		}
 
		
	?>
	
</html>