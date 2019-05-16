<?php
$age =$_POST['age'];
$upper=(220-$age)*0.85;
$lower=(220-$age)*0.65;
echo "Heart rate is :";
echo $upper;
echo "-";
echo $lower;
?>
