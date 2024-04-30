<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Addhostel_model extends CI_Model
{
     public function __construct()
    {
        parent::__construct();
        $this->current_session = $this->setting_model->getCurrentSession();
    }


    public function hostellist(){
        $hadd = $this->db->query('select * from hostel')->result();
        return $hadd;
    }

     public function hosteldetails(){
        $add = $this->db->query('select * from add_hostel')->result();
        return $add;
    }

    public function roomlisting(){
        $rlist = $this->db->query('select * from hostel_rooms')->result();
        return $rlist;
    }
    public function roomtypelist(){
        $roomtype = $this->db->query('select * from room_types')->result();
        return $roomtype;
    }

    public function delete_row($id){
        $this-> db-> where('id', $id);
        $this-> db-> delete('add_hostel');
    }

    public function hinvoicedetails(){
        $query = $this->db->query("SELECT hostel_invoice FROM add_hostel ORDER BY hostel_invoice DESC LIMIT 1")->result();
        return $query;
    }

    public function invoiceview($id){
        $hostelinvoice = $this->db->query("select * from add_hostel where id='$id'")->result();
        return $hostelinvoice;
    }

}