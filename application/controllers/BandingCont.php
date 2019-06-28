<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class BandingCont extends CI_Controller {

    public function __construct()
    {
		parent::__construct();
		//$this->load->helper('date','url','form');
		//$this->load->library('form_validation');
		$this->load->model('BandingModel');
    }

    public function index()
    {

    }





    public function tes()
    {
      $this->load->helper('text');
      $this->load->model('BandingModel');
      $total['titik'] = $this->BandingModel->gettotal();
      $total['jarak'] = $this->BandingModel->getJarak();
      // $total['banding'] = $this->BandingModel->totolBaris();
      $this->load->view('tes',$total);


    }




}
?>
