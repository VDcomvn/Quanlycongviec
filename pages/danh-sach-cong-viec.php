<?php 

// create session
session_start();

if(isset($_SESSION['username']) && isset($_SESSION['level']))
{
  // include file
  include('../layouts/header.php');
  include('../layouts/topbar.php');
  include('../layouts/sidebar.php');

  if(isset($_POST['edit']))
  {
    $idCongViec = $_POST['idCongViec'];
    echo "<script>location.href='sua-cong-viec.php?p=collaborate&a=list-collaborate&id=".$idCongViec."'</script>";
  }

  // show data
  $showData = "SELECT ct.id as id, ma_cong_viec, ten_nv, ten_chuc_vu, ngay_bat_dau, ngay_ket_thuc, ten_cong_viec, bao_cao 
               FROM nhanvien nv, chuc_vu cv, cong_viec ct 
               WHERE nv.chuc_vu_id = cv.id AND nv.id = ct.nhanvien_id 
               ORDER BY ct.ngay_tao DESC";
  $result = mysqli_query($conn, $showData);
  $arrShow = array();
  while ($row = mysqli_fetch_array($result)) {
    $arrShow[] = $row;
  }

  // delete record
  if(isset($_POST['delete']))
  {
    $idCongViec = $_POST['idCongViec'];

    // xóa công việc
    $xoa = "DELETE FROM cong_viec WHERE id = $idCongViec";
    $result = mysqli_query($conn, $xoa);
    if($result)
    {
      $showMess = true;
      $success['success'] = 'Xóa công việc thành công.';
      echo '<script>setTimeout("window.location=\'danh-sach-cong-viec.php?p=collaborate&a=list-collaborate\'",1000);</script>';
    }
  }

?>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <form method="POST">
        <div class="modal-header">
          <span style="font-size: 18px;">Thông báo</span>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <input type="hidden" name="idCongViec" id="modalId">
          Bạn có thực sự muốn xóa công việc này?
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Hủy bỏ</button>
          <button type="submit" class="btn btn-primary" name="delete">Xóa</button>
        </div>
      </form>
    </div>
  </div>
</div>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      Công việc
    </h1>
  </section>

  <!-- Main content -->
  <section class="content">
    <div class="row">
      <div class="col-xs-12">
        <div class="box">
          <div class="box-header">
            <h3 class="box-title">Danh sách công việc</h3>
          </div>
          <!-- /.box-header -->
          <div class="box-body">
            <div class="table-responsive">
            <?php 
              // show error
              if(isset($error)) 
              {
                if($showMess == false)
                {
                  echo "<div class='alert alert-danger alert-dismissible'>";
                  echo "<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>";
                  echo "<h4><i class='icon fa fa-ban'></i> Lỗi!</h4>";
                  foreach ($error as $err) 
                  {
                    echo $err . "<br/>";
                  }
                  echo "</div>";
                }
              }
            ?>
            <?php 
              // show success
              if(isset($success)) 
              {
                if($showMess == true)
                {
                  echo "<div class='alert alert-success alert-dismissible'>";
                  echo "<h4><i class='icon fa fa-check'></i> Thành công!</h4>";
                  foreach ($success as $suc) 
                  {
                    echo $suc . "<br/>";
                  }
                  echo "</div>";
                }
              }
            ?>
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>STT</th>
                  <th>Mã công việc</th>
                  <th>Tên nhân viên</th>
                  <th>Chức vụ</th>
                  <th>Ngày bắt đầu</th>
                  <th>Ngày kết thúc</th>
                  <th>Tên công việc</th>
                  <th>Báo cáo</th>
                  <th>Trạng thái</th>
                  <th>Sửa</th>
                  <th>Xóa</th>
                </tr>
                </thead>
                <tbody>
                <?php 
                  $count = 1;
                  foreach ($arrShow as $arrS) 
                  {
                ?>
                    <tr>
                      <td><?php echo $count; ?></td>
                      <td><?php echo $arrS['ma_cong_viec']; ?></td>
                      <td><?php echo $arrS['ten_nv']; ?></td>
                      <td><?php echo $arrS['ten_chuc_vu']; ?></td>
                      <td><?php echo date_format(date_create($arrS['ngay_bat_dau']), 'd-m-Y'); ?></td>
                      <td><?php echo date_format(date_create($arrS['ngay_ket_thuc']), 'd-m-Y'); ?></td>
                      <td><?php echo $arrS['ten_cong_viec']; ?></td>
                      <td>
                        <?php 
                          if(!empty($arrS['bao_cao'])){
                              echo "<a href='../uploads/".$arrS['bao_cao']."' target='_blank'>Xem file</a>";
                          } else {
                              echo "Chưa có";
                          }
                        ?>
                      </td>
                      <td>
                      <?php
                        if(!empty($arrS['bao_cao'])) {
                            echo '<span class="badge bg-green"> Hoàn thành </span>';
                        } else {
                            $ngayHienTai = date("Y-m-d");
                            $ngayHetHan = date("Y-m-d", strtotime($arrS['ngay_ket_thuc']));
                            if($ngayHienTai <= $ngayHetHan) {
                                echo '<span class="badge bg-blue"> Đang làm </span>';
                            } else {
                                echo '<span class="badge bg-red"> Trễ hạn </span>';
                            }
                        }
                      ?>
                      </td>
                      <td>
                        <form method='POST'>
                          <input type='hidden' value='<?php echo $arrS['id']; ?>' name='idCongViec'/>
                          <button type='submit' class='btn bg-orange btn-flat' name='edit'><i class='fa fa-edit'></i></button>
                        </form>
                      </td>
                      <td>
                        <?php 
                          if($row_acc['quyen'] == 1)
                          {
                            echo "<button type='button' class='btn bg-maroon btn-flat' data-toggle='modal' data-target='#exampleModal' data-whatever='".$arrS['id']."'><i class='fa fa-trash'></i></button>";
                          }
                          else
                          {
                            echo "<button type='button' class='btn bg-maroon btn-flat' disabled><i class='fa fa-trash'></i></button>";
                          }
                        ?>
                      </td>
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
      <!-- /.col -->
    </div>
    <!-- /.row -->
  </section>
  <!-- /.content -->
</div>

<script>
  // truyền id vào modal
  $('#exampleModal').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget)
    var id = button.data('whatever')
    var modal = $(this)
    modal.find('#modalId').val(id)
  })
</script>

<?php
  // include
  include('../layouts/footer.php');
}
else
{
  // go to pages login
  header('Location: dang-nhap.php');
}

?>
