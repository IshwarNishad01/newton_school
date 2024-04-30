<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Hostelitemsupplier extends Admin_Controller {

    // function __construct() {
    //     parent::__construct();

    //     $this->load->helper('url');
    // }

    public function index() {
        // if (!$this->rbac->hasPrivilege('hostelsupplier', 'can_view')) {
        //     access_denied();
        // }
        // $this->session->set_userdata('top_menu', 'hostel Inventory');
        // $this->session->set_userdata('sub_menu', 'hostelitemsupplier/index');
        // $data['title'] = 'Hostel Item Supplier List';
        // $hostelitemsupplier_result = $this->Hostelitemsupplier_model->get();
        // $data['hostelitemsupplierlist'] = $hostelitemsupplier_result;
        // $this->load->view('layout/header', $data);
        // $this->load->view('admin/hostelitemsupplier/create', $data);
        // $this->load->view('layout/footer', $data);

        $this->session->set_userdata('top_menu', 'Hostel Inventory');
        $this->session->set_userdata('sub_menu', 'hostelitemsupplier/index');
        $hdata['hostelitemsupplierlist']= $this->Hostelitemsupplier_model->hostelitemdetails();
        $this->load->view('layout/header');
        $this->load->view('admin/hostelitemsupplier/create',$hdata);
        $this->load->view('layout/footer');

         // $this->load->view('admin/addhostel/create',$hdata);
    }

    // function delete($id) {
    //     if (!$this->rbac->hasPrivilege('hostelsupplier', 'can_delete')) {
    //         access_denied();
    //     }
    //     $data['title'] = 'Item Supplier List';
    //     $this->Hostelitemsupplier_model->remove($id);
    //     redirect('admin/hostelitemsupplier/index');
    // }

    // function create() {
    //     if (!$this->rbac->hasPrivilege('hostelsupplier', 'can_add')) {
    //         access_denied();
    //     }
    //     $data['title'] = 'Add Item supplier';
    //     $hostelitemsupplier_result = $this->Hostelitemsupplier_model->get();
    //     $data['hostelitemsupplierlist'] = $hostelitemsupplier_result;

    //     $this->form_validation->set_rules('hostelitem_supplier', 'Name', 'trim|required|xss_clean');
    //     $this->form_validation->set_rules('hostelphone', 'Phone', 'trim|numeric|xss_clean');
    //     $this->form_validation->set_rules('hostelemail', 'Email', 'trim|xss_clean|valid_email');
      

    //     if ($this->form_validation->run() == FALSE) {
    //         $this->load->view('layout/header', $data);
    //         $this->load->view('admin/hostelitemsupplier/hostelitemsupplierList', $data);
    //         $this->load->view('layout/footer', $data);
    //     } else {


    //         $hdata = array(
    //             'hostelphone' => $this->input->post('hostelphone'),
    //             'hostelcontact_person_phone' => $this->input->post('hostelcontact_person_phone'),
    //             'hostelitem_supplier' => $this->input->post('hostelitem_supplier'),
    //             'hostelemail' => $this->input->post('hostelemail'),
    //             'hosteladdress' => $this->input->post('hosteladdress'),
    //             'hostelcontact_person_name' => $this->input->post('hostelcontact_person_name'),
    //             'hostelcontact_person_email' => $this->input->post('hostelcontact_person_email'),
    //             'hosteldescription' => $this->input->post('hosteldescription'),
    //         );
    //         $this->Hostelitemsupplier_model->add($hdata);
    //         $this->session->set_flashdata('msg', '<div class="alert alert-success text-left">' . $this->lang->line('success_message') . '</div>');
    //         redirect('admin/hostelitemsupplier/index');
    //     }
    // }

     public function create(){
        if ($_SERVER['REQUEST_METHOD']=='POST') {
            // code...
        
     $hostelitem_data = array(
                'hostelitem_supplier' => $this->input->post('hostelitem_supplier'),
                'hostelphone' => $this->input->post('hostelphone'),
                'hostelemail' => $this->input->post('hostelemail'),
                'hostelcontact_person_name' => $this->input->post('hostelcontact_person_name'),
                'hostelcontact_person_phone' => $this->input->post('hostelcontact_person_phone'),
                'hostelcontact_person_email' => $this->input->post('hostelcontact_person_email'),
                'hosteldescription' => $this->input->post('hosteldescription')
            );

     //print_r($hostel_data);
        $this->db->insert('hostelitem_supplier', $hostelitem_data);
        return redirect('admin/hostelitemsupplier');
        }
    }


    function edit($id) {
        if (!$this->rbac->hasPrivilege('supplier', 'can_edit')) {
            access_denied();
        }
        $data['title'] = 'Edit Item Supplier';
        $itemsupplier_result = $this->itemsupplier_model->get();
        $data['itemsupplierlist'] = $itemsupplier_result;
        $data['id'] = $id;
        $store = $this->itemsupplier_model->get($id);
        $data['itemsupplier'] = $store;

        $this->form_validation->set_rules('name', $this->lang->line('name'), 'trim|required|xss_clean');
        $this->form_validation->set_rules('phone', $this->lang->line('phone'), 'trim|numeric|xss_clean');
        $this->form_validation->set_rules('email', $this->lang->line('email'), 'trim|xss_clean|valid_email');
        $this->form_validation->set_rules('contact_person_phone', $this->lang->line('phone'), 'trim|numeric|xss_clean');
        $this->form_validation->set_rules('contact_person_email', $this->lang->line('email'), 'trim|xss_clean|valid_email');

        if ($this->form_validation->run() == FALSE) {
            $this->load->view('layout/header', $data);
            $this->load->view('admin/itemsupplier/itemsupplierEdit', $data);
            $this->load->view('layout/footer', $data);
        } else {


            $data = array(
                'id' => $id,
                'item_supplier' => $this->input->post('name'),
                'phone' => $this->input->post('phone'),
                'contact_person_phone' => $this->input->post('contact_person_phone'),
                'email' => $this->input->post('email'),
                'address' => $this->input->post('address'),
                'contact_person_name' => $this->input->post('contact_person_name'),
                'contact_person_email' => $this->input->post('contact_person_email'),
                'description' => $this->input->post('description'),
            );
            $this->itemsupplier_model->add($data);
            $this->session->set_flashdata('msg', '<div class="alert alert-success">' . $this->lang->line('update_message') . '</div>');
            redirect('admin/itemsupplier/index');
        }
    }

}

?>