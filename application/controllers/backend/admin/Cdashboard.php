<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Cdashboard extends CI_Controller {

	function __construct()
	{
		parent::__construct();		
		$this->load->helper('url');		
		$this->load->database('default');	
		//$this->load->model('backend/admin/dashboard_model');			
	}

	public function index()
	{		
		//$data['departamentos'] =  $this->dashboard_model->getDepartamentos();
		$this->load->view('backend/admin/Vdashboard.php');
	}
}
