<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Admin extends Ci_Controller {
	public function index() {
		if($this->session->userdata('email')) {
			$data['title'] = 'Inicio';
			$this->load->library('products_librerie');
			$data['prod_1'] = $this->products_librerie->product_form('1');
			$data['prod_2'] = $this->products_librerie->product_form('2');
			$data['prod_3'] = $this->products_librerie->product_form('3');
			$data['prod_4'] = $this->products_librerie->product_form('4');
			$data['prod_5'] = $this->products_librerie->product_form('5');
			$data['prod_6'] = $this->products_librerie->product_form('6');

			$this->load->view('include/header', $data);
			$this->load->view('home');
			$this->load->view('include/footer');
		} else {
			$this->load->view('login_form');
		}

	}
}