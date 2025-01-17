<?php
require 'config/koneksi.php';

// Pastikan user sudah login
$id_pasien = $_SESSION['id'] ?? null;
if (!$id_pasien) {
    header("location: ../../login.php");
    exit;
}

// Ambil data pasien berdasarkan session
$id = $_SESSION['id'];
$query = "SELECT * FROM pasien WHERE id = '$id'";
$result = mysqli_query($mysqli, $query);
$data = mysqli_fetch_assoc($result);

// Update data pasien
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nama = $_POST["nama"];
    $no_ktp = $_POST["no_ktp"];
    $no_hp = $_POST["no_hp"];
    $password = $_POST["password"];

    // Jika password diisi, gunakan password baru, jika tidak gunakan password lama
    $password_hash = !empty($password) ? password_hash($password, PASSWORD_DEFAULT) : $data['password'];

    $update_query = "UPDATE pasien SET 
        nama = '$nama',
        password = '$password_hash',
        no_ktp = '$no_ktp',
        no_hp = '$no_hp'
        WHERE id = '$id'";

    if (mysqli_query($mysqli, $update_query)) {
        echo '<script>';
        echo 'alert("Profil berhasil diperbarui!");';
        echo 'window.location.href = "../../profilePasien.php";';
        echo '</script>';
    } else {
        echo "Error: " . $update_query . "<br>" . mysqli_error($mysqli);
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Profile</title>
    <link rel="stylesheet" href="../../assets/css/style.css">
    <link rel="stylesheet" href="../../assets/plugins/bootstrap/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <h2>Update Profile</h2>
        <form action="" method="POST">
            <div class="form-group">
                <label for="nama">Nama</label>
                <input type="text" class="form-control" id="nama" name="nama" value="<?php echo $data['nama']; ?>" required>
            </div>
            <div class="form-group">
                <label for="password">Password (Kosongkan jika tidak ingin mengubah)</label>
                <div class="input-group">
                    <input type="password" class="form-control" id="password" name="password">
                    <div class="input-group-append">
                        <button type="button" class="btn btn-outline-secondary toggle-password">
                            <i class="fas fa-eye"></i>
                        </button>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <label for="no_ktp">No KTP</label>
                <input type="text" class="form-control" id="no_ktp" name="no_ktp" value="<?php echo $data['no_ktp']; ?>" required>
            </div>
            <div class="form-group">
                <label for="no_hp">No HP</label>
                <input type="text" class="form-control" id="no_hp" name="no_hp" value="<?php echo $data['no_hp']; ?>" required>
            </div>
            <button type="submit" class="btn btn-primary">Update</button>
        </form>
    </div>

    <script src="../../assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script>
    document.querySelectorAll('.toggle-password').forEach(button => {
        button.addEventListener('click', () => {
            const input = button.parentElement.previousElementSibling;
            const icon = button.querySelector('i');
            if (input.type === "password") {
                input.type = "text";
                icon.classList.remove('fa-eye');
                icon.classList.add('fa-eye-slash');
            } else {
                input.type = "password";
                icon.classList.remove('fa-eye-slash');
                icon.classList.add('fa-eye');
            }
        });
    });
</script>

</body>
</html>
