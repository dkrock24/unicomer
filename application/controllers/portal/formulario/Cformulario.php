<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Cformulario extends CI_Controller {

	function __construct()
	{
		parent::__construct();		
		$this->load->helper('url');		
		$this->load->database('default');	
		$this->load->model('backend/sucursales/sucursales_model');			
	}

	public function index()
	{	
		$this->load->view('portal/formulario/Vformulario.php');
	}


	
}