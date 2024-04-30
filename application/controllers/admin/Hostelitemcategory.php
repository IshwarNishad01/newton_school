<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Hostelitemcategory extends Admin_Controller {

    // function __construct() {
    //     parent::__construct();

    //     $this->load->library('Customlib');
    //     $this->load->model("classteacher_model");
    //      $this->sch_setting_detail = $this->setting_model->getSetting();
    // }

    public function index(){
         $this->session->set_userdata('top_menu', 'Hostelitemcategory');
        $this->session->set_userdata('sub_menu', 'Hostelitemcategory/index');
        $hostelitemcategory['hostelitemcategorylist']= $this->Hostelitemcategory_model->hostelitemcategorydetails();
        $this->load->view('layout/header');
         $this->load->view('admin/hostelitemcategory/create',$hostelitemcategory);
        $this->load->view('layout/footer');
    }

    public function create(){
        if ($_SERVER['REQUEST_METHOD']=='POST') {
            // code...
        
     $hostelitemcategory_data = array(
                'hostelitem_category' => $this->input->post('hostelitem_category'),
                'hosteldescription' => $this->input->post('hosteldescription')
                
            );

     // print_r($hostelitem_data);exit();

        $this->db->insert('hostelitem_category', $hostelitemcategory_data);
        return redirect('admin/hostelitemcategory');
        }
    }

    // public function hosteldelete($id=0){

    //     $this->load->model("addhostel_model");
    //     $this->addhostel_model->delete_row($id);
    //     return redirect('admin/addroom');
    // }

   
}