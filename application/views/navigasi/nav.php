<!-- menu prile quick info -->
<div class="profile">
    <div class="profile_pic">
        <img src="<?php echo base_url();?>assets/images/uploads/<?php echo $this->session->userdata('gambar'); ?>" alt="..." class="img-circle profile_img">
    </div>
    <div class="profile_info">
        <span>Selamat Datang !,</span>
        <h2><?php echo $this->session->userdata('nama_lengkap'); ?></h2>
    </div>
</div>
<!-- /menu prile quick info -->
<br />
<div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
    <div class="menu_section">
        <h3><?php echo $this->session->userdata('jabatan'); ?></h3>
        <br>

        <ul class="nav side-menu">
            <li><a><i class="fa fa-home"></i> Home <span class="fa fa-chevron-down"></span></a>
                <ul class="nav child_menu" style="display: none">
                    <li><a href="index.html">Dashboard</a>
                    </li>
                </ul>
            </li>
            <li>
              <a href="<?php echo base_url();?>kelola_jadwal/tampil_mk"><i class="fa fa-home"></i> Kelola Matakuliah</a>
            </li>
            <li>
              <a href="<?php echo base_url();?>kelola_dosen/tampil_dosen"><i class="fa fa-users"></i> Kelola Dosen</a>
            </li>
        </ul>
    </div>

</div>
