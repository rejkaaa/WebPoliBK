<!DOCTYPE html>
<html>

<head>
    <title>Login</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <link rel="icon" type="image/png" href="assets/images/logo1.png">
    <!-- Tambahan CSS -->
    <style>
        body {
            padding-top: 100px;
            background-color: #615EFC;
            background-size: 120%;
            background-position: center;
        }

        .login-box {
            margin: 5% auto;
            width: 400px;
            background: rgba(255, 255, 255, 0.8);
            /* Semi-transparent background */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            /* Subtle shadow for depth */
        }

        .card {
            border: none;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="login-box">
            <div class="card">
                <div class="card-body">
                    <div class="text-center mb-4 logo-image">
                        <img src="assets/images/famsmedika.png" alt="Logo" style="width : 150px;">
                        <!-- Logo or any image -->
                        <h5>Login Pasien</h5>
                    </div>
                    <form action="pages/loginUser/checkLoginUser.php" method="post" id="loginForm">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Username" name="username" id="username"
                                required>
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" placeholder="Password" name="password"
                                id="password" required>
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-block btn-primary">
                                Login
                            </button>
                        </div>
                    </form>

                    <p class="text-center mt-3 mb-0">Belum punya akun? <a href="register.php">Registrasi di sini</a></p>
                </div>
            </div>
        </div>
    </div>

</body>

</html>
</script>
</body>

</html>