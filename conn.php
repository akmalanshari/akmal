<?php
$host="localhost";
$user="root";
$pass="";
$db="db_akademikk";

$entries=10;
$waktu=date("Y-m-d H:i:s");
	
$koneksi=mysqli_connect($host,$user,$pass,$db);

if($koneksi){
	//echo "Berhasil koneksi";
}else{
	echo "Gagal koneksi";
}
?>