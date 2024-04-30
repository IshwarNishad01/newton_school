
<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Hostelitemstock extends Admin_Controller {

    // function __construct() {
    //     parent::__construct();

    //     $this->load->library('Customlib');
    //     $this->load->model("classteacher_model");
    //      $this->sch_setting_detail = $this->setting_model->getSetting();
    // }

    public function index(){
         $this->session->set_userdata('top_menu', 'Hostelitemstock');
        $this->session->set_userdata('sub_menu', 'Hostelitemstock/index');
        $hostelitemstock['hostelitemstocklist']= $this->Hostelitemstock_model->hostelitemstockdetails();
        $this->load->view('layout/header');
        $this->load->view('admin/hostelitemstock/create',$hostelitemstock);
        $this->load->view('layout/footer');
    }

    public function create(){
        if ($_SERVER['REQUEST_METHOD']=='POST') {
            // code...
        
     $hostelitemstock_data = array(
                'hostelitem_category_id' => $this->input->post('hostelitem_category_id'),
                'hostelitem_id' => $this->input->post('hostelitem_id'),
                'hostelsupplier_id' => $this->input->post('hostelsupplier_id'),
                'hostelstore_id' => $this->input->post('hostelstore_id'),
                'hostelquantity' => $this->input->post('hostelquantity'),
                'hostelpurchase_price' => $this->input->post('hostelpurchase_price'),
                'hosteldate' => $this->input->post('hosteldate'),
                'hostelstore_id' => $this->input->post('hostelstore_id'),
                'hostelattachment' => $this->input->post('hostelattachment'),
                'hosteldescription' => $this->input->post('hosteldescription'),
                
            );

      // print_r($hostelitemstock_data);exit();

        $this->db->insert('hostelitem_stock', $hostelitemstock_data);
        return redirect('admin/hostelitemstock');
        }
    }

    // public function hosteldelete($id=0){

    //     $this->load->model("addhostel_model");
    //     $this->addhostel_model->delete_row($id);
    //     return redirect('admin/addroom');
    // }

   
}