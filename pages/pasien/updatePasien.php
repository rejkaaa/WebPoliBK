<?php
include("../../config/koneksi.php");

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Ambil nilai dari form
    $id = $_POST["id"];
    $nama = $_POST["nama"];
    $alamat = $_POST["alamat"];
    $no_ktp = $_POST["no_ktp"];
    $no_hp = $_POST["no_hp"];

    // Query untuk melakukan update data pasien
    $query = "UPDATE pasien SET 
        nama = '$nama', 
        alamat = '$alamat', 
        no_ktp = '$no_ktp',
        no_hp = '$no_hp'
        WHERE id = '$id'";

    // Eksekusi query
    if (mysqli_query($mysqli, $query)) {
        echo '<script>';
        echo 'alert("Data pasien berhasil diubah!");';
        echo 'window.location.href = "../../index.php?page=pasien";';
        echo '</script>';
        exit();
    } else {
        echo "Error: " . $query . "<br>" . mysqli_error($mysqli);
    }
}

// Tutup koneksi
mysqli_close($mysqli);
?>
