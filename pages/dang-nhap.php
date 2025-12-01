<?php
session_start();
include('../config.php'); 

if (!isset($_SESSION['username']) || !isset($_SESSION['level'])) {
    header('Location: dang-nhap.php');
    exit;
}

$conn or die("Không kết nối được DB");

// Số lượng nhân viên
$nv = "SELECT COUNT(id) as soluong FROM nhanvien";
$resultNV = mysqli_query($conn, $nv);
$rowNV = mysqli_fetch_assoc($resultNV);
$tongNV = $rowNV['soluong'];

$cv = "SELECT COUNT(*) as tongCV FROM cong_viec";
$resultCV = mysqli_query($conn, $cv);
$rowCV = mysqli_fetch_assoc($resultCV);
$tongCV = $rowCV['tongCV'];

$nhom = "SELECT COUNT(*) as tongNhom FROM nhom";
$resultNhom = mysqli_query($conn, $nhom);
$rowNhom = mysqli_fetch_assoc($resultNhom);
$tongNhom = $rowNhom['tongNhom'];

$pb = "SELECT COUNT(*) as tongPB FROM phong_ban";
$resultPB = mysqli_query($conn, $pb);
$rowPB = mysqli_fetch_assoc($resultPB);
$tongPB = $rowPB['tongPB'];

$phongBan = "SELECT ma_phong_ban, ten_phong_ban, ngay_tao FROM phong_ban ORDER BY id DESC";
$resultPhongBan = mysqli_query($conn, $phongBan);
$arrPhongBan = [];
while($row = mysqli_fetch_assoc($resultPhongBan)){
    $arrPhongBan[] = $row;
}

$chucVu = "SELECT ma_chuc_vu, ten_chuc_vu, ngay_tao FROM chuc_vu ORDER BY id DESC";
$resultChucVu = mysqli_query($conn, $chucVu);
$arrChucVu = [];
while($row = mysqli_fetch_assoc($resultChucVu)){
    $arrChucVu[] = $row;
}
?>

<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dashboard</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<style>
body { font-family: 'Segoe UI', sans-serif; background:#f0f2f5; margin:0; }
.navbar { background:#6e8efb; }
.navbar .navbar-brand, .navbar-text { color:#fff; }
.sidebar { width:220px; height:100vh; background:#fff; position:fixed; top:0; left:0; padding:20px; box-shadow:2px 0 5px rgba(0,0,0,0.1);}
.sidebar a { display:block; margin:10px 0; color:#333; text-decoration:none; }
.sidebar a:hover { color:#6e8efb; }
.content { margin-left:240px; padding:40px; }

.card-stat { border-radius:10px; color:#fff; padding:20px; text-align:center; }
.card-stat i { font-size:40px; margin-bottom:10px; }
.bg-aqua { background:#17a2b8; }
.bg-yellow { background:#ffc107; }
.bg-green { background:#28a745; }
.bg-purple { background:#6f42c1; }

.table-responsive { margin-top:20px; }
</style>
</head>
<body>

<nav class="navbar navbar-expand-lg">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">QL Người Dùng</a>
        <div class="d-flex">
            <span class="navbar-text me-3 text-white">Xin chào, <?php echo $_SESSION['username']; ?></span>
            <a href="dang-xuat.php" class="btn btn-outline-light btn-sm">Đăng xuất</a>
        </div>
    </div>
</nav>

<div class="sidebar">
    <a href="index.php"><i class="fas fa-chart-line"></i> Tổng quan</a>
    <a href="danh-sach-nhan-vien.php?p=staff&a=list-staff"><i class="fas fa-user"></i> Nhân viên</a>
    <a href="danh-sach-cong-viec.php?p=work&a=list-work"><i class="fas fa-tasks"></i> Công việc</a>
    <a href="danh-sach-nhom.php?p=group&a=list-group"><i class="fas fa-users"></i> Nhóm</a>
    <a href="danh-sach-phong-ban.php?p=dept&a=list-dept"><i class="fas fa-building"></i> Phòng ban</a>
</div>

<div class="content">

    <div class="container-fluid">
        <div class="row g-4">
            <div class="col-md-3">
                <div class="card-stat bg-aqua">
                    <i class="fas fa-user"></i>
                    <h3><?php echo $tongNV; ?></h3>
                    <p>Nhân viên</p>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card-stat bg-yellow">
                    <i class="fas fa-tasks"></i>
                    <h3><?php echo $tongCV; ?></h3>
                    <p>Công việc</p>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card-stat bg-green">
                    <i class="fas fa-users"></i>
                    <h3><?php echo $tongNhom; ?></h3>
                    <p>Nhóm</p>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card-stat bg-purple">
                    <i class="fas fa-building"></i>
                    <h3><?php echo $tongPB; ?></h3>
                    <p>Phòng ban</p>
                </div>
            </div>
        </div>

        <div class="table-responsive">
            <h4>Danh sách phòng ban</h4>
            <table class="table table-bordered table-striped">
                <thead>
                    <tr>
                        <th>STT</th>
                        <th>Mã phòng</th>
                        <th>Tên phòng</th>
                        <th>Ngày tạo</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $count=1; foreach($arrPhongBan as $pb): ?>
                    <tr>
                        <td><?php echo $count++; ?></td>
                        <td><?php echo $pb['ma_phong_ban']; ?></td>
                        <td><?php echo $pb['ten_phong_ban']; ?></td>
                        <td><?php echo $pb['ngay_tao']; ?></td>
                    </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>

        <div class="table-responsive">
            <h4>Danh sách chức vụ</h4>
            <table class="table table-bordered table-striped">
                <thead>
                    <tr>
                        <th>STT</th>
                        <th>Mã chức vụ</th>
                        <th>Tên chức vụ</th>
                        <th>Ngày tạo</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $count=1; foreach($arrChucVu as $cv): ?>
                    <tr>
                        <td><?php echo $count++; ?></td>
                        <td><?php echo $cv['ma_chuc_vu']; ?></td>
                        <td><?php echo $cv['ten_chuc_vu']; ?></td>
                        <td><?php echo $cv['ngay_tao']; ?></td>
                    </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>

    </div>
</div>

</body>
</html>
