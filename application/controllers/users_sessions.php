<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Users_sessions extends Ci_Controller {
/***** sistema de login *****/
	public function index() {
		if($this->session->userdata('email')){ redirect('/', 'refresh'); }
		if(!$_POST){ redirect('/', 'refresh'); }
		$this->load->model('General_model');
		$msg_login['email'] = $this->input->post('email');
		$msg_login['password'] = $this->input->post('password');
		$param = array(
			'table' => 'users',
			'where' => array('email' => $msg_login['email'])
		);
		$existe = $this->General_model->view_item($param);
		if($existe) {
			if($existe['password']==md5($this->input->post('password'))) {
				$newdata = array(
                   'email' => $existe['email'],
                   'nombre' => $existe['nombre'],
                   'nivel' => $existe['nivel']
               	);
				$this->session->set_userdata($newdata);
				$valores = array(
					'last_login' => date("Y-m-d H:i:s")
					);
				$param = array(
						'table' => 'users',
						'id' => 'id',
						'where' => $existe['id'],
						'valores' => $valores
						);
				$insert = $this->General_model->edit_item($param);
				redirect('/', 'refresh');
			} else {
				$msg_login['respuesta'] = 'Password incorrecto!';
				$this->load->view('login_form', $msg_login);
			}

		} else {
			$msg_login['respuesta'] = 'E-mail incorrecto!';
			$this->load->view('login_form', $msg_login);
		}
	}

	public function kill_session() 
	{
		$datos_secion = array('email' => '', 'nombre' => '', 'nivel' => '');
		$this->session->unset_userdata($datos_secion);
		redirect('/', 'refresh');
	}
}