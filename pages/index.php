<?php

// create session
session_start();

if (isset($_SESSION['username']) && isset($_SESSION['level'])) {
	// include file
	include('../layouts/header.php');
	include('../layouts/topbar.php');
	include('../layouts/sidebar.php');

	// dem so luong nhan vien
	$nv = "SELECT count(id) as soluong FROM nhanvien";
	$resultNV = mysqli_query($conn, $nv);
	$rowNV = mysqli_fetch_array($resultNV);
	$tongNV = $rowNV['soluong'];

	// dem tong so cong viec
	$cvQuery = "SELECT COUNT(*) AS tongCongViec FROM cong_viec";
	$resultCV = mysqli_query($conn, $cvQuery);
	$rowCV = mysqli_fetch_assoc($resultCV);
	$tongCongViec = $rowCV['tongCongViec'];

	// dem tong so nhom
	$nhomQuery = "SELECT COUNT(*) AS tongNhom FROM nhom";
	$resultNhom = mysqli_query($conn, $nhomQuery);
	$rowNhom = mysqli_fetch_assoc($resultNhom);
	$tongNhom = $rowNhom['tongNhom'];

	// dem so phong ban
	$pb = "SELECT count(id) as soluong FROM phong_ban";
	$resultPB = mysqli_query($conn, $pb);
	$rowPB = mysqli_fetch_array($resultPB);
	$tongPB = $rowPB['soluong'];

	// dem so phong ban
	$tk = "SELECT count(id) as soluong FROM tai_khoan";
	$resultTK = mysqli_query($conn, $tk);
	$rowTK = mysqli_fetch_array($resultTK);
	$tongTK = $rowTK['soluong'];

	// danh sach phong ban
	$phongBan = "SELECT ma_phong_ban, ten_phong_ban, ngay_tao FROM phong_ban ORDER BY id DESC";
	$resultPhongBan = mysqli_query($conn, $phongBan);
	$arrPhongBan = array();
	while ($rowPhongBan = mysqli_fetch_array($resultPhongBan)) {
		$arrPhongBan[] = $rowPhongBan;
	}

	// danh sach chuc vu
	$chucVu = "SELECT ma_chuc_vu, ten_chuc_vu, ngay_tao FROM chuc_vu ORDER BY id DESC";
	$resultChucVu = mysqli_query($conn, $chucVu);
	$arrChucVu = array();
	while ($rowChucVu = mysqli_fetch_array($resultChucVu)) {
		$arrChucVu[] = $rowChucVu;
	}

?>
	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">

		<!-- Content Header (Page header) -->
		<section class="content-header">
			<h1>
				Tổng quan
				<small>Website quản lý người dùng</small>
			</h1>
		</section>

		<!-- Main content -->
		<section class="content">
			<!-- Small boxes (Stat box) -->
			<div class="row">
				<div class="col-lg-4 col-xs-6">
					<!-- small box -->
					<div class="small-box bg-aqua">
						<div class="inner">
							<h3><?php echo $tongNV; ?></h3>

							<p>Nhân viên</p>
						</div>
						<div class="icon">
							<i class="fa fa-user"></i>
						</div>
						<a href="danh-sach-nhan-vien.php?p=staff&a=list-staff" class="small-box-footer">Danh sách nhân viên <i class="fa fa-arrow-circle-right"></i></a>
					</div>
				</div>

				<!-- ./col -->
				<div class="col-lg-4 col-xs-6">
					<!-- small box -->
					<div class="small-box bg-yellow">
						<div class="inner">
							<h3><?php echo $tongCongViec; ?></h3>

							<p>Công việc</p>
						</div>
						<div class="icon">
							<i class="fa fa-tasks"></i>
						</div>
						<a href="danh-sach-cong-viec.php?p=work&a=list-work" class="small-box-footer">Xem danh sách công việc <i class="fa fa-arrow-circle-right"></i>
						</a>
					</div>
				</div>

				<!-- ./col -->
				<div class="col-lg-4 col-xs-6">
					<!-- small box -->
					<div class="small-box bg-green">
						<div class="inner">
							<h3><?php echo $tongNhom; ?></h3>

							<p>Nhóm</p>
						</div>
						<div class="icon">
							<i class="fa fa-users"></i>
						</div>
						<a href="danh-sach-nhom.php?p=group&a=list-group" class="small-box-footer">Xem danh sách nhóm <i class="fa fa-arrow-circle-right"></i>
						</a>
					</div>
				</div>

			<!-- Main row -->
			<div class="row">
				<div class="col-lg-6">
					<div class="box">
						<div class="box-header">
							<h3 class="box-title">Danh sách phòng ban</h3>
						</div>
						<!-- /.box-header -->
						<div class="box-body">
							<div class="table-responsive">
								<table id="example1" class="table table-bordered table-striped">
									<thead>
										<tr>
											<th>STT</th>
											<th>Mã Phòng</th>
											<th>Tên phòng</th>
											<th>Ngày tạo</th>
										</tr>
									</thead>
									<tbody>
										<?php
										$count = 1;
										foreach ($arrPhongBan as $pb) {
										?>
											<tr>
												<td><?php echo $count; ?></td>
												<td><?php echo $pb['ma_phong_ban']; ?></td>
												<td><?php echo $pb['ten_phong_ban']; ?></td>
												<td><?php echo $pb['ngay_tao']; ?></td>
											</tr>
										<?php
											$count++;
										}
										?>
									</tbody>
								</table>
							</div>
						</div>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->
				</div>
				<!-- col-lg-6 -->
				<div class="col-lg-6">
					<div class="box">
						<div class="box-header">
							<h3 class="box-title">Danh sách chức vụ</h3>
						</div>
						<!-- /.box-header -->
						<div class="box-body">
							<div class="table-responsive">
								<table id="example3" class="table table-bordered table-striped">
									<thead>
										<tr>
											<th>STT</th>
											<th>Mã chức vụ</th>
											<th>Tên chức vụ</th>
											<th>Ngày tạo</th>
										</tr>
									</thead>
									<tbody>
										<?php
										$count = 1;
										foreach ($arrChucVu as $cv) {
										?>
											<tr>
												<td><?php echo $count; ?></td>
												<td><?php echo $cv['ma_chuc_vu']; ?></td>
												<td><?php echo $cv['ten_chuc_vu']; ?></td>
												<td><?php echo $cv['ngay_tao']; ?></td>
											</tr>
										<?php
											$count++;
										}
										?>
									</tbody>
								</table>
							</div>
						</div>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->
				</div>
			</div>
			<!-- /.row (main row) -->
		</section>
		<!-- /.content -->
	</div>
	<!-- /.content-wrapper -->
<?php
	// include
	include('../layouts/footer.php');
} else {
	// go to pages login
	header('Location: dang-nhap.php');
}

?>