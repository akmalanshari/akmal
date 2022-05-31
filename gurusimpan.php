<?php
if(isset($_GET['act']))

$cekdata="select nip from data_guru where nip='".$_POST['nip']."'";
$ada=mysqli_query($koneksi,$cekdata) or die(mysqli_error());

if(mysqli_num_rows($ada)>0) {
	echo '<script>
	alert("NIP GURU SUDAH TERDAFTAR !!!"); window.location="?page=guruinput"; </script>';
	exit();}

else if ((!$_POST['nama_guru'])||(!$_POST['nip'])||(!$_POST['kota'])||(!$_POST['agama'])||(!$_POST['alamat_guru'])||(!$_POST['pendidikan'])||(!$_POST['jabatan'])||(!$_POST['username'])||(!$_POST['password'])) {
	echo '<script> 
	alert("Ada data yang masih kosong. Harap cek ulang !!!!"); window.location="?page=guruinput"; </script>';
	exit();}

else

{		
	$rs=mysqli_query($koneksi,"Insert into data_guru values (null,'".$_POST['nama_guru']."','".$_POST['nip']."','".$_POST['kota']."','".$_POST['tgl']."','".$_POST['bln']."','".$_POST['thn']."','".$_POST['kelamin']."','".$_POST['agama']."','".$_POST['alamat_guru']."','".$_POST['tm_tanggal']."','".$_POST['tm_bulan']."','".$_POST['tm_tahun']."','".$_POST['pendidikan']."','".$_POST['jabatan']."','"."','".$_POST['username']."','".($_POST['password'])."')") or die(mysqli_error($koneksi));
	if($rs)
	{
		echo "<script>window.location='?page=gurutampil'</script>";
		
	}else{
		echo "SALAH NIH";
	}
}
?>