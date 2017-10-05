<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kelola_materi extends CI_Controller{

  public function __construct()
  {
    parent::__construct();
    //load model and add alias
		//check session logged_in
			$this->load->model(array('m_pengguna', 'm_materi'));
			$this->m_pengguna->check_session();
  }

  public function tambah_materi()
  {
    $data['panel_title'] = 'Tambah Materi Kuliah';
    $data['konten'] = 'materikuliah/v_tambah_materi';
    $data['error'] = '';
    $data['notif'] = '';
    $this->load->view('template_admin', $data);
  }

  public function tambah_materi_proses()
  {
       $config['upload_path']          = './assets/images/uploads/';
       $config['allowed_types']        = 'pptx|ppt|pdf';
       $config['max_size']             = 10000;

       $this->load->library('upload', $config);

       if ( ! $this->upload->do_upload('file'))
       {
         $data['panel_title'] = 'Tambah Materi Kuliah';
         $data['konten'] = 'materikuliah/v_tambah_materi';
         $data['error'] = $this->upload->display_errors();
         $data['notif'] = 'alert';
         $this->load->view('template_admin', $data);
       }
       else
       {
         $data = array(
           'id_matakuliah'  =>  $this->input->post('id_matakuliah'),
           'id_dosen'       =>  $this->input->post('id_dosen'),
           'dokumen'        =>  $this->upload->data('file_name'),
         );

         $this->m_materi->tambah_data_materi($data);

         $alert	= "<script>alert('Data berhasil disimpan')</script>";
         $this->session->set_flashdata("alert", $alert);
         redirect('Kelola_materi/tambah_materi');
       }
  }

}
