<?php
session_start();
require '../../config/koneksi.php';


if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $username = $_POST['username'];  // Nama yang dimasukkan user
    $password = $_POST['password'];  // Password yang dimasukkan user, dienkripsi dengan MD5

    // Query untuk mencari data dokter berdasarkan nama
    $query = "SELECT * FROM dokter WHERE nama = '$username' AND password = '$password'";
    $result = mysqli_query($mysqli, $query);

    if (mysqli_num_rows($result) > 0) {
        $data = mysqli_fetch_assoc($result);

        $_SESSION['id'] = $data['id'];
        $_SESSION['username'] = $data['nama'];
        $_SESSION['password'] = $data['password'];
        $_SESSION['id_poli'] = $data['id_poli'];
        $_SESSION['akses'] = "dokter";

        header("location:../../dashboard_dokter.php");
    } else {
        echo '<script>alert("Email atau password salah");location.href="../../login.php";</script>';
    }
}
?>