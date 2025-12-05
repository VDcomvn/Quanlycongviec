<?php
require_once('../config.php');

// Lấy thông tin tài khoản từ session
$email = $_SESSION['username'];
$acc = "SELECT * FROM tai_khoan WHERE email = '$email'";
$result_acc = mysqli_query($conn, $acc);
$row_acc = mysqli_fetch_array($result_acc);
?>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <link rel="shortcut icon" href="../dist/images/logo.jpg" type="image/x-icon" />
  <title>QUẢN LÝ NGƯỜI DÙNG</title>

  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

  <!-- Bootstrap -->
  <link rel="stylesheet" href="../bower_components/bootstrap/dist/css/bootstrap.min.css">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="../bower_components/font-awesome/css/font-awesome.min.css">

  <!-- Select2 -->
  <link rel="stylesheet" href="../bower_components/select2/dist/css/select2.min.css">

  <!-- DataTables -->
  <link rel="stylesheet" href="../bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">

  <!-- AdminLTE theme -->
  <link rel="stylesheet" href="../dist/css/AdminLTE.min.css">
  <link rel="stylesheet" href="../dist/css/skins/_all-skins.min.css">

  <!-- Google Font -->
  <link rel="stylesheet"
    href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700">

</head>

<style>
  .example-modal .modal {
    display: block;
    z-index: 1;
    background: transparent !important;
  }
</style>
