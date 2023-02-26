<?php 

    if(!isset($_SESSION['admin_email'])){
        
        echo "<script>window.open('login.php','_self')</script>";

} else {

?>

<div class="row col-lg-12"> <!-- row col-lg-12 Begin -->
    <ol class="breadcrumb"> <!-- breadcrumb Begin -->
        <li class="active"> <!-- active Begin -->
            <i class="fa fa-dashoard"> Dashboard / View Manufacturers </i>
        </li> <!-- active Finish -->
    </ol> <!-- breadcrumb Finish -->
</div> <!-- row col-lg-12 Finish -->

<div class="row"> <!-- row Begin -->
    <div class="col-lg-12"> <!-- col-lg-12 Begin -->
        <div class="panel panel-default"> <!-- panel panel-default Begin -->
            <div class="panel-heading"> <!-- panel-heading Begin -->
                <h3 class="panel-title"> <!-- panel-title Begin -->
                    <i class="fa fa-tags"></i> View Manufacturers
                </h3> <!-- panel-title Finish -->
            </div> <!-- panel-heading Finish -->

            <div class="panel-body"> <!-- panel-body Begin -->
                <div class="table-responsive"> <!-- table-responsive Begin -->
                    <table class="table table-striped table-bordered table-hover"> <!-- table table-striped table-bordered table-hover Begin -->
                        <thread> <!-- thread Begin -->
                            <tr> <!-- tr Begin -->
                                <th> Manufacturer ID: </th>
                                <th> Manufacturer Title: </th>
                                <th> Manufacturer Image: </th>
                                <th> Manufacturer Delete: </th>
                                <!-- <th> Manufacturer Edit: </th> -->
                            </tr> <!-- tr Finish -->
                        </thread> <!-- thread Finish -->

                        <tbody>
                            <?php

                            $i = 0;
                            $get_manufacturer = "select * from manufacturers";
                            $run_manufacturer = mysqli_query($con, $get_manufacturer);
                            while($row_manufacturer=mysqli_fetch_array($run_manufacturer)){
                                $manufacturer_id = $row_manufacturer['manufacturer_id'];
                                $manufacturer_title = $row_manufacturer['manufacturer_title'];
                                $manufacturer_image = $row_manufacturer['manufacturer_image'];

                                $i++;
                            
                            ?>

                            <tr> <!-- tr Begin -->
                                <td> <?php echo $i; ?> </td>
                                <td> <?php echo $manufacturer_title; ?> </td>
                                <td> <img src="other_images/<?php echo $manufacturer_image; ?>" width="60" height="60" ></td>
                              
                                <td> 
                                    <a href="index.php?delete_manufacturer=<?php echo $manufacturer_id; ?>">
                                    <i class="fa fa-trash-o"></i> Delete
                                    </a>
                                </td>
                                <!-- <td> 
                                    <a href="index.php?edit_maunfacturer=<?php echo $manufacturer_id; ?>">
                                    <i class="fa fa-pencil"></i> Edit
                                    </a>
                                </td> -->
                            </tr> <!-- tr Finish -->

                            <?php  } ?>            
                        </tbody>



                    </table> <!-- table table-striped table-bordered table-hover Finish -->
                </div> <!-- table-responsive Finish -->
            </div> <!-- panel-body Finish -->

        </div> <!-- panel panel-default Finish -->
    </div> <!-- col-lg-12 Finish -->
</div> <!-- row Finish -->









<?php } ?>