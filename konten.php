<?php
if(isset ($_GET['tampil'])) $tampil = $_GET ['tampil'];
else $tampil = "beranda";

if($tampil == "beranda")	include ("beranda.php");
elseif($tampil == "keluar")	include ("keluar.php");

elseif($tampil == "buku")	include ("buku/buku_tampil.php");
elseif($tampil == "buku_tambah")	include ("buku/buku_tambah.php");
elseif($tampil == "buku_tambahproses")	include ("buku/buku_tambahproses.php");
elseif($tampil == "buku_edit")	include ("buku/buku_edit.php");
elseif($tampil == "buku_editproses")	include ("buku/buku_editproses.php");
elseif($tampil == "buku_hapus")	include ("buku/buku_hapus.php");
elseif($tampil == "buku_detail")	include ("buku/buku_detail.php");

elseif($tampil == "anggota")	include ("anggota/anggota_tampil.php");
elseif($tampil == "anggota_tambah")	include ("anggota/anggota_tambah.php");
elseif($tampil == "anggota_tambahproses")	include ("anggota/anggota_tambahproses.php");
elseif($tampil == "anggota_edit")	include ("anggota/anggota_edit.php");
elseif($tampil == "anggota_editproses")	include ("anggota/anggota_editproses.php");
elseif($tampil == "anggota_hapus")	include ("anggota/anggota_hapus.php");
elseif($tampil == "anggota_detail")	include ("anggota/anggota_detail.php");
elseif($tampil == "anggota_cetak")	include ("anggota/anggota_cetak.php");

elseif($tampil == "transaksi")	include ("transaksi/transaksi_tampil.php");
elseif($tampil == "transaksi_fungsi")	include ("transaksi/transaksi_fungsi.php");
elseif($tampil == "transaksi_input")	include ("transaksi/transaksi_input.php");
elseif($tampil == "transaksi_proses")	include ("transaksi/transaksi_proses.php");
elseif($tampil == "transaksi_proseskembali")	include ("transaksi/transaksi_proseskembali.php");
elseif($tampil == "transaksi_prosesperpanjang")	include ("transaksi/transaksi_prosesperpanjang.php");

	elseif( $tampil == "validasi" )				include("validasi/validasi_tampil.php");
	elseif( $tampil == "validasi_edit" )			include("validasi/validasi_edit.php");
	elseif( $tampil == "validasi_editproses" )	include("validasi/validasi_editproses.php");
	elseif( $tampil == "validasi_hapus" )			include("validasi/validasi_hapus.php");


elseif($tampil == "laporan")	include ("laporan/laporan_tampil.php");
elseif($tampil == "laporan_buku")	include ("laporan/laporan_buku.php");
elseif($tampil == "laporan_bukuproses")	include ("laporan/laporan_bukuproses.php");
elseif($tampil == "laporan_anggota")	include ("laporan/laporan_anggota.php");
elseif($tampil == "laporan_anggotaproses")	include ("laporan/laporan_anggotaproses.php");
elseif($tampil == "laporan_transaksi")	include ("laporan/laporan_transaksi.php");
elseif($tampil == "laporan_transaksiproses")	include ("laporan/laporan_transaksiproses.php");

elseif($tampil == "user_edit")	include ("user/user_edit.php");
elseif($tampil == "user_editproses")	include ("user/user_editproses.php");




else echo"konten tidak ada";
?>
