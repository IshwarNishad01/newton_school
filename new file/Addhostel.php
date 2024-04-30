<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Addhostel extends Admin_Controller {

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
         $this->session->set_userdata('top_menu', 'Hostel');
        $this->session->set_userdata('sub_menu', 'addhostel/index');
        $hdata['hdata']= $this->Addhostel_model->hosteldetails();
        // $roomlist['room']= $this->Addhostel_model->roomlisting();
        // $data['hdata'] = $hdata;

        // print_r($hdata);

        // $result['hdata']=$this->Addhostel_model->display_records();
        // $query   = $db->query('select * from add_hostel');
        // $results = $query->getResult();
        $this->load->view('layout/header');
        $this->load->view('admin/addhostel/create',$hdata);
        $this->load->view('layout/footer');
    }

    public function create(){
        if ($_SERVER['REQUEST_METHOD']=='POST') {
            // code...
        
     $hostel_data = array(
                'hostel_invoice' => $this->input->post('hostel_invoice'),
                'name' => $this->input->post('name'),
                'father_name' => $this->input->post('father_name'),
                'phone_no' => $this->input->post('phone_no'),
                'hostel_name' => $this->input->post('hostel_name'),
                'date' => $this->input->post('date'),
                'hostel_fee' => $this->input->post('hostel_fee'),
                'paid_fee' => $this->input->post('paid_fee'),
                'remaining_fee' => $this->input->post('remaining_fee'),
                'class' => $this->input->post('class'),
                'room_no' => $this->input->post('room_no'),
                'room_type' => $this->input->post('room_type')
            );

     //print_r($hostel_data);
        $this->db->insert('add_hostel', $hostel_data);
        return redirect('admin/addroom');
        }
    }

    public function hosteldelete($id=0){

        $this->load->model("addhostel_model");
        $this->addhostel_model->delete_row($id);
        return redirect('admin/addroom');
    }

    // public function hostel_invoice($id=1){

    //     echo "ok";

    //     // $hostelinvoice['hosteldata']=$this->Addhostel_model->invoiceview($id);
    //     // $this->load->view('admin/addhostel/invoice',$hostelinvoice);
    // }

    public function hostel_invoice($id=1){

        $invoice['hosteldata']=$this->Addhostel_model->invoiceview($id);
        $this->load->view('admin/addhostel/invoice',$invoice);
    }


}