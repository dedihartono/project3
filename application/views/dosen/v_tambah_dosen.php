<div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
          <div class="x_title">
              <h2><?php echo $panel_title; ?></h2>

              <div class="clearfix"></div>
          </div>
          <div class="x_content">
              <br>
              <form class="form-horizontal form-label-left" method="post" action="<?php echo base_url();?>kelola_dosen/tambah_dosen_proses">
                  <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12">NIP</label>
                      <div class="col-md-9 col-sm-9 col-xs-12">
                          <input class="form-control" name="nip" placeholder="NIP" type="text">
                      </div>
                  </div>
                  <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12">Nama Dosen</label>
                      <div class="col-md-9 col-sm-9 col-xs-12">
                          <input class="form-control" name="nama_dosen" placeholder="Nama Dosen" type="text">
                      </div>
                  </div>
                  <div class="form-group">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12">ID Pengguna</label>
                      <div class="col-md-9 col-sm-9 col-xs-12">
                          <input class="form-control" name="id_pengguna" placeholder="ID Pengguna" type="text">
                      </div>
                  </div>
                  <div class="ln_solid"></div>
                  <div class="form-group">
                      <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
                        <button type="submit" class="btn btn-success">Simpan</button>
                        <button type="reset" class="btn btn-default">Cancel</button>
                      </div>
                  </div>

              </form>
          </div>
      </div>
      </div>
</div>
