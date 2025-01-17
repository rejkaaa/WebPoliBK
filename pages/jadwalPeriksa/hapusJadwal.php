<?php
require '../../config/koneksi.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $id = $_POST['id'];

    $query = "DELETE FROM jadwal_periksa WHERE id = ?";
    $stmt = $mysqli->prepare($query);
    $stmt->bind_param("i", $id);

    if ($stmt->execute()) {
        echo "<script>alert('Jadwal berhasil dihapus'); window.location.href = '../../index.php?page=jadwalPeriksa';</script>";
    } else {
        echo "<script>alert('Gagal menghapus jadwal'); window.location.href = '../../index.php?page=jadwalPeriksa';</script>";
    }
    $stmt->close();
    $mysqli->close();
}
?>
