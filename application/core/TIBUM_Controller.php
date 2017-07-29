<?php 
	if(!defined('BASEPATH'))
		exit('No direc script access allowed');
	/**
	* 
	*/
	class TIBUM_Controller extends CI_Controller
	{
		
		function __construct()
		{
			parent::__construct();
			$this->load->model('phanquyen');
			$parent=$this->phanquyen->getrole($this->session->userdata('id_nhom'));
			if($this->uri->segment(2)==NULL)
				$url = $this->uri->sement(1);
			else
				$url = $this->uri->segment(1)."/".$this->uri->segment(2);
			$urllist = array();
			foreach($parent as $u)
			{
				$accept = explode("|", $u->accept_url);
			}
		}
	}
?>