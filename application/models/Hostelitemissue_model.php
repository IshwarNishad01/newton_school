<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Hostelitemissue_model extends CI_Model
{
     public function __construct()
    {
        parent::__construct();
        $this->current_session = $this->setting_model->getCurrentSession();
    }


     public function hostelitemissuedetails(){
        $additemissue = $this->db->query('select * from hostelitem_issue')->result();
        return $additemissue;
    }

    public function delete_row($id){
        $this-> db-> where('id', $id);
        $this-> db-> delete('add_hostel');
    }

    public function rolelist(){
        $role = $this->db->query('select * from roles')->result();
        return $role;
    }

    public function stafflist(){
        $staff = $this->db->query('select * from staff')->result();
        return $staff;
    }

    public function supplierlist(){
        $supplier = $this->db->query('select * from hostelitem_supplier')->result();
        return $supplier;
    }

    public function storelist(){
        $store = $this->db->query('select * from hostelitem_store')->result();
        return $store;
    }

    public function itemcategorylist(){
        $itemdata = $this->db->query('select * from hostelitem_category')->result();
        return $itemdata;
    }

    public function itemlist(){
        $item = $this->db->query('select * from hostelitemdata')->result();
        return $item;
    }


}