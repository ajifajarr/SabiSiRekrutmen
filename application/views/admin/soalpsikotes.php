<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class SoalPsikotes extends CI_Controller {

    public function tambahEdit()
    {
        // Jika Anda memiliki data soal dari database untuk mode edit, kirimkan ke view
        $data['soal'] = array(
            'id_soal' => 1, // Ganti dengan ID soal yang sebenarnya
            'pertanyaan' => 'Contoh pertanyaan',
            'jawaban' => 'Contoh jawaban',
        );

        $this->load->view('SoalPsikotes', $data);
    }

    public function prosesTambahEdit()
    {
        // Handle logika penyimpanan data di sini, sesuai dengan kebutuhan aplikasi Anda
        // Gunakan $this->input->post() untuk mendapatkan data dari formulir

        redirect('soalpsikotes/tambahEdit'); // Redirect ke halaman tambahEdit setelah penyimpanan
    }
}
