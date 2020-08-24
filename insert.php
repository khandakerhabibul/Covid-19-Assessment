<?php

	$con = mysqli_connect('localhost','root','','testing');

	if(!$con){
		echo 'Not connected to server';
	}

	if(!mysqli_select_db($con,'testing')){
		echo 'Database Not Selected';
	}

	$score=0;

	$Age = $_POST['age'];
	$Sex = $_POST['sex'];
	$Temperature = $_POST['temperature'];

	if($Temperature>37.5){
		$score = 2;
	}

	$Date = date("Y-m-d");

	$count =0;
	if(!empty($_POST['symptoms'])){
		foreach ($_POST['symptoms'] as $symptoms) {
			if($count==0){
				$score = $score+3;
				$count++;
			}
			else{
				$score = $score+1;
			}
		}
	}


	if(!empty($_POST['additional'])){
		foreach ($_POST['additional'] as $additional) {
			$score = $score+2;
		}
	}

	$result="";

	if($score<5){
		$result= "Negative";
	}
	if($score>= 5){
		$result= "Positive";
	}
	

	$sql = "INSERT INTO demo (Age,Sex,Temperature,AsDate,Score,Covid19Res) Values ('$Age', '$Sex','$Temperature','$Date','$score','$result')";

	if(!mysqli_query($con,$sql)){
		echo 'N';
	}
	else{
		echo 'I';
	}

// 	header("refresh:2; location:showtable.php");
    
    include 'showtable.php';

?>