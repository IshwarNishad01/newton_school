<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Fee extends Admin_Controller {

    // function __construct() {
    //     parent::__construct();

    //     $this->load->library('Customlib');
    //     $this->load->model("classteacher_model");
    //      $this->sch_setting_detail = $this->setting_model->getSetting();
    // }

    public function index(){
         $this->session->set_userdata('top_menu', 'Fee');
        $this->session->set_userdata('sub_menu', 'fee/index');
         $feesdata['feedata']= $this->Fee_model->academics_fee();
        $this->load->view('layout/header');
         $this->load->view('admin/fee/create',$feesdata);
        $this->load->view('layout/footer');
    }

    public function create(){
        if ($_SERVER['REQUEST_METHOD']=='POST') {
            // code...
        
     $fee_data = array(
                'date' => $this->input->post('date'),
                'invoice' => $this->input->post('invoice'),
                'name' => $this->input->post('name'),
                'phone_no' => $this->input->post('phone_no'),
                'father_name' => $this->input->post('father_name'),
                'class' => $this->input->post('class'),
                'course_fee' => $this->input->post('course_fee'),
                'discount_amt' => $this->input->post('discount_amt'),
                'total_fee' => $this->input->post('total_fee')
            );

     //print_r($hostel_data);
        $this->db->insert('add_fee', $fee_data);
        return redirect('admin/fee');
        }
    }

    public function feedelete($id=0){

        $this->load->model("fee_model");
        $this->fee_model->delete_row($id);
        return redirect('admin/fee');
    }


    public function invoice($id=1){

        $invoice['indata']=$this->Fee_model->invoiceview($id);
        $this->load->view('admin/fee/invoice',$invoice);
    }

    public function concession_fee(){
         $this->session->set_userdata('top_menu', 'Fee');
        $this->session->set_userdata('sub_menu', 'fee/index');
         //$cfeesdata['feedata']= $this->Concessionfee_model->concessionfeedetails();
        $this->load->view('layout/header');
         $this->load->view('admin/fee/concession_fee');
        $this->load->view('layout/footer');
    }

    public function concession_fee_store(){
        if ($_SERVER['REQUEST_METHOD']=='POST') {
            // echo "okkkk";
            // code...
        
     $concession_data = array(
                'concession_class' => $this->input->post('concession_class'),
                'concession_total_fee' => $this->input->post('concession_total_fee'),
                'concession_total_five' => $this->input->post('concession_total_five'),
                'concessionfive_installment_one' => $this->input->post('concessionfive_installment_one'),
                'concessionfive_installment_two' => $this->input->post('concessionfive_installment_two'),
                'concessionfive_installment_three' => $this->input->post('concessionfive_installment_three'),
                'concessionfive_installment_four' => $this->input->post('concessionfive_installment_four'),
                'concessionfive_installment_five' => $this->input->post('concessionfive_installment_five'),
                'concessionfive_installment_six' => $this->input->post('concessionfive_installment_six'),
                'concession_total_ten' => $this->input->post('concession_total_ten'),
                'concessionten_installment_one' => $this->input->post('concessionten_installment_one'),
                'concessionten_installment_two' => $this->input->post('concessionten_installment_two'),
                'concessionten_installment_three' => $this->input->post('concessionten_installment_three'),
                'concessionten_installment_four' => $this->input->post('concessionten_installment_four'),
                'concessionten_installment_five' => $this->input->post('concessionten_installment_five'),
                'concessionten_installment_six' => $this->input->post('concessionten_installment_six'),
                'concession_total_twenty' => $this->input->post('concession_total_twenty'),
                'concessiontwenty_installment_one' => $this->input->post('concessiontwenty_installment_one'),
                'concessiontwenty_installment_two' => $this->input->post('concessiontwenty_installment_two'),
                'concessiontwenty_installment_three' => $this->input->post('concessiontwenty_installment_three'),
                'concessiontwenty_installment_four' => $this->input->post('concessiontwenty_installment_four'),
                'concessiontwenty_installment_five' => $this->input->post('concessiontwenty_installment_five'),
                'concessiontwenty_installment_six' => $this->input->post('concessiontwenty_installment_six'),
                'concession_total_thirty' => $this->input->post('concession_total_thirty'),
                'concessionthirty_installment_one' => $this->input->post('concessionthirty_installment_one'),
                'concessionthirty_installment_two' => $this->input->post('concessionthirty_installment_two'),
                'concessionthirty_installment_three' => $this->input->post('concessionthirty_installment_three'),
                'concessionthirty_installment_four' => $this->input->post('concessionthirty_installment_four'),
                'concessionthirty_installment_five' => $this->input->post('concessionthirty_installment_five'),
                'concessionthirty_installment_six' => $this->input->post('concessionthirty_installment_six'),
                'concession_total_fourty' => $this->input->post('concession_total_fourty'),
                'concessionfourty_installment_one' => $this->input->post('concessionfourty_installment_one'),
                'concessionfourty_installment_two' => $this->input->post('concessionfourty_installment_two'),
                'concessionfourty_installment_three' => $this->input->post('concessionfourty_installment_three'),
                'concessionfourty_installment_four' => $this->input->post('concessionfourty_installment_four'),
                'concessionfourty_installment_five' => $this->input->post('concessionfourty_installment_five'),
                'concessionfourty_installment_six' => $this->input->post('concessionfourty_installment_six'),
                'concession_total_fifty' => $this->input->post('concession_total_fifty'),
                'concessionfifty_installment_one' => $this->input->post('concessionfifty_installment_one'),
                'concessionfifty_installment_two' => $this->input->post('concessionfifty_installment_two'),
                'concessionfifty_installment_three' => $this->input->post('concessionfifty_installment_three'),
                'concessionfifty_installment_four' => $this->input->post('concessionfifty_installment_four'),
                'concessionfifty_installment_five' => $this->input->post('concessionfifty_installment_five'),
                'concessionfifty_installment_six' => $this->input->post('concessionfifty_installment_six'),
                'concession_total_sevenfive' => $this->input->post('concession_total_sevenfive'),
                'concessionsevenfive_installment_one' => $this->input->post('concessionsevenfive_installment_one'),
                'concessionsevenfive_installment_two' => $this->input->post('concessionsevenfive_installment_two'),
                'concessionsevenfive_installment_three' => $this->input->post('concessionsevenfive_installment_three'),
                'concessionsevenfive_installment_four' => $this->input->post('concessionsevenfive_installment_four'),
                'concessionsevenfive_installment_five' => $this->input->post('concessionsevenfive_installment_five'),
                'concessionsevenfive_installment_six' => $this->input->post('concessionsevenfive_installment_six'),
                'concession_total_eightfive' => $this->input->post('concession_total_eightfive'),
                'concessioneightfive_installment_one' => $this->input->post('concessioneightfive_installment_one'),
                'concessioneightfive_installment_two' => $this->input->post('concessioneightfive_installment_two'),
                'concessioneightfive_installment_three' => $this->input->post('concessioneightfive_installment_three'),
                'concessioneightfive_installment_four' => $this->input->post('concessioneightfive_installment_four'),
                'concessioneightfive_installment_five' => $this->input->post('concessioneightfive_installment_five'),
                'concessioneightfive_installment_six' => $this->input->post('concessioneightfive_installment_six'),
                'concession_total_ninety' => $this->input->post('concession_total_ninety'),
                'concessionninety_installment_one' => $this->input->post('concessionninety_installment_one'),
                'concessionninety_installment_two' => $this->input->post('concessionninety_installment_two'),
                'concessionninety_installment_three' => $this->input->post('concessionninety_installment_three'),
                'concessionninety_installment_four' => $this->input->post('concessionninety_installment_four'),
                'concessionninety_installment_five' => $this->input->post('concessionninety_installment_five'),
                'concessionninety_installment_six' => $this->input->post('concessionninety_installment_six'),
                'concession_total_ninefive' => $this->input->post('concession_total_ninefive'),
                'concessionninefive_installment_one' => $this->input->post('concessionninefive_installment_one'),
                'concessionninefive_installment_two' => $this->input->post('concessionninefive_installment_two'),
                'concessionninefive_installment_three' => $this->input->post('concessionninefive_installment_three'),
                'concessionninefive_installment_four' => $this->input->post('concessionninefive_installment_four'),
                'concessionninefive_installment_five' => $this->input->post('concessionninefive_installment_five'),
                'concessionninefive_installment_six' => $this->input->post('concessionninefive_installment_six')
            );

     // print_r($concession_data);exit();
        $this->db->insert('concession_fee', $concession_data);
        return redirect('admin/concessionfee');
        }
    }

    public function concession_fee_list(){
      $this->session->set_userdata('top_menu', 'Fee');
        $this->session->set_userdata('sub_menu', 'fee/index');
         $cfeesdata['feedata']= $this->Concessionfee_model->concessionfeedetails();
        $this->load->view('layout/header');
         $this->load->view('admin/fee/concession_feelist',$cfeesdata);
        $this->load->view('layout/footer');  
    }

    public function concession_fee_view($id=0){
         $this->session->set_userdata('top_menu', 'Fee');
        $this->session->set_userdata('sub_menu', 'fee/index');
         //$cfeesdata['feedata']= $this->Concessionfee_model->concessionfeedetails();
        $this->load->view('layout/header');
        $this->load->view('admin/fee/concession_feeview');
        $this->load->view('layout/footer');
    }

    public function concession_feedelete($id=0){
       $this->load->model("concessionfee_model");
        $this->Concessionfee_model->concessionfee_delete($id);
        return redirect('admin/concessionfeelist'); 
    }

    public function academics_create(){
        $data['feedata'] = $this->Fee_model->academics_fee();
        $this->load->view('layout/header');
        $this->load->view('admin/fee/academics_collect_fee',$data);
        $this->load->view('layout/footer');
    }
    public function transportfee_create(){
            $data['transportfeedata'] = $this->Fee_model->transport_fee();
            $this->load->view('layout/header');
            $this->load->view('admin/fee/transport_collect_fee',$data);
            $this->load->view('layout/footer');
    }

    public function hostelfee_create(){
            $data['hostelfeedata'] = $this->Fee_model->hostel_fee();
            $this->load->view('layout/header');
            $this->load->view('admin/fee/hostel_collect_fee',$data);
            $this->load->view('layout/footer');
    }

    public function allstudent_details(){
        $stuadm = $this->input->post('stuadm');
        $result = $this->Fee_model->single_adm_details($stuadm);
        echo json_encode(array('data' => $result));
    }

    public function alltransport_details(){
        $admstu = $this->input->post('admstu');
        $result = $this->Fee_model->single_transport_details($admstu);
        echo json_encode(array('data' => $result));
    }

    public function allhostel_details(){
        $admstu = $this->input->post('admstu');
        $result = $this->Fee_model->single_hostel_details($admstu);
        echo json_encode(array('data' => $result));
    }

    public function transportfee_store(){
         if ($_SERVER['REQUEST_METHOD']=='POST') {
            // code...
        
     $transportfee_data = array(
                'invoice' => $this->input->post('invoice'),
                'date' => $this->input->post('date'),
                'admission_no' => $this->input->post('admission_no'),
                'name' => $this->input->post('name'),
                'class' => $this->input->post('class'),
                'gender' => $this->input->post('gender'),
                'phone_number' => $this->input->post('phone_number'),
                'father_name' => $this->input->post('father_name'),
                'mother_name' => $this->input->post('mother_name'),
                'address' => $this->input->post('address'),
                'transport_from' => $this->input->post('transport_from'),
                'transport_to' => $this->input->post('transport_to'),
                'transport_fee' => $this->input->post('transport_fee'),
                'paid_fee' => $this->input->post('paid_fee'),
                'remaining_fee' => $this->input->post('remaining_fee'),
                
            );

     // print_r($transportfee_data);exit();
        $this->db->insert('transport_fee', $transportfee_data);
        return redirect('admin/fee/transport-fee-create');
        }
    }

    public function hostelfee_store(){
         if ($_SERVER['REQUEST_METHOD']=='POST') {
            // code...
        
     $hostelfee_data = array(
                'hinvoice' => $this->input->post('hinvoice'),
                'date' => $this->input->post('date'),
                'admission_no' => $this->input->post('admission_no'),
                'hostel_studentname' => $this->input->post('hostel_studentname'),
                'class' => $this->input->post('class'),
                'gender' => $this->input->post('gender'),
                'phone_number' => $this->input->post('phone_number'),
                'father_name' => $this->input->post('father_name'),
                'mother_name' => $this->input->post('mother_name'),
                'hostel_name' => $this->input->post('hostel_name'),
                'room_type' => $this->input->post('room_type'),
                'room_number' => $this->input->post('room_number'),
                'hostel_fee' => $this->input->post('hostel_fee'),
                'paid_fee' => $this->input->post('paid_fee'),
                'remaining_fee' => $this->input->post('remaining_fee'),
                
            );

        // print_r($hostelfee_data);exit();
        $this->db->insert('hostel_fee', $hostelfee_data);
        return redirect('admin/fee/hostel-fee-create');
        }
    }

    public function hostelfee_invoice(){
        echo "okay"; exit();
        $hinvoice['hostelfee_data']=$this->Fee_model->hostel_invoiceview($id);
        $this->load->view('admin/fee/hostel_invoice',$hinvoice);
    }

    public function hostelinvoice(){
        echo "ok";
    }

    // public function allconcession_details(){
    //     // echo "ok";exit();
    //     $stuadm = $this->input->post('stuadm');
    //     $res = $this->Fee_model->single_concession_details($stuadm);
    //     echo json_encode(array('data1' => $res));
    // }
}