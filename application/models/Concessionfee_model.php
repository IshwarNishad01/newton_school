<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Concessionfee_model extends CI_Model
{
    //  public function __construct()
    // {
    //     parent::__construct();
    //     $this->current_session = $this->setting_model->getCurrentSession();
    // }


    public function concessionfeedetails(){
        $addfee = $this->db->query('select * from concession_fee')->result();
        return $addfee;
    }

    public function delete_row($id){
        $this -> db -> where('id', $id);
        $this -> db -> delete('add_fee');
    }

    public function concession_view($id=0){
        $id=$_POST['id'];
        $vlist= $this->db->query("select * from concession_fee where id='$id'")->result();
        return $vlist;
    }

    public function concessionfee_delete($id){
        $this -> db -> where('id', $id);
        $this -> db -> delete('concession_fee');
    }

}