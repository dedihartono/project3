<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kelola_dosen extends CI_Controller {

  public function __construct()
  {
    parent::__construct();
      $this->load->helper(array('url'));
      $this->load->model(array('m_pengguna', 'm_dosen'));
			$this->m_pengguna->check_session();

  }

  public function tampil_dosen()
  {
    $data['panel_title'] = 'Tampil Dosen';
    $data['db'] = $this->m_dosen->lihat_data_dosen();
    $data['konten'] = 'dosen/v_tampil_dosen';
    $this->load->view('template_admin', $data);
  }

  public function tambah_dosen()
  {
    $data['panel_title'] = 'Tambah Dosen';
    $data['konten'] = 'dosen/v_tambah_dosen';
    $this->load->view('template_admin', $data);
  }

  public function tambah_dosen_proses()
  {
    $data = array(
      'nip'         => $this->input->post('nip'),
      'nama_dosen'  => $this->input->post('nama_dosen'),
      'id_pengguna' => $this->input->post('id_pengguna'),
    );

    $this->m_dosen->tambah_data_dosen($data);
		$alert	= "<script>alert('Data berhasil disimpan')</script>";
		$this->session->set_flashdata("alert", $alert);
		redirect('kelola_dosen/tampil_dosen');
  }

  public function edit_dosen($id)
  {
    $data['panel_title'] = 'Tambah Dosen';
    $data['db'] = $this->m_jadwal->lihat_data_by($id);
    $data['konten'] = 'jadwal/v_edit_dosen';
    $this->load->view('template_admin', $data);
  }

  public function edit_dosen_proses($id)
  {
    $id = $this->uri->segment('3');

    $data = array(
      'matakuliah'  => $this->input->post('matakuliah'),
      'sks'         => $this->input->post('sks'),
    );

    $this->m_jadwal->edit_data_dosen($data, $id);
    $alert	= "<script>alert('Data berhasil diedit')</script>";
    $this->session->set_flashdata("alert", $alert);
    redirect('kelola_jadwal/tampil_dosen');
  }

  public function hapus_dosen($id)
  {
    $id = $this->uri->segment('3');
    $this->m_jadwal->hapus_data_dosen($id);
    $alert	= "<script>alert('Data berhasil dihapus')</script>";
    $this->session->set_flashdata("alert", $alert);
    redirect('kelola_jadwal/tampil_dosen');
  }

}
