
<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Hostelitemissue extends Admin_Controller {

    // function __construct() {
    //     parent::__construct();

    //     $this->load->library('Customlib');
    //     $this->load->model("classteacher_model");
    //      $this->sch_setting_detail = $this->setting_model->getSetting();
    // }

    public function index(){
         $this->session->set_userdata('top_menu', 'Hostelitemissue');
        $this->session->set_userdata('sub_menu', 'Hostelitemissue/index');
        $hostelitemissue['hostelitemissuelist']= $this->Hostelitemissue_model->hostelitemissuedetails();
        $this->load->view('layout/header');
        $this->load->view('admin/hostelitemissue/create',$hostelitemissue);
        $this->load->view('layout/footer');
    }

    public function create(){
        if ($_SERVER['REQUEST_METHOD']=='POST') {
            // code...
        
     $hostelitemissue_data = array(
                'hostelissue_type' => $this->input->post('hostelissue_type'),
                'hostelissue_to' => $this->input->post('hostelissue_to'),
                'hostelissue_by' => $this->input->post('hostelissue_by'),
                'hostelissue_date' => $this->input->post('hostelissue_date'),
                'hostelreturn_date' => $this->input->post('hostelreturn_date'),
                'hostelitem_category_id' => $this->input->post('hostelitem_category_id'),
                'hostelitem_id' => $this->input->post('hostelitem_id'),
                'hostelquantity' => $this->input->post('hostelquantity'),
                'hostelnote' => $this->input->post('hostelnote')
                
            );

      // print_r($hostelitemstock_data);exit();

        $this->db->insert('hostelitem_issue', $hostelitemissue_data);
        return redirect('admin/hostelitemissue');
        }
    }

    // public function hosteldelete($id=0){

    //     $this->load->model("addhostel_model");
    //     $this->addhostel_model->delete_row($id);
    //     return redirect('admin/addroom');
    // }

   
}