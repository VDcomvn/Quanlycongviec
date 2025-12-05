<aside class="main-sidebar">
    <section class="sidebar">

        <!-- User Panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="../uploads/images/<?php echo $row_acc['hinh_anh']; ?>" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
                <p><?php echo $row_acc['ten'] . " " . $row_acc['ho']; ?></p>
                <a href="#">
                    <i class="fa fa-circle text-success"></i>
                    <?php echo ($row_acc['quyen'] == 1) ? "Quản trị viên" : "Nhân viên"; ?>
                </a>
            </div>
        </div>

        <!-- Menu -->
        <ul class="sidebar-menu" data-widget="tree">

            <!-- Tổng quan -->
            <li class="treeview <?php echo ($p == 'index') ? 'active' : ''; ?>">
                <a href="#">
                    <i class="fa fa-dashboard"></i> <span>Tổng quan</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li class="<?php echo ($a == 'statistic') ? 'active' : ''; ?>">
                        <a href="index.php?p=index&a=statistic"><i class="fa fa-circle-o"></i> Thống kê</a>
                    </li>
                    <li class="<?php echo ($a == 'nhanvien') ? 'active' : ''; ?>">
                        <a href="ds-nhanvien.php?p=index&a=nhanvien"><i class="fa fa-circle-o"></i> Danh sách nhân viên</a>
                    </li>
                    <li class="<?php echo ($a == 'taikhoan') ? 'active' : ''; ?>">
                        <a href="index_taikhoan.php?p=index&a=taikhoan"><i class="fa fa-circle-o"></i> Danh sách tài khoản</a>
                    </li>
                </ul>
            </li>

            <!-- Quản lý nhân viên -->
            <li class="treeview <?php echo ($p == 'staff') ? 'active' : ''; ?>">
                <a href="#">
                    <i class="fa fa-users"></i> <span>Quản lý Nhân viên</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>

                <ul class="treeview-menu">
                    <li class="<?php echo ($a == 'room') ? 'active' : ''; ?>">
                        <a href="phong-ban.php?p=staff&a=room"><i class="fa fa-circle-o"></i> Phòng ban</a>
                    </li>
                    <li class="<?php echo ($a == 'position') ? 'active' : ''; ?>">
                        <a href="chuc-vu.php?p=staff&a=position"><i class="fa fa-circle-o"></i> Chức vụ</a>
                    </li>
                    <li class="<?php echo ($a == 'level') ? 'active' : ''; ?>">
                        <a href="trinh-do.php?p=staff&a=level"><i class="fa fa-circle-o"></i> Trình độ</a>
                    </li>
                    <li class="<?php echo ($a == 'specialize') ? 'active' : ''; ?>">
                        <a href="chuyen-mon.php?p=staff&a=specialize"><i class="fa fa-circle-o"></i> Chuyên môn</a>
                    </li>
                    <li class="<?php echo ($a == 'certificate') ? 'active' : ''; ?>">
                        <a href="bang-cap.php?p=staff&a=certificate"><i class="fa fa-circle-o"></i> Bằng cấp</a>
                    </li>
                    <li class="<?php echo ($a == 'employee-type') ? 'active' : ''; ?>">
                        <a href="loai-nhan-vien.php?p=staff&a=employee-type"><i class="fa fa-circle-o"></i> Loại nhân viên</a>
                    </li>

                    <?php if($row_acc['quyen'] == 1) { // chỉ hiển thị khi quản trị viên ?>
                    <li class="<?php echo ($a == 'add-staff') ? 'active' : ''; ?>">
                        <a href="them-nhan-vien.php?p=staff&a=add-staff"><i class="fa fa-circle-o"></i> Thêm mới nhân viên</a>
                    </li>
                    <?php } ?>

                    <li class="<?php echo ($a == 'list-staff') ? 'active' : ''; ?>">
                        <a href="danh-sach-nhan-vien.php?p=staff&a=list-staff"><i class="fa fa-circle-o"></i> Danh sách nhân viên</a>
                    </li>
                </ul>
            </li>

            <!-- Quản lý công việc -->
            <li class="treeview <?php echo ($p == 'collaborate') ? 'active' : ''; ?>">
                <a href="#">
                    <i class="fa fa-files-o"></i> <span>Quản lý công việc</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>

                <ul class="treeview-menu">
                    <?php if($row_acc['quyen'] == 1) { ?>
                    <li class="<?php echo ($a == 'add-collaborate') ? 'active' : ''; ?>">
                        <a href="cong-viec.php?p=collaborate&a=add-collaborate"><i class="fa fa-circle-o"></i> Tạo công việc</a>
                    </li>
                    <?php } ?>
                    <li class="<?php echo ($a == 'list-collaborate') ? 'active' : ''; ?>">
                        <a href="danh-sach-cong-viec.php?p=collaborate&a=list-collaborate"><i class="fa fa-circle-o"></i> Danh sách công việc</a>
                    </li>
                </ul>
            </li>

            <!-- Nhóm -->
            <li class="treeview <?php echo ($p == 'group') ? 'active' : ''; ?>">
                <a href="#">
                    <i class="fa fa-users"></i> <span>Nhóm nhân viên</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>

                <ul class="treeview-menu">
                    <?php if($row_acc['quyen'] == 1) { ?>
                    <li class="<?php echo ($a == 'add-group') ? 'active' : ''; ?>">
                        <a href="tao-nhom.php?p=group&a=add-group"><i class="fa fa-circle-o"></i> Tạo nhóm</a>
                    </li>
                    <?php } ?>
                    <li class="<?php echo ($a == 'list-group') ? 'active' : ''; ?>">
                        <a href="danh-sach-nhom.php?p=group&a=list-group"><i class="fa fa-circle-o"></i> Danh sách nhóm</a>
                    </li>
                </ul>
            </li>

            <!-- Tài khoản -->
            <li class="treeview <?php echo ($p == 'account') ? 'active' : ''; ?>">
                <a href="#">
                    <i class="fa fa-user-plus"></i> <span>Tài khoản</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>

                <ul class="treeview-menu">
                    <?php if($row_acc['quyen'] == 1) { ?>
                    <li class="<?php echo ($a == 'add-account') ? 'active' : ''; ?>">
                        <a href="tao-tai-khoan.php?p=account&a=add-account"><i class="fa fa-circle-o"></i> Tạo tài khoản</a>
                    </li>
                    <?php } ?>
                    <li class="<?php echo ($a == 'list-account') ? 'active' : ''; ?>">
                        <a href="ds-tai-khoan.php?p=account&a=list-account"><i class="fa fa-circle-o"></i> Danh sách tài khoản</a>
                    </li>
                </ul>
            </li>

            <li>
                <a href="thong-tin-tai-khoan.php?p=account&a=profile">
                    <i class="fa fa-user"></i> <span>Thông tin tài khoản</span>
                </a>
            </li>

            <li>
                <a href="doi-mat-khau.php?p=account&a=changepass">
                    <i class="fa fa-key"></i> <span>Đổi mật khẩu</span>
                </a>
            </li>

            <li>
                <a href="dang-xuat.php">
                    <i class="fa fa-sign-out"></i> <span>Đăng xuất</span>
                </a>
            </li>

        </ul>
    </section>
</aside>
