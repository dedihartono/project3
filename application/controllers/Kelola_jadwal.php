<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kelola_jadwal extends CI_Controller {

  public function __construct()
  {
    parent::__construct();
      $this->load->helper(array('url'));
      $this->load->model(array('m_pengguna', 'm_jadwal'));
			$this->m_pengguna->check_session();

  }

  public function index()
  {
    $data['panel_title'] = 'Tambah Mata Kuliah';
    $data['konten'] = 'jadwal/v_tambah_mk';
    $this->load->view('template_admin', $data);
  }

  public function tampil_mk()
  {
    $data['panel_title'] = 'Tampil Mata Kuliah';
    $data['db'] = $this->m_jadwal->lihat_data_mk();
    $data['konten'] = 'jadwal/v_tampil_mk';
    $this->load->view('template_admin', $data);
  }
  public function tambah_mk()
  {
    $data['panel_title'] = 'Tambah Mata Kuliah';
    $data['semester'] = $this->m_jadwal->lihat_data_semester();
    $data['konten'] = 'jadwal/v_tambah_mk';
    $this->load->view('template_admin', $data);
  }

  public function tambah_mk_proses()
  {
    $data = array(
      'matakuliah'  => $this->input->post('matakuliah'),
      'sks'         => $this->input->post('sks'),
      'id_semester' => $this->input->post('id_semester'),
    );
    $this->m_jadwal->tambah_data_mk($data);
		$alert	= "<script>alert('Data berhasil disimpan')</script>";
		$this->session->set_flashdata("alert", $alert);
		redirect('kelola_jadwal/tampil_mk');
  }

  public function edit_mk($id)
  {
    $data['panel_title'] = 'Tambah Mata Kuliah';
    $data['db'] = $this->m_jadwal->lihat_data_by($id);
    $data['konten'] = 'jadwal/v_edit_mk';
    $this->load->view('template_admin', $data);
  }

  public function edit_mk_proses($id)
  {
    $id = $this->uri->segment('3');

    $data = array(
      'matakuliah'  => $this->input->post('matakuliah'),
      'sks'         => $this->input->post('sks'),
      'id_semester' => $this->input->post('id_semester'),
    );

    $this->m_jadwal->edit_data_mk($data, $id);
    $alert	= "<script>alert('Data berhasil diedit')</script>";
    $this->session->set_flashdata("alert", $alert);
    redirect('kelola_jadwal/tampil_mk');
  }

  public function hapus_mk($id)
  {
    $id = $this->uri->segment('3');
    $this->m_jadwal->hapus_data_mk($id);
    $alert	= "<script>alert('Data berhasil dihapus')</script>";
    $this->session->set_flashdata("alert", $alert);
    redirect('kelola_jadwal/tampil_mk');
  }

}
