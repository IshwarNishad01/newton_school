<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Hostelitemcategory_model extends CI_Model
{
     public function __construct()
    {
        parent::__construct();
        $this->current_session = $this->setting_model->getCurrentSession();
    }


     public function hostelitemcategorydetails(){
        $addhitemcategory = $this->db->query('select * from hostelitem_category')->result();
        return $addhitemcategory;
    }

    public function delete_row($id){
        $this-> db-> where('id', $id);
        $this-> db-> delete('add_hostel');
    }


}