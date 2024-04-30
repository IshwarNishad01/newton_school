<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Hostelitem extends Admin_Controller {

    // function __construct() {
    //     parent::__construct();

    //     $this->load->library('Customlib');
    //     $this->load->model("classteacher_model");
    //      $this->sch_setting_detail = $this->setting_model->getSetting();
    // }

    public function index(){
         $this->session->set_userdata('top_menu', 'Hostelitem');
        $this->session->set_userdata('sub_menu', 'Hostelitem/index');
        $hostelitem['hostelitemlist']= $this->Hostelitem_model->hostelitemdetails();
        $this->load->view('layout/header');
         $this->load->view('admin/hostelitem/create',$hostelitem);
        $this->load->view('layout/footer');
    }

    public function create(){
        if ($_SERVER['REQUEST_METHOD']=='POST') {
            // code...
        
     $hostelitem_data = array(
                'hostelitemname' => $this->input->post('hostelitemname'),
                'hostelitem_category_id' => $this->input->post('hostelitem_category_id'),
                'hostelunit' => $this->input->post('hostelunit'),
                'hosteldescription' => $this->input->post('hosteldescription')
                
            );

     // print_r($hostelitem_data);exit();

        $this->db->insert('hostelitemdata', $hostelitem_data);
        return redirect('admin/hostelitemcategory');
        }
    }

    // public function hosteldelete($id=0){

    //     $this->load->model("addhostel_model");
    //     $this->addhostel_model->delete_row($id);
    //     return redirect('admin/addroom');
    // }

   
}