<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Hostelitemstore_model extends CI_Model
{
     public function __construct()
    {
        parent::__construct();
        $this->current_session = $this->setting_model->getCurrentSession();
    }


     public function hostelstoredetails(){
        $addhitem = $this->db->query('select * from hostelitem_store')->result();
        return $addhitem;
    }

    public function delete_row($id){
        $this-> db-> where('id', $id);
        $this-> db-> delete('add_hostel');
    }


}