<div id="footer"> <!-- footer Begin -->
    <div class="container"> <!-- container Begin -->
        <div class="row"> <!-- row Begin -->
            <div class="col-sm-6 col-md-3"> <!-- col-sm-6 col-md-3 Begin -->

            <h4>Pages</h4>
            
            <ul> <!-- ul Begin -->
                <li><a href="../cart.php">Shopping Cart</a></li>
                <li><a href="../contact.php">Contact Us</a></li>
                <li><a href="../shop.php">Shop</a></li>
                <li><a href="my_account.php">My Account</a></li>
            </ul> <!-- ul Finish -->

            <hr>
            <h4>User Section</h4>
            <ul> <!-- ul Begin -->
            
            <?php

            if (!isset($_SESSION['customer_email'])) {
                echo "<a href='../checkout.php'>Login</a>";
            } else {
                echo "<a href='my_account.php?my_orders'>My Account </a>";
            }

            ?>


                <li>
                    
                <?php

                if (!isset($_SESSION['customer_email'])) {
                    echo "<a href='../checkout.php'>Login</a>";
                } else {
                    echo "<a href='my_account.php?edit_account'>Edit Account </a>";
                }

                ?>

                </li>
                <li><a href="../terms.php">Terms & Conditions</a></li>
            </ul> <!-- ul Finish -->

            <hr class="hidden-md hidden-lg hidden-sm">

            </div> <!-- col-sm-6 col-md-3 Finish -->

            <div class="com-sm 6 col-md-3"> <!-- col-sm-6 col-md-3 Begin -->
            <h4>Top Product Categories</h4>
            <ul> <!-- ul Begin -->
                
            <?php

            $get_p_cats = "select * from product_categories";
            $run_p_cats = mysqli_query($con,$get_p_cats);

            while($row_p_cats=mysqli_fetch_array($run_p_cats)){

                $p_cat_id = $row_p_cats['p_cat_id'];
                $p_cat_title = $row_p_cats['p_cat_title'];

                echo "

                <li>
                    <a href='../shop.php?p_cat=$p_cat_id'>
                    $p_cat_title
                
                
                </li>
                ";

            }
            
            ?>


            </ul> <!-- ul Finish -->

            <hr class="hidden-md hidden-lg hidden-sm">

            </div> <!-- col-sm-6 col-md-3 Finish -->

            <div class="col-sm-6 col-md-3"> <!-- col-sm-6 col-md-3 Begin -->
            <h4>Find Us</h4>
            <p> <!-- p Begin -->
            <strong>Sport-Mart Media inc.</strong>
            <br/>Powai
            <br/>Mumbai, Maharashtra
            <br/>+91 9819135304
            <br/>sportmartcon4@gmail.com
            <br/><strong>Aniket Yadav</strong>

            </p> <!-- p Finish -->
            <a href="../contact.php">Check Our Contact Page</a>
            <hr class="hidden-md hidden-lg hidden-sm">

            </div> <!-- col-sm-6 col-md-3 Finish -->

            <div class="col-sm-6 col-md-3">
                <h4>Get The News</h4>
                <p class="text-muted">
                    Don't miss our latest update product & offer.

                </p>
                <form action="" method="post"> <!-- form Begin -->
                    <div class="input-group"> <!-- input-group Begin -->
                        <input type="text" class="form-control" name="email">
                            <span class="input-group-btn"> <!-- input-group-btn Begin -->
                                <input type="submit" value="Subscribe" class="btn btn-default">

                            </span>  <!-- input-group-btn Finish -->
                    </div> <!-- input-group Finish -->
    
                </form> <!-- form Finish -->
                <hr>
                <h4>Keep in Touch</h4>
                <p class="social">
                    <a href="../#" class="fa fa-facebook"> </a>
                    <a href="../#" class="fa fa-twitter"> </a>
                    <a href="../#" class="fa fa-instagram"> </a>
                    <a href="../#" class="fa fa-google-plus"> </a>
                    <a href="../#" class="fa fa-envelope"> </a>

                </p>
            </div> <!-- col-sm-6 col-md-3 Finish -->
        </div> <!-- row Finish -->
    </div> <!-- container Finish -->
</div> <!-- footer Finish -->

<div id="copyright"> <!-- copyright Begin -->
    <div class="container"> <!-- container Begin -->
        <div class="col-md-6"> <!-- col-md-6 Begin -->
        <p class="pull-left">&copy; 2022 Sport-Mart Store All Rights Reserve</p>

        </div> <!-- col-md-6 Finish -->

        <div class="col-md-6"> <!-- col-md-6 Begin -->
        <p class="pull-right"> Theme by: <a href="#">Aniket</a></p>

        </div> <!-- col-md-6 Finish -->


    </div> <!-- container Finish -->
</div> <!-- copyright Finish -->