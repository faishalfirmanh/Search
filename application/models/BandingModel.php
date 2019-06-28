<?php
/**
 *
 */
class BandingModel extends CI_Model
{

  function __construct()
  {
  $this->load->database();
  }



  

  public function gettotal()
  {
    $query=$this->db->query("SELECT nilai FROM koordinattitik WHERE kode = 'finish'");
    return $query->result();
  }

  public function getJarak()
  {
    $query=$this->db->query("SELECT jarak FROM banding");
    return $query->result();
  }

  public function totolBaris()
  {
    $query = $this->db->query("SELECT COUNT(no) AS no FROM banding");
    return $query->result();
  }


}

 ?>
