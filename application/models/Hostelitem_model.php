<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Hostelitem_model extends CI_Model
{
     public function __construct()
    {
        parent::__construct();
        $this->current_session = $this->setting_model->getCurrentSession();
    }


     public function hostelitemdetails(){
        $addhitem = $this->db->query('select * from hostelitemdata join hostelitem_stock on hostelitemdata.id=hostelitem_stock.hostelitem_id')->result();
        return $addhitem;
    }

    public function delete_row($id){
        $this-> db-> where('id', $id);
        $this-> db-> delete('add_hostel');
    }

    public function itemcategorylist(){
        $category = $this->db->query('select * from hostelitem_category')->result();
        return $category;
    }


}