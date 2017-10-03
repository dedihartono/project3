<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_dosen extends CI_Model {

  public function __construct()
  {
    parent::__construct();

    $this->load->database();
  }

  //kelola Dosen
  public function lihat_data_dosen() {
    $query = $this->db->get('tb_dosen');
    return $query->result();
  }

  public function tambah_data_dosen($data)
  {
    $this->db->insert('tb_dosen', $data);
  }

  public function lihat_data_by($id)
  {
    $this->db->where('id_dosen', $id);
    $query = $this->db->get('tb_dosen');

    return $query->row();
  }

  public function edit_data_dosen($data, $id)
  {
    $this->db->where('id_dosen', $id);
    $this->db->update('tb_dosen', $data);
  }

  public function hapus_data_dosen($id)
  {
    $this->db->where('id_dosen', $id);
    $this->db->delete('tb_dosen');
  }

}
