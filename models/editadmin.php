<?php
        include_once("../includes/session.php");
        include_once("../includes/zz.php"); 
        include_once("../includes/functions.php"); 
            
        confirm_adminlogged_in();            

        $staffRoleId = $_GET['ad'];

        $adminroleid = $_POST['role'];

        $updating = "UPDATE staffrole SET staffRoleNo = '$adminroleid' WHERE staffRoleId = '$staffRoleId'";
        $updated = mysqli_query($connection,$updating);
        
        header("Location:../dashboard.php");
        exit();
?>