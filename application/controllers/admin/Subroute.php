<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Subroute extends Admin_Controller {

    // function __construct() {
    //     parent::__construct();

    //     $this->load->library('Customlib');
    //     $this->load->model("classteacher_model");
    //      $this->sch_setting_detail = $this->setting_model->getSetting();
    // }

    public function index(){
       
         $this->session->set_userdata('top_menu', 'Transport');
        $this->session->set_userdata('sub_menu', 'subroute/index');
         $subroute['sdata']= $this->Subroute_model->subroutedetails();
        $this->load->view('layout/header');
        $this->load->view('admin/subroute/create',$subroute);
        $this->load->view('layout/footer');
    }

    public function create(){
        if ($_SERVER['REQUEST_METHOD']=='POST') {
            // code...
        
     $subroute_data = array(
                'subroute_name' => $this->input->post('subroute_name'),
            );

     //print_r($hostel_data);
        $this->db->insert('subroute', $subroute_data);
        return redirect('admin/subroute');
        }
    }


}