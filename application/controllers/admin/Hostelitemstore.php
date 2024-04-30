<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Hostelitemstore extends Admin_Controller {

    // function __construct() {
    //     parent::__construct();

    //     $this->load->library('Customlib');
    //     $this->load->model("classteacher_model");
    //      $this->sch_setting_detail = $this->setting_model->getSetting();
    // }

    public function index(){
         $this->session->set_userdata('top_menu', 'Hostelitemstore');
        $this->session->set_userdata('sub_menu', 'Hostelitemstore/index');
        $hostelitemdata['hostelitems']= $this->Hostelitemstore_model->hostelstoredetails();
        // $roomlist['room']= $this->Addhostel_model->roomlisting();
        // $data['hdata'] = $hdata;

        // print_r($hdata);

        // $result['hdata']=$this->Addhostel_model->display_records();
        // $query   = $db->query('select * from add_hostel');
        // $results = $query->getResult();
        $this->load->view('layout/header');
         $this->load->view('admin/hostelitemstore/create',$hostelitemdata);
        $this->load->view('layout/footer');
    }

    public function create(){
        if ($_SERVER['REQUEST_METHOD']=='POST') {
            // code...
        
     $hostelitem_data = array(
                'hostelitem_store' => $this->input->post('hostelitem_store'),
                'hostelcode' => $this->input->post('hostelcode'),
                'hosteldescription' => $this->input->post('hosteldescription')
                
            );

     // print_r($hostelitem_data);exit();

        $this->db->insert('hostelitem_store', $hostelitem_data);
        return redirect('admin/hostelitemstore');
        }
    }

    // public function hosteldelete($id=0){

    //     $this->load->model("addhostel_model");
    //     $this->addhostel_model->delete_row($id);
    //     return redirect('admin/addroom');
    // }

   
}