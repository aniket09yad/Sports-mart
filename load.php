<?php 

session_start();
include("includes/db.php");
include("functions/direct.php");

switch($_REQUEST['sAction']){

    default :

    getProducts();

    break;

    case'getPagination';

    getPagination();

    break;

}

?> 