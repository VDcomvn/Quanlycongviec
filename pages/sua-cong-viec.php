<?php 

// create session
session_start();

if(isset($_SESSION['username']) && isset($_SESSION['level']))
{
    // include file
    include('../layouts/header.php');
    include('../layouts/topbar.php');
    include('../layouts/sidebar.php');

    $isAdmin = ($row_acc['quyen'] == 1); // phân quyền

    // active công việc
    if(isset($_GET['id']))
    {
        $id = $_GET['id'];
        $act = "SELECT ma_cong_viec, nv.id as idNhanVien, ma_nv, ten_nv, ngay_bat_dau, ngay_ket_thuc, ten_cong_viec, muc_dich, bao_cao 
                FROM cong_viec ct, nhanvien nv 
                WHERE ct.nhanvien_id = nv.id AND ct.id = $id";
        $resultAct = mysqli_query($conn, $act);
        $rowAct = mysqli_fetch_array($resultAct);
        $idNhanVien = $rowAct['idNhanVien'];
    }

    // xử lý lưu
    if(isset($_POST['save']))
    {
        $error = array();
        $success = array();
        $showMess = false;

        $maNhanVien = $_POST['maNhanVien'];
        $ngayBatDau = $_POST['ngayBatDau'];
        $ngayKetThuc = $_POST['ngayKetThuc'];
        $tenCongViec = $_POST['tenCongViec'];
        $mucDich = $_POST['mucDich'];
        $nguoiTao = $_POST['nguoiTao'];
        $ngayTao = date("Y-m-d H:i:s");

        // validate chỉ khi là admin
        if($isAdmin)
        {
            if(empty($ngayKetThuc))
                $error['ngayKetThuc'] = 'error';
            if(!empty($ngayKetThuc) && ($ngayBatDau > $ngayKetThuc))
                $error['loiNgay'] = 'error';
            if(empty($tenCongViec))
                $error['tenCongViec'] = 'error';
        }

        // xử lý upload file báo cáo
        $baoCaoFile = $rowAct['bao_cao']; // giữ file cũ nếu không upload
        if(isset($_FILES['baoCao']) && $_FILES['baoCao']['error'] == 0)
        {
            $targetDir = "../uploads/";
            $fileName = time() . "_" . basename($_FILES["baoCao"]["name"]);
            $targetFile = $targetDir . $fileName;
            if(move_uploaded_file($_FILES["baoCao"]["tmp_name"], $targetFile))
            {
                $baoCaoFile = $fileName;
            }
            else
            {
                $error['baoCao'] = 'Upload file thất bại';
            }
        }

        if(!$error)
        {
            $showMess = true;

            // nếu nhân viên => chỉ update file báo cáo, người sửa, ngày sửa
            if(!$isAdmin)
            {
                $update = "UPDATE cong_viec SET
                            bao_cao = '$baoCaoFile',
                            nguoi_sua = '$nguoiTao',
                            ngay_sua = '$ngayTao'
                            WHERE id = $id";
            }
            else
            {
                $update = "UPDATE cong_viec SET
                            ngay_bat_dau = '$ngayBatDau',
                            ngay_ket_thuc = '$ngayKetThuc',
                            ten_cong_viec = '$tenCongViec',
                            muc_dich = '$mucDich',
                            bao_cao = '$baoCaoFile',
                            nguoi_sua = '$nguoiTao',
                            ngay_sua = '$ngayTao'
                            WHERE id = $id";
            }

            $result = mysqli_query($conn, $update);
            if($result)
            {
                $success['success'] = 'Lưu lại thành công';
                echo '<script>setTimeout("window.location=\'sua-cong-viec.php?p=collaborate&a=add-collaborate&id='.$id.'\'",1000);</script>';
            }
        }
    }

?>

<!-- Content Wrapper -->
<div class="content-wrapper">
    <section class="content-header">
        <h1>Công việc</h1>
    </section>

    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">Sửa công việc</h3>
                    </div>

                    <div class="box-body">
                        <?php 
                        if(isset($success) && $showMess)
                        {
                            echo "<div class='alert alert-success alert-dismissible'>";
                            echo "<h4><i class='icon fa fa-check'></i> Thành công!</h4>";
                            foreach ($success as $suc) 
                            {
                                echo $suc . "<br/>";
                            }
                            echo "</div>";
                        }
                        ?>
                        <form action="" method="POST" enctype="multipart/form-data">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Mã công việc:</label>
                                        <input type="text" class="form-control" name="maCongViec" value="<?php echo $rowAct['ma_cong_viec']; ?>" readonly>
                                    </div>
                                    <div class="form-group">
                                        <label>Nhân viên:</label>
                                        <input type="text" class="form-control" name="maNhanVien" value="<?php echo $rowAct['ma_nv']; ?> - <?php echo $rowAct['ten_nv']; ?>" readonly>
                                    </div>
                                    <div class="form-group">
                                        <label>Ngày bắt đầu<span style="color: red;">*</span>:</label>
                                        <input type="date" class="form-control" name="ngayBatDau" value="<?php echo date_format(date_create($rowAct['ngay_bat_dau']), 'Y-m-d'); ?>" <?php echo $isAdmin ? '' : 'readonly'; ?>>
                                        <small style="color: red;"><?php if(isset($error['loiNgay'])) echo 'Ngày bắt đầu <b> không được sau </b> ngày kết thúc';?></small>
                                    </div>  
                                    <div class="form-group">
                                        <label>Ngày kết thúc<span style="color: red;">*</span>:</label>
                                        <input type="date" class="form-control" name="ngayKetThuc" value="<?php echo date_format(date_create($rowAct['ngay_ket_thuc']), 'Y-m-d'); ?>" <?php echo $isAdmin ? '' : 'readonly'; ?>>
                                        <small style="color: red;"><?php if(isset($error['ngayKetThuc'])) echo 'Vui lòng chọn ngày kết thúc';?></small>
                                    </div>
                                    <div class="form-group">
                                        <label>Tên công việc<span style="color: red;">*</span>:</label>
                                        <input type="text" class="form-control" name="tenCongViec" value="<?php echo $rowAct['ten_cong_viec']; ?>" <?php echo $isAdmin ? '' : 'readonly'; ?>>
                                        <small style="color: red;"><?php if(isset($error['tenCongViec'])) echo 'Vui lòng nhập tên công việc';?></small>
                                    </div>
                                    <div class="form-group">
                                        <label>Mục đích:</label>
                                        <textarea class="form-control" name="mucDich" <?php echo $isAdmin ? '' : 'readonly'; ?>><?php echo $rowAct['muc_dich']; ?></textarea>
                                    </div>
                                    <div class="form-group">
                                        <label>Báo cáo (file tài liệu):</label>
                                        <?php 
                                        if(!empty($rowAct['bao_cao'])){
                                            echo "<p>File hiện tại: <a href='../uploads/".$rowAct['bao_cao']."' target='_blank'>Xem file</a></p>";
                                        }
                                        ?>
                                        <input type="file" class="form-control" name="baoCao">
                                    </div>
                                    <div class="form-group">
                                        <label>Người sửa:</label>
                                        <input type="text" class="form-control" name="nguoiTao" value="<?php echo $row_acc['ho'] . " " . $row_acc['ten']; ?>" readonly>
                                    </div>
                                    <div class="form-group">
                                        <button type="submit" class="btn btn-warning" name="save"><i class="fa fa-save"></i> Lưu lại</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<?php
    include('../layouts/footer.php');
}
else
{
    header('Location: dang-nhap.php');
}
?>
