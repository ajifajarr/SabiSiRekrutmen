<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class SoalPsikotes extends CI_Controller {

    public function tambahEdit() {
        // Mendapatkan ID soal dari parameter URL jika dalam mode edit
        $id_soal = $this->input->get('id_soal');

        // Mendapatkan data soal dari database berdasarkan ID jika dalam mode edit
        if ($id_soal) {
            $data['soal'] = $this->db->get_where('soal_psikotes', array('id_soal' => $id_soal))->row_array();
        } else {
            $data['soal'] = array(); // Inisialisasi array kosong jika dalam mode tambah
        }

        // Load view dengan data
        $this->load->view('tambah_edit_soal', $data);
    }

    // Fungsi untuk menyimpan data soal
    public function simpanSoal() {
        // Logika penyimpanan data soal ke database
        // ...

        // Redirect ke halaman tambahEdit setelah penyimpanan
        redirect('soalpsikotes/tambahEdit');
    }
}
