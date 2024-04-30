<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Fee_model extends CI_Model
{
     public function __construct()
    {
        parent::__construct();
        $this->current_session = $this->setting_model->getCurrentSession();
    }


    public function academics_fee(){
        $addfee = $this->db->query('select * from add_fee')->result();
        return $addfee;
    }
    // public function feedetails()
    // {
    //     # code...
    // }

    public function transport_fee(){
        $transportfee = $this->db->query('select * from transport_fee')->result();
        return $transportfee;
    }

    public function hostel_fee(){
        $hostelfee = $this->db->query('select * from hostel_fee')->result();
        return $hostelfee;
    }

    public function delete_row($id){
        $this -> db -> where('id', $id);
        $this -> db -> delete('add_fee');
    }

    public function invoicedetails(){
        $query = $this->db->query("SELECT invoice FROM add_fee ORDER BY invoice DESC LIMIT 1")->result();
        return $query;
    }

    public function invoiceview($id){
         $addinvoice = $this->db->query("select * from transport_fee where id='$id'")->result();
        return $addinvoice;
    }
    public function hostel_invoiceview($id){
         $hostelinvoice = $this->db->query("select * from hostel_fee where id='$id'")->result();
        return $hostelinvoice;
    }

    public function adm_details(){
        $addadm = $this->db->query('select * from students')->result();
        return $addadm;
    }

    public function transport_details(){
        $addtransport = $this->db->query('select * from transport')->result();
        return $addtransport;
    }

    public function hostel_details(){
        $hosteladd = $this->db->query('select * from add_hostel')->result();
        return $hosteladd;
    }

    public function single_adm_details($rowId){
        $addadm = $this->db->query('select * from students where id = '.$rowId)->row();
        return $addadm;
    }

    public function single_transport_details($rowId){
        $dtransport = $this->db->query('select * from transport where id = '.$rowId)->row();
        return $dtransport;
    }

    public function single_hostel_details($rowId){
        $dtransport = $this->db->query('select * from add_hostel where id = '.$rowId)->row();
        return $dtransport;
    }

    // public function single_concession_details($rowId){
    //     $concession_data = $this->db->query('select * from concession_fee where id = '.$rowId)->row();
    //     return $concession_data;
    // }

    public function classlisting(){
        $class_data = $this->db->query('select * from classes')->result();
        return $class_data;
    }

}