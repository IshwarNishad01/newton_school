<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Subroute_model extends CI_Model
{
     public function __construct()
    {
        parent::__construct();
        $this->current_session = $this->setting_model->getCurrentSession();
    }


    public function subroutedetails(){
        $subroutedata = $this->db->query('select * from subroute')->result();
        return $subroutedata;
    }

}