<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Sports-Mart Login </title>
    <link rel="stylesheet" href="css/bootstrap-337.min.css">
    <link rel="stylesheet" href="font-awsome/css/font-awesome.min.css">
    
    <link rel="stylesheet" href="styles/login.css">
</head>

<body>

<div class="box-login">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-2"></div>
            <div class="col-lg-6 col-md-8 login-box">
                <div class="col-lg-12 login-user">
                    <i class="fa fa-key" aria-hidden="true"></i>
                </div>
                <div class="col-lg-12 login-title">
                    Please Login
                    <center> <!-- center Begin -->

                    <p class="lead"> Already have an account..? </p>
                    </center> <!-- center Finish -->
                </div>

                <div class="col-lg-12 login-form">
                    <div class="col-lg-12 login-form">
                        <form action="checkout.php" class="form-login" method="post">
                            <div class="form-group">
                                <label class="form-control-label"> USERNAME</label>
                                <input type="email" placeholder="Your Email" name="c_email" class="form-control">
                            </div>
                            <div class="form-group">
                                <label class="form-control-label"> PASSWORD</label>
                                <input type="password" placeholder="Your Password" name="c_pass" class="form-control"
                                    i>
                            </div>

                            <div class="col-lg-12 loginbttm">
                                <div class="col-lg-6 login-btm login-text">
                                    <!-- Error Message -->
                                </div>
                                <div class="col-lg-6 login-btm login-button">
                                    <button type="submit" name="login"
                                        class="btn btn-outline-primary">LOGIN</button>
                                </div>
                            </div>
                        </form>
                        
                        <center> <!-- center Begin -->
                            <a href="customer_register.php">
                                <h3> Don't have account..? Register here </h3>
                            </a>
                        </center> <!-- center Finish -->
                        <h1></h1>
                        <h1></h1>

                    </div>
                </div>
                <div class="col-lg-3 col-md-2"></div>
            </div>
        </div>
        </div>
        </div>



</body>

</html>









<?php

if (isset($_POST['login'])) {

    $customer_email = $_POST['c_email'];

    $customer_pass = $_POST['c_pass'];

    $select_customer = "select * from customers where customer_email='$customer_email' AND customer_pass='$customer_pass'";

    $run_customer = mysqli_query($con, $select_customer);

    $get_ip = getRealIpUser();

    $check_customer = mysqli_num_rows($run_customer);

    $select_cart = "select * from cart where ip_add='$get_ip'";

    $run_cart = mysqli_query($con, $select_cart);

    $check_cart = mysqli_num_rows($run_cart);

    if ($check_customer == 0) {

        echo "<script>alert('Your email or password is wrong')</script>";

        exit();

    }

    if ($check_customer == 1 and $check_cart == 0) {

        $_SESSION['customer_email'] = $customer_email;

        echo "<script>alert('You are Logged in')</script>";

        echo "<script>window.open('customer/my_account.php?my_orders','_self')</script>";

    } else {

        $_SESSION['customer_email'] = $customer_email;

        echo "<script>alert('You are Logged in')</script>";

        echo "<script>window.open('checkout.php','_self')</script>";

    }

}

?>