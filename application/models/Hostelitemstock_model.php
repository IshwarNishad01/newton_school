<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Hostelitemstock_model extends CI_Model
{
     public function __construct()
    {
        parent::__construct();
        $this->current_session = $this->setting_model->getCurrentSession();
    }


     public function hostelitemstockdetails(){
        $additemstock = $this->db->query('select * from hostelitem_stock')->result();
        return $additemstock;
    }

    public function delete_row($id){
        $this-> db-> where('id', $id);
        $this-> db-> delete('add_hostel');
    }

    public function itemcategorylist(){
        $category = $this->db->query('select * from hostelitem_category')->result();
        return $category;
    }

    public function itemlist(){
        $item = $this->db->query('select * from hostelitemdata')->result();
        return $item;
    }

    public function supplierlist(){
        $supplier = $this->db->query('select * from hostelitem_supplier')->result();
        return $supplier;
    }

    public function storelist(){
        $store = $this->db->query('select * from hostelitem_store')->result();
        return $store;
    }


}