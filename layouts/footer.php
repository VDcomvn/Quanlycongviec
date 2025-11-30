<!-- FOOTER -->
<footer class="main-footer">
  <strong><a href="#" target="_blank">Quản lý người dùng</a></strong>
</footer>

<div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->


<!-- ====== JS LIBRARIES CẦN THIẾT ====== -->

<!-- jQuery -->
<script src="../bower_components/jquery/dist/jquery.min.js"></script>

<!-- Bootstrap -->
<script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- AdminLTE -->
<script src="../dist/js/adminlte.min.js"></script>

<!-- Select2 -->
<script src="../bower_components/select2/dist/js/select2.full.min.js"></script>

<!-- DataTables -->
<script src="../bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="../bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>

<!-- CKEditor -->
<script src="../bower_components/ckeditor/ckeditor.js"></script>


<!-- ====== SCRIPT KHỞI TẠO ====== -->
<script>
  $(function () {

    /* CKEDITOR (viết báo cáo công việc, mô tả công việc) */
    if (document.getElementById('editor1')) {
      CKEDITOR.replace('editor1');
    }

    /* SELECT2 (dropdown thông minh) */
    $('.select2').select2();

    function removeVietnamese(str) {
    return str
        .normalize("NFD")
        .replace(/[\u0300-\u036f]/g, "")
        .replace(/đ/g, "d")
        .replace(/Đ/g, "D");
    }

    // Tùy chỉnh DataTables để tìm kiếm không dấu
    jQuery.fn.DataTable.ext.type.search.string = function (data) {
        return !data ?
            '' :
            typeof data === 'string' ?
            removeVietnamese(data).toLowerCase() :
            data;
    };

    /* DATATABLES (danh sách user, công việc) */
    $('#example1, #example3, #example4').DataTable({
      "lengthMenu": [5, 10, 25, 50, 100],
      "pageLength": 5
    });

    $('#example2').DataTable({
      'paging': true,
      'lengthChange': false,
      'searching': false,
      'ordering': true,
      'info': true,
      'autoWidth': false
    });

    /* MODAL TRUYỀN DỮ LIỆU (nếu bạn dùng modal) */
    $('#exampleModal').on('show.bs.modal', function (event) {
      var button = $(event.relatedTarget);
      var recipient = button.data('whatever');
      var modal = $(this);
      modal.find('.modal-title').text('Thông tin: ' + recipient);
      modal.find('.modal-body input').val(recipient);
    });

  });
</script>

</body>
</html>
