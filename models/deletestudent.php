<?php
        include_once("../includes/session.php");
        include_once("../includes/zz.php"); 
        include_once("../includes/functions.php"); 
            
        confirm_adminlogged_in(); 
            
        $stdntmatno = $_GET['ad'];

        $updating = "UPDATE siwespost SET siwesOfficer = '' WHERE siwesMat= '$stdntmatno'";
        $updated = mysqli_query($connection,$updating);
        
        header("Location:../students.php");
        exit();
?>