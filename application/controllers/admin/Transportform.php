<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Transportform extends Admin_Controller {

    // function __construct() {
    //     parent::__construct();

    //     $this->load->library('Customlib');
    //     $this->load->model("classteacher_model");
    //      $this->sch_setting_detail = $this->setting_model->getSetting();
    // }

    public function index(){
        // if (!$this->rbac->hasPrivilege('hostel_rooms', 'can_view')) {
        //     access_denied();
        // }
        // $roomtypelist = $this->roomtype_model->get();
        // $data['roomtypelist'] = $roomtypelist;
        // $hostellist = $this->hostel_model->get();
        // $data['hostellist'] = $hostellist;
         $this->session->set_userdata('top_menu', 'Transport');
        $this->session->set_userdata('sub_menu', 'transport/index');
         $transdata['tdata']= $this->Transportform_model->transportdetails();
        // $roomlist['room']= $this->Addhostel_model->roomlisting();
        // $data['hdata'] = $hdata;

        // print_r($hdata);

        // $result['hdata']=$this->Addhostel_model->display_records();
        // $query   = $db->query('select * from add_hostel');
        // $results = $query->getResult();
        $this->load->view('layout/header');
        $this->load->view('admin/transport/create',$transdata);
        $this->load->view('layout/footer');
    }

    public function create(){
        if ($_SERVER['REQUEST_METHOD']=='POST') {
            // code...
        
     $transport_data = array(
                'adm_no' => $this->input->post('adm_no'),
                'name' => $this->input->post('name'),
                'gender' => $this->input->post('gender'),
                'phone_no' => $this->input->post('phone_no'),
                'address' => $this->input->post('address'),
                'father_name' => $this->input->post('father_name'),
                'mother_name' => $this->input->post('mother_name'),
                'transport_fee' => $this->input->post('transport_fee'),
                'class' => $this->input->post('class'),
                'to' => $this->input->post('to'),
                'from' => $this->input->post('from')
            );

     // print_r($transport_data);exit();
        $this->db->insert('transport', $transport_data);
        return redirect('admin/transport');
        }
    }

    public function transportdelete($id=0){

        $this->load->model("transportform_model");
        $this->transportform_model->tdelete($id);
        return redirect('admin/transport');
    }


}