<?php

session_start();

if(!isset($_SESSION['customer_email'])){

    echo "<script>window.open('../checkout.php','_self')</script>";
} else {

    include("includes\db.php");
    include("functions\direct.php");

    if(isset($_GET['order_id'])){
        $order_id = $_GET['order_id'];

    }

    ?>
    <?php

    if(isset($_GET['order_id'])){
        $o_id = $_GET['order_id'];
        $get_order = "select * from customer_orders where order_id='$o_id'";
        $run_order = mysqli_query($con,$get_order);
        $row_order = mysqli_fetch_array($run_order);
        $order_id = $row_order['order_id'];
        $cust_id = $row_order['customer_id'];
        $invoice_no = $row_order['invoice_no'];
        $due_amount = $row_order['due_amount'];
        $ref_no = mt_rand();
        $order_date = substr($row_order['order_date'],0,11); 
    }
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sports-Mart</title>
    <link rel="stylesheet" href="styles/bootstrap-337.min.css">
    <link rel="stylesheet" href="font-awsome\css\font-awesome.min.css">
    <link rel="stylesheet" href="styles/style.css">


</head>

<body>
    <div id="top"> <!-- Top begin -->
        <div class="container"> <!-- Container  begin -->
            <div class="col-md-6 offer"> <!-- coi md-6 offer begin  -->
                <a href="#" class="btn btn-success btn-sm">
                <?php

                if (!isset($_SESSION['customer_email'])) {
                    echo "Welcome: Guest";
                } else {
                    echo "Welcome: " . $_SESSION['customer_email'] . "";
                }

                ?>
                    
                </a>
                <a href="checkout.php"><?php items(); ?> Items In Your Cart | Total Price: <?php total_price(); ?></a>


            </div> <!-- coi md-6 offer finish  -->
            <div class="col-md-6"> <!-- coi md-6 begin  -->

                <ul class="menu"> <!-- cmenu Begin  -->
                    <li>
                        <a href="../customer_register.php">Register</a>
                    </li>
                    <li>
                        <a href="my_account.php">My Account</a>
                    </li>
                    <li>
                        <a href="../cart.php">Go to Cart</a>
                    </li>
                    <li>
                        <a href="../checkout.php">
                            
                        <?php

                        if (!isset($_SESSION['customer_email'])) {
                            echo "<a href='checkout.php'> Login </a>";
                        } else {
                            echo "<a href='logout.php'> Log Out </a>";
                        }

                        ?>
                        </a>
                    </li>




                </ul> <!-- menu Finish  -->

            </div> <!-- coi md-6 begin  -->

        </div><!-- Container finsh -->

    </div> <!-- Top finish -->


    <div id="navbar" class="navbar navbar-default"> <!-- navbar navbar-default begin -->
        <div class="container"> <!-- container begin -->
            <div class="navbar-header"> <!-- navbar-header begin -->
                <a href="../index.php" class="navbar-brand home"> <!-- navbar-brand home Begin -->

                    <img src="images\sport-mart-high-resolution-logo-black-on-transparent-background (1).png" alt="Sport-Mart Logo" class="hidden-xs">
                    <img src="images\sport-mart-high-resolution-logo-black-on-transparent-background (1).png" alt="Sport-Mart Logo Mobile" class="visible-xs">

                </a> <!-- navbar-brand home Finish -->

                <button class="navbar-toggle" data-toggle="collapse" data-target="#navigation">
                    <span class="sr-only">Toggle Navigation </span>
                    <i class="fa fa-align-justify"></i>
                </button>

                <button class="navbar-toggle" data-toggle="collapse" data-target="#search">
                    <span class="sr-only">Toggle Search</span>
                    <i class="fa fa-search"></i>
                </button>


            </div> <!-- navbar-header finish -->

            <div class="navbar-collapse collapase" id="navigation"> <!-- navbar-collapse collapase Begin  -->
                <div class="padding-nav"> <!-- padding-nav Begin  -->
                    <ul class="nav navbar-nav left"> <!-- nav navbar-nav left Begin -->
                        <li>
                            <a href="../index.php">Home</a>
                        </li>
                        <li>
                            <a href="../shop.php">Shop</a>
                        </li>
                        <li class="active">
                            <a href="my_account.php">My Account</a>
                        </li>
                        <li>
                            <a href="../cart.php">Shopping Cart</a>
                        </li>
                        <li>
                            <a href="../contact.php">Contact Us</a>
                        </li>

                    </ul> <!-- nav navbar-nav left Finish -->

                </div> <!-- padding-nav Finish  -->
                <a href="../cart.php" class="btn navbar-btn btn-primary right">
                    <!-- btn navbar-btn btn-primary right Begin -->
                    <i class="fa fa-shopping-cart"></i>
                    <span><?php items(); ?> Items In Your Cart</span>

                </a> <!-- btn navbar-btn btn-primary right Finish-->
                <div class="navbar-collapse collapse right"> <!--  navbar-collapse collapse right Begin -->
                    <button class="btn btn-primary navbar-btn" type="button" data-toggle="collapse"
                        data-target="search"> <!-- btn btn-primary navbar-btn Begin -->
                        <span class="sr-only">Toggle Search</span>
                        <i class="fa fa-search"></i>

                    </button> <!-- btn btn-primary navbar-btn Finish -->

                </div> <!--  navbar-collapse collapse right Finish -->
                <div class="collapse clearfix" id="search"> <!--  collapse clearfix Begin -->
                    <form method="get" action="results.php" class="navbar-form"> <!--  navbar-form Begin -->
                        <div class="input-group"> <!-- input-group Begin -->
                            <input type="text" class="form-control" placeholder="Search" name="user_query" required>
                            <span class="input-group-btn"> <!-- input-group-btn Begin -->
                                <button type="submit" name="search" value="Search" class="btn btn-primary">
                                    <!-- btn btn-primary Begin -->
                                    <i class="fa fa-search"></i>


                                </button> <!-- btn btn-primary Finish -->
                            </span> <!-- input-group-btn Finish -->

                        </div> <!-- input-group Finish -->


                    </form> <!--  navbar-form Finish -->

                </div> <!--  collapse clearfix Finish -->

            </div> <!-- navbar-collapse collapase Finish  -->



        </div> <!-- container finish -->

    </div> <!-- navbar navbar-default finish -->



    <div id="content"> <!-- content Begin -->
        <div class="container"> <!-- container Begin -->
            <div class="col-md-12"> <!-- col-md-12 Begin -->
                <ul class="breadcrumb"> <!-- breadcrumb Begin -->
                    <li>
                        <a href="index.php">Home</a>
                    </li>
                    <li>
                        My Account
                    </li>

                </ul> <!-- breadcrumb Finish -->

            </div> <!-- col-md-12 Finish -->

            <div class="col-md-3"> <!-- col-md-3 Begin -->

                <?php
                include("includes/sidebar.php");
                ?>

            </div> <!-- col-md-3 Finish -->

            <div class="col-md-9"> <!-- col-md-9 Begin -->
                <div class="box"> <!-- box Begin -->
                    <h1 align="center">Please confirm your payment</h1>
                    <form action="confirm.php?update_id=<?php echo $order_id; ?>" method="post" enctype="multipart/form-data"> <!-- form Begin -->
            
                        <div class="form-group"> <!-- form-group Begin -->
                            <label>Invoice No: </label>
                            <input type="text" class="form-control" name="invoice_no" readonly value="<?php echo $invoice_no; ?>">
                        </div> <!-- form-group Finish -->

                        <div class="form-group"> <!-- form-group Begin -->
                            <label>Amount Sent: </label>
                            <input type="number" class="form-control" name="due_amount" required readonly value="<?php echo $due_amount; ?>">
                        </div> <!-- form-group Finish -->

                        <div class="form-group"> <!-- form-group Begin -->
                            <label>Select Payment Mode: </label>
                            <select name="payment_mode" class="form-control"> <!-- form-control Begin -->
                                <option>Select Payment Mode</option>
                                <option>Paytm</option>
                                <option>Debit Card</option>
                                <option>Credit Card</option>
                                <option>Amazon Pay</option>
                            </select> <!-- form-control Finish -->
                        </div> <!-- form-group Finish -->

                        <div class="form-group"> <!-- form-group Begin -->
                            <label>Transaction / Reference ID: </label>
                            <input type="text" class="form-control" name="ref_no" required readonly value="<?php echo $ref_no; ?>">
                        </div> <!-- form-group Finish -->

                        <div class="form-group"> <!-- form-group Begin -->
                            <label>Debit Card / Credit Card No: </label>
                            <input type="number"  class="form-control" name="code" maxlength="16" required>
                        </div> <!-- form-group Finish -->

                        <div class="form-group"> <!-- form-group Begin -->
                            <label>Payment Date: </label>
                            <input type="text" class="form-control" name="date" required readonly value="<?php echo $order_date; ?>">
                        </div> <!-- form-group Finish -->

                        <div class="text-center"> <!-- text-center Begin -->
                            <button class="btn btn-primary btn-lg" name="confirm_payment"> <!-- btn btn-primary btn-lg Begin -->
                                <i class="fa fa-user-md"></i> Confirm Payment
                            </button> <!-- btn btn-primary btn-lg Begin -->
                        </div> <!-- text-center Begin -->


                    </form> <!-- form Finish -->


                    <?php
                    
                    if(isset($_POST['confirm_payment'])){
                        $update_id = $_GET['update_id'];
                        $invoice_no = $_POST['invoice_no'];
                        $amount = $_POST['amount_sent'];
                        $payment_mode = $_POST['payment_mode'];
                        $ref_no = $_POST['ref_no'];
                        $code = $_POST['code'];
                        $payment_date = $_POST['date'];
                        $complete = "Complete";

                        $insert_payment = "insert into payments (invoice_no,amount,payment_mode,ref_no,code,payment_date) values 
                        ('$invoice_no','$amount','$payment_mode','$ref_no','$code','$payment_date')";

                        $run_payment = mysqli_query($con, $insert_payment);
                        $update_customer_order = "update customer_orders set order_status='$complete' where order_id='$update_id'";
                        $run_customer_order = mysqli_query($con, $update_customer_order);
                        $update_pending_order = "update pending_orders set order_status='$complete' where order_id='$update_id'";
                        $run_pending_order = mysqli_query($con, $update_pending_order);

                        if($run_pending_order){

                            echo "<script>alert('Thank you for purchasing, your orders will be completed within 24 hours work')</script>";
                            echo "<script>window.open('my_account.php?my_orders','_self')</script>";

                        }

                    }
                    
                    ?>
                
                
                
                
                </div> <!-- box Finish -->
            </div> <!-- col-md-9 Finish -->


            </div> <!-- container Finish -->
    </div> <!-- content Finish -->


    <?php
    include("footer.php");
    ?>



    <script src="js\jquery-331.min.js"></script>
    <script src="js\bootstrap-337.min.js"></script>



</body>

</html>

<?php } ?>