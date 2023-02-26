<?php 

    if(!isset($_SESSION['admin_email'])){
        
        echo "<script>window.open('login.php','_self')</script>";

} else {

    ?>


<div class="row"> <!-- row Begin -->
    <div class="col-lg-12"> <!-- col-lg-12 Begin -->
        <ol class="breadcrumb"> <!-- breadcrumb Begin -->
            <li> <!-- li Begin -->
                <i class="fa fa-dashboard"></i> Dashboard / Insert Product Category
            </li> <!-- li Finish -->
        </ol> <!-- breadcrumb Finish -->
    </div> <!-- col-lg-12 Finish -->
</div> <!-- row Finish -->

<div class="row"> <!-- row Finish -->
    <div class="col-lg-12"> <!-- col-lg-12 Begin -->
        <div class="panel panel-default"> <!-- panel panel-default Begin -->
            <div class="panel-heading"> <!-- panel-heading Begin -->
                <h3 class="panel-title"> <!-- panel-title Begin -->
                    <i class="fa fa-money fa-fw"></i> Insert Product Category
            </h3> <!-- panel-title Finish -->
            </div> <!-- panel-heading Finish -->

            <div class="panel-body"> <!-- panel-body Begin -->
                <form action="" class="form-horizontal" method="post" enctype="multipart/form-data"> <!-- form-horizontal Begin -->
                    <div class="form-group"> <!-- form-group Begin -->
                        <label for="" class="control-label col-md-3"> <!-- control-label col-md-3 Begin -->
                             Product Category Title 
                        </label> <!-- control-label col-md-3 Finish -->

                        <div class="col-md-6"> <!-- col-md-6 Begin -->
                            <input name="p_cat_title" type="text" class="form-control">
                        </div> <!-- col-md-6 Finish -->

                    </div> <!-- form-group Finish -->

                    
                                        
                    <div class="form-group"><!-- form-group 2 begin -->
                    
                        <label for="" class="control-label col-md-3"><!-- control-label col-md-3 begin --> 
                        
                            Choose As Top Manufacturer 
                        
                        </label><!-- control-label col-md-3 finish --> 
                        
                        <div class="col-md-6"><!-- col-md-6 begin -->
                        
                            <input name="p_cat_top" type="radio" value="yes">
                            <label>Yes</label>

                            <input name="p_cat_top" type="radio" value="no">
                            <label>No</label>
                        
                        </div><!-- col-md-6 finish -->
                    
                    </div><!-- form-group 2 finish -->


                    <div class="form-group"><!-- form-group begin 3 -->
                    
                        <label for="" class="control-label col-md-3"><!-- control-label col-md-3 begin --> 
                        
                        Product Category Image
                        
                        </label><!-- control-label col-md-3 finish --> 
                        
                        <div class="col-md-6"><!-- col-md-6 begin -->
                        
                            <input type="file" name="p_cat_image" class="form-control">
                        
                        </div><!-- col-md-6 finish -->
                    
                    </div><!-- form-group 3 finish -->



                    <div class="form-group"> <!-- form-group Begin -->
                        <label for="" class="control-label col-md-3"> <!-- control-label col-md-3 Begin -->
                             
                        </label> <!-- control-label col-md-3 Finish -->

                        <div class="col-md-6"> <!-- col-md-6 Begin -->

                            <input name="submit" value="Submit Product Category" type="submit" class="form-control btn btn-primary">

                        </div> <!-- col-md-6 Finish -->

                    </div> <!-- form-group Finish -->

                </form> <!-- form-horizontal Finish -->
            </div> <!-- panel-body Finish -->

        </div> <!-- panel panel-default Finish -->
    </div> <!-- col-lg-12 Finish -->
</div> <!-- row Finish -->


<?php

    if(isset($_POST['submit'])){

            $p_cat_title = $_POST['p_cat_title'];

            $p_cat_top = $_POST['p_cat_top'];

            $p_cat_image = $_FILES['p_cat_image']['name'];

            $temp_name = $_FILES['p_cat_image']['tmp_name'];

            move_uploaded_file($temp_name, "other_images/$p_cat_image");

            $insert_p_cat = "insert into product_categories (p_cat_title,p_cat_top,p_cat_image) values 
            ('$p_cat_title','$p_cat_top','$p_cat_image')";

            $run_p_cat = mysqli_query($con, $insert_p_cat);

            if($run_p_cat){

                echo "<script>alert('Your New Product Category Has Been Inserted')</script>";

                echo "<script>window.open('index.php?view_p_cats','_self')</script>";
            }

}

?>







<?php } ?>