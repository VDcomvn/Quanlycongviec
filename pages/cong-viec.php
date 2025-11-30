<?php 

session_start();

if(isset($_SESSION['username']) && isset($_SESSION['level']))
{
  include('../layouts/header.php');
  include('../layouts/topbar.php');
  include('../layouts/sidebar.php');

  // show data nhân viên
  $NV = "SELECT id, ma_nv, ten_nv FROM nhanvien";
  $resultNV = mysqli_query($conn, $NV);
  $arrNV = array();
  while ($rowNV = mysqli_fetch_array($resultNV)) {
    $arrNV[] = $rowNV;
  }

  // tạo mã công việc
  $maCongViec = "MCV" . time();

  if(isset($_POST['save']))
  {
      $error = [];
      $success = [];
      $showMess = false;

      $maNhanVien = $_POST['maNhanVien'];
      $ngayBatDau = $_POST['ngayBatDau'];
      $ngayKetThuc = $_POST['ngayKetThuc'];
      $tenCongViec = $_POST['tenCongViec']; // thay dia_diem
      $mucDich = $_POST['mucDich'];
      $baoCao = $_POST['baoCao']; // thay ghi_chu
      $nguoiTao = $_POST['nguoiTao'];
      $ngayTao = date("Y-m-d H:i:s");

      $nguoiSua = $nguoiTao;
      $ngaySua = date("Y-m-d H:i:s");

      // validate
      if($maNhanVien == 'chon')
          $error['maNhanVien'] = 'error';
      if(empty($ngayKetThuc))
          $error['ngayKetThuc'] = 'error';
      if(!empty($ngayKetThuc) && ($ngayBatDau > $ngayKetThuc))
          $error['loiNgay'] = 'error';
      if(empty($tenCongViec))
          $error['tenCongViec'] = 'error';

      // kiểm tra nhân viên đang công việc
      $check = "SELECT nhanvien_id FROM cong_viec 
                WHERE nhanvien_id = '$maNhanVien' 
                AND ngay_ket_thuc >= CURDATE()";

      $resultCheck = mysqli_query($conn, $check);
      if(mysqli_num_rows($resultCheck) != 0){
          $error['dangLamViec'] = 'error';
          echo "<script>alert('Nhân viên này đang trong quá trình làm việc');</script>";
      }

      if(empty($error))
      {
          $showMess = true;

          $insert = "
          INSERT INTO cong_viec(
              ma_cong_viec,
              nhanvien_id,
              ngay_bat_dau,
              ngay_ket_thuc,
              ten_cong_viec,
              muc_dich,
              bao_cao,
              nguoi_tao,
              ngay_tao,
              nguoi_sua,
              ngay_sua
          ) VALUES (
              '$maCongViec',
              '$maNhanVien',
              '$ngayBatDau',
              '$ngayKetThuc',
              '$tenCongViec',
              '$mucDich',
              '$baoCao',
              '$nguoiTao',
              '$ngayTao',
              '$nguoiSua',
              '$ngaySua'
          )";

          $result = mysqli_query($conn, $insert);
          if(!$result){
              die("LỖI SQL: " . mysqli_error($conn));
          }

          $success['success'] = "Thêm công việc thành công";
          echo '<script>setTimeout("window.location=\'cong-viec.php?p=collaborate&a=add-collaborate\'",1000);</script>';
      }
  }
  $baoCao = '';

if(isset($_FILES['baoCao']) && $_FILES['baoCao']['error'] == 0){
    $allowed_ext = ['pdf','doc','docx','xls','xlsx','txt']; // định dạng cho phép
    $file_name = $_FILES['baoCao']['name'];
    $file_tmp = $_FILES['baoCao']['tmp_name'];
    $file_ext = strtolower(pathinfo($file_name, PATHINFO_EXTENSION));
    
    if(in_array($file_ext, $allowed_ext)){
        $new_name = 'bao_cao_' . time() . '.' . $file_ext; // đặt tên file mới
        $upload_dir = '../uploads/'; // thư mục lưu file
        if(!is_dir($upload_dir)){
            mkdir($upload_dir, 0777, true);
        }
        if(move_uploaded_file($file_tmp, $upload_dir . $new_name)){
            $baoCao = $new_name; // lưu tên file vào DB
        } else {
            $error['baoCao'] = 'Không thể upload file';
        }
    } else {
        $error['baoCao'] = 'Chỉ cho phép file: pdf, doc, docx, xls, xlsx, txt';
    }
}


?>

<div class="content-wrapper">
    <section class="content-header">
      <h1>Công việc</h1>
    </section>

    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Thêm công việc</h3>
            </div>
            <div class="box-body">
              <?php 
                if($row_acc['quyen'] != 1) 
                {
                  echo "<div class='alert alert-warning alert-dismissible'>";
                  echo "<h4><i class='icon fa fa-ban'></i> Thông báo!</h4>";
                  echo "Bạn <b> không có quyền </b> thực hiện chức năng này.";
                  echo "</div>";
                }
              ?>

              <?php 
                if(isset($success) && $showMess == true)
                {
                    echo "<div class='alert alert-success alert-dismissible'>";
                    echo "<h4><i class='icon fa fa-check'></i> Thành công!</h4>";
                    foreach ($success as $suc) { echo $suc . "<br/>"; }
                    echo "</div>";
                }
              ?>

              <form action="" method="POST" enctype="multipart/form-data">
                <div class="row">
                  <div class="col-md-12">
                    <div class="form-group">
                      <label>Mã công việc: </label>
                      <input type="text" class="form-control" name="maCongViec" value="<?php echo $maCongViec; ?>" readonly>
                    </div>

                    <div class="form-group">
                      <label>Chọn nhân viên<span style="color: red;">*</span> : </label>
                      <select class="form-control" name="maNhanVien">
                        <option value="chon">--- Chọn nhân viên ---</option>
                        <?php 
                        foreach ($arrNV as $nv) {
                          echo "<option value='".$nv['id']."'>". $nv['ma_nv'] ." - ".$nv['ten_nv']."</option>";
                        }
                        ?>
                      </select>
                      <small style="color: red;"><?php if(isset($error['maNhanVien'])){ echo 'Vui lòng chọn nhân viên';} ?></small>
                    </div>

                    <div class="form-group">
                      <label>Ngày bắt đầu<span style="color: red;">*</span>: </label>
                      <input type="date" class="form-control" name="ngayBatDau" value="<?php echo date('Y-m-d'); ?>">
                      <small style="color: red;"><?php if(isset($error['loiNgay'])){ echo 'Ngày bắt đầu không được sau ngày kết thúc';} ?></small>
                    </div>  

                    <div class="form-group">
                      <label>Ngày kết thúc<span style="color: red;">*</span>: </label>
                      <input type="date" class="form-control" name="ngayKetThuc">
                      <small style="color: red;"><?php if(isset($error['ngayKetThuc'])){ echo 'Vui lòng chọn ngày kết thúc';} ?></small>
                    </div>

                    <div class="form-group">
                      <label>Tên công việc<span style="color: red;">*</span>: </label>
                      <input type="text" class="form-control" name="tenCongViec" placeholder="Nhập tên công việc">
                      <small style="color: red;"><?php if(isset($error['tenCongViec'])){ echo 'Vui lòng nhập tên công việc';} ?></small>
                    </div>

                    <div class="form-group">
                      <label>Mục đích công việc: </label>
                      <textarea id="editor1" rows="10" cols="80" name="mucDich"></textarea>
                    </div>

                    <div class="form-group">
                      <label>Báo cáo (file tài liệu): </label>
                      <input type="file" class="form-control" name="baoCao">
                    </div>

                    <div class="form-group">
                      <label>Người tạo: </label>
                      <input type="text" class="form-control" value="<?php echo $row_acc['ho']; ?> <?php echo $row_acc['ten']; ?>" name="nguoiTao" readonly>
                    </div>

                    <div class="form-group">
                      <label>Ngày tạo: </label>
                      <input type="text" class="form-control" value="<?php echo date('Y-m-d'); ?>" name="ngayTao" readonly>
                    </div>

                    <?php if($_SESSION['level'] == 1)
                        echo "<button type='submit' class='btn btn-primary' name='save'><i class='fa fa-plus'></i> Thêm công việc</button>";
                    ?>

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
