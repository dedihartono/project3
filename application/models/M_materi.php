<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_materi extends CI_Model {

  public function __construct()
  {
    parent::__construct();

      $this->load->database();
  }

  public function tambah_data_materi($data)
  {
    $this->db->insert('tb_materi_kuliah', $data);
  }

}
