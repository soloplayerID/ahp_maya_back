<?php

defined('BASEPATH') OR exit('No direct script access allowed');

// This can be removed if you use __autoload() in config.php OR use Modular Extensions
/** @noinspection PhpIncludeInspection */
require APPPATH . '/libraries/REST_Controller.php';

// use namespace
use Restserver\Libraries\REST_Controller;

class Api extends REST_Controller {

    function __construct()
    {
        parent::__construct();
        $this->load->model("Guru_Model");
        $this->load->model("Kriteria_Model");
    }

    public function index_get()
    {
        $this->response([
                'status' => true,
                'data' => 'API Connected'
        ], REST_Controller::HTTP_OK);
    }

    // ======= Murid ==========
    public function getDataMurid_get()
    {
        $data = $this->Guru_Model->getAll();
        $this->response([
            'status' => true,
            'data' => $data
        ], REST_Controller::HTTP_OK);
    }

    public function addMurid_post()
    {
        $post = $this->input->post();
        $data=array(
            'nip' => $post["nis"],
            'nama' => $post["nama"],
            'alamat' => $post["alamat"],
            'jk' => $post["jk"],
        );
        $cek_nis = $this->Guru_model->check_nis($post["nis"]);
        if($cek_nis > 0) {
            $this->response([
                'status' => false,
                'message' => 'nomer NIS sudah digunakan'
        ], REST_Controller::HTTP_OK);
        }else{
            $query = $this->Guru_model->create($data);
            if($query) {
                $this->response([
                    'status' => true,
                    'data' => 'berhasil'
                ], REST_Controller::HTTP_OK);
            }else{
                $this->response([
                    'status' => false,
                    'message' => 'error'
                ], REST_Controller::HTTP_OK);
            }
        }
    }

    public function deleteMurid_post($nis = null)
    {
        $data = $this->Guru_Model->delete($nis);
        if ($data) {
            $this->response([
                'status' => true,
                'data' => 'berhasil'
            ], REST_Controller::HTTP_OK);
        }else{
            $this->response([
                'status' => false,
                'message' => 'error'
            ], REST_Controller::HTTP_OK);
        }
    }
    //===== END MURID ======

    //===== Kriteria =======
    public function getDataKriteria_get()
    {
        $data = $this->Kriteria_Model->getAll();
        $this->response([
            'status' => true,
            'data' => $data
        ], REST_Controller::HTTP_OK);
    }

    public function addKriteria_post()
    {
        $post = $this->input->post();
        $this->db->trans_start();
        $data=array(
            'nama' => $post["nama"],
            'ket' => $post["ket"],
        );

        $this->Kriteria_Model->create($data);
        $this->db->trans_complete();
        if ($this->db->trans_status() === FALSE)
        {
            $this->response([
                'status' => false,
                'data' => array('message'=>'Failed')
            ], REST_Controller::HTTP_OK);
        }
        else
        {
            $this->response([
                'status' => true,
                'data' => array('message'=>'Suksess')
            ], REST_Controller::HTTP_OK);
        }
    }

    public function deleteKriteria_post($id_kriteria = null)
    {
        $data = $this->Kriteria_Model->delete($id_kriteria);
        if ($data) {
            $this->response([
                'status' => true,
                'data' => 'berhasil'
            ], REST_Controller::HTTP_OK);
        }else{
            $this->response([
                'status' => false,
                'message' => 'error'
            ], REST_Controller::HTTP_OK);
        }
    }
    //====== END KRITERIA =======

    //====== NILAI AWAL =========

    public function getDataNilaiAwal_get()
    {
        $data = $this->Kriteria_Model->getAll();
        $this->response([
            'status' => true,
            'data' => $data
        ], REST_Controller::HTTP_OK);
    }

}
