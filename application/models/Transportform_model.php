<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Transportform_model extends CI_Model
{
     public function __construct()
    {
        parent::__construct();
        $this->current_session = $this->setting_model->getCurrentSession();
    }


    public function vehiclelisting(){
        $vadd = $this->db->query('select * from vehicles')->result();
        return $vadd;
    }

     public function routeto(){
        $routeadd = $this->db->query('select * from  subroute')->result();
        return $routeadd;
    }

    public function routefrom(){
        $froute = $this->db->query('select * from  transport_route')->result();
        return $froute;
    }

    public function transportdetails(){
        $transportdata = $this->db->query('select * from transport')->result();
        return $transportdata;
    }

     public function tdelete($id){
        $this -> db -> where('id', $id);
        $this -> db -> delete('transport');
    }

}