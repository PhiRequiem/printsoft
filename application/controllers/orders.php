<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Orders extends Ci_Controller {
	public function index() {
		// if($this->session->userdata('email')) {
		// 	$data['title'] = 'Inicio';
		// 	$this->load->view('include/header', $data);
		// 	$this->load->view('home');
		// 	$this->load->view('include/footer');
		// } else {
		// 	$this->load->view('login_form');
		// }
		echo 'hello world!! </br><pre>';
		$post = array_filter($this->input->post());
		var_dump($post);
		echo '<br>';
		// echo count($post, COUNT_RECURSIVE);
		echo '</pre>';
		// foreach($post as $value) {
		// 	echo $value.'<br>';
		// }

	}
}