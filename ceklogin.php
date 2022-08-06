<?php
	session_start();
	
	include("lib/koneksi.php");
	
	$username = $_POST['username'];
	$password = $_POST['password'];
	
	$cek 	= mysql_query("select * from user where username='$username' and password='$password'");
	$data	= mysql_fetch_array($cek);
	$jumlah = mysql_num_rows($cek);
	
	if($jumlah>0){
		$_SESSION['username'] = $data['username'];
		$_SESSION['password'] = $data['password'];
		
		echo"Login berhasil!";
		echo"<meta http-equiv='refresh' content='1; url=admin.php'>";
	}else{
		echo"<center>Gagal, username atau password salah! <br><b><a href='index.php'>ULANGI</a></b></center>";
	}
?>