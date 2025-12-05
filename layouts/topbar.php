<body class="hold-transition skin-blue sidebar-mini">
  <div class="wrapper">

    <header class="main-header">
      <a href="index.php?p=index&a=statistic" class="logo">
        <span class="logo-mini"><b>QL</b></span>
        <span class="logo-lg"><b>QL NGƯỜI DÙNG</b></span>
      </a>

      <nav class="navbar navbar-static-top">
        <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
          <span class="sr-only">Toggle navigation</span>
        </a>

        <div class="navbar-custom-menu">
          <ul class="nav navbar-nav">

            <!-- ONLY KEEP USER MENU -->
            <li class="dropdown user user-menu">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <img src="../uploads/images/<?php echo $row_acc['hinh_anh']; ?>" 
                     class="user-image" alt="User Image">
                <span class="hidden-xs">
                  <?php echo $row_acc['ten']; ?> <?php echo $row_acc['ho']; ?>
                </span>
              </a>

              <ul class="dropdown-menu">
                <!-- User image -->
                <li class="user-header">
                  <img src="../uploads/images/<?php echo $row_acc['hinh_anh']; ?>" 
                       class="img-circle" alt="User Image">

                  <p>
                    <?php echo $row_acc['ten']; ?> <?php echo $row_acc['ho']; ?> -
                    <?php
                      if ($row_acc['quyen'] == 1) echo "Quản trị viên";
                      else if ($row_acc['quyen'] == 2) echo "Trưởng phòng";
                      else echo "Nhân viên";
                    ?>
                    <small>Lượt truy cập: <?php echo $row_acc['truy_cap']; ?></small>
                  </p>
                </li>

                <!-- Menu Footer-->
                <li class="user-footer">
                  <div class="pull-left">
                    <a href="thong-tin-tai-khoan.php?p=account&a=profile" 
                       class="btn btn-default btn-flat">
                       Thông tin TK
                    </a>
                  </div>
                  <div class="pull-right">
                    <a href="dang-xuat.php" class="btn btn-default btn-flat">
                      Đăng xuất
                    </a>
                  </div>
                </li>
              </ul>

            </li>
            <!-- END USER MENU -->

          </ul>
        </div>
      </nav>
    </header>
