<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registrasi Pasien</title>
    <link rel="icon" type="image/png" href="asset/images/logo_dinus.png">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <!-- Custom CSS untuk Halaman Registrasi -->

    <style>
        /* Styling untuk halaman secara keseluruhan */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f8fb;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .login-container {
            display: flex;
            flex-wrap: wrap;
            max-width: 1200px;
            background-color: #fff;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
        }

        .left-container {
            flex: 1;
            background-color: #3498db;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .left-container img {
            width: 100%;
            object-fit: cover;
            max-height: 100%;
        }

        .right-container {
            flex: 1;
            padding: 40px;
            background-color: #fff;
        }

        .login-form {
            max-width: 400px;
            margin: 0 auto;
        }

        .login-form h2 {
            text-align: center;
            font-size: 2rem;
            color: #3498db;
            margin-bottom: 20px;
        }

        .form-group label {
            font-weight: bold;
            color: #333;
        }

        .form-group input {
            border-radius: 5px;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
        }

        button {
            padding: 10px;
            font-size: 1rem;
            font-weight: bold;
            background-color: #3498db;
            border: none;
            color: white;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #2980b9;
        }

        .register-link a {
            color: #3498db;
            text-decoration: none;
        }

        .register-link a:hover {
            text-decoration: underline;
        }

        /* Responsif untuk layar kecil */
        @media (max-width: 768px) {
            .login-container {
                flex-direction: column;
                max-width: 100%;
            }

            .left-container,
            .right-container {
                flex: none;
                width: 100%;
            }

            .login-form {
                width: 90%;
            }
        }
    </style>
</head>

<body>
    <div class="login-container">
        <div class="left-container">
            <img src="assets/images/famsmedika.png" style=" width: 80%; background-color: #fff;" alt="Login Image"
                class=" rounded">
        </div>
        <div class="right-container">
            <div class="login-form">
                <h2 style="font-weight: bold;">Registrasi Pasien</h2>
                <form action="pages/register/checkRegister.php" method="post" id="registerForm">
                    <div class="form-group">
                        <label for="nama">Nama:</label>
                        <input type="text" id="nama" name="nama" class="form-control" required>
                    </div>

                    <div class="form-group">
                        <label for="alamat">Alamat:</label>
                        <input type="text" id="alamat" name="alamat" class="form-control" required>
                    </div>

                    <div class="form-group">
                        <label for="no_ktp">Nomor KTP:</label>
                        <input type="number" id="no_ktp" name="no_ktp" class="form-control" required>
                    </div>

                    <div class="form-group">
                        <label for="no_hp">Nomor HP:</label>
                        <input type="number" id="no_hp" name="no_hp" class="form-control" required>
                    </div>

                    <div class="form-group">
                        <label for="password">Password:</label>
                        <input type="password" id="password" name="password" class="form-control" required>
                    </div>

                    <button type="submit" class="btn btn-primary btn-block">Register</button>
                </form>

                <div class="register-link text-center mt-3">
                    <p><b>Sudah punya akun?</b> <a href="loginUser.php">Login disini</a></p>
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>