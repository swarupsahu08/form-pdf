<?php
function generateUUID()
{
    return sprintf(
        '%04x%04x-%04x-%04x-%04x-%04x%04x%04x',
        mt_rand(0, 0xffff),
        mt_rand(0, 0xffff),
        mt_rand(0, 0xffff),
        mt_rand(0, 0x0fff) | 0x4000,
        mt_rand(0, 0x3fff) | 0x8000,
        mt_rand(0, 0xffff),
        mt_rand(0, 0xffff),
        mt_rand(0, 0xffff)
    );
}


if($_SERVER["REQUEST_METHOD"] == "POST")
{
    include ('dbcon.php');
    $name=$_POST["name"];
    $pnumber=$_POST["pnumber"];
    $city=$_POST["city"];


    require("fpdf/fpdf.php");
    $pdf=new FPDF();
    $pdf->AddPage();
    
    $pdf-> SetFont("Arial","B",20);
    $pdf-> Cell(0,10,"DETAILS SUBMITTED BY YOU",0,1,'C');
    
    $pdf-> SetFont("Arial","B",14);
    $pdf ->Cell(20,10,"Name:",0,0);
    $pdf ->Cell(0,10,$name,0,1);
    
    $pdf ->Cell(45,10,"Phone Number:",0,0);
    $pdf ->Cell(0,10,$pnumber,0,1);
    
    $pdf ->Cell(15,10,"City:",0,0);
    $pdf ->Cell(0,10,$city,0,1);

    $pdf-> SetFont("Arial","",13);
    $pdf-> Cell(0,10,"Your Form Has Been Submitted Successfully",0,0,'C');
    
    $pdf->output();
    $id=generateUUID();
    $sql="INSERT INTO `data` (`id`, `name`, `pnumber`, `city`) VALUES ('$id', '$name', '$pnumber', '$city')";
    $result=mysqli_query($con,$sql);
}
?>