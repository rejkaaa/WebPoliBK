<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" href="assets/images/logo1.png">
    <title>Poliklinik</title>
    <!-- Link to External CSS File -->
    <link rel="stylesheet" href="css/index.css">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light px-5">
        <a class="navbar-brand" href="./index.php"><span style="color: #293291;"></span><span
                class="text-success"></span></a>
    </nav>

    <!-- Banner Section -->
    <section class="banner-section py-5">
        <div class="container text-center text-white">
            <h1 class="display-4 font-weight-bold banner-title">
                Sistem Janji Temu Online Untuk Pasien - Dokter
            </h1>
            <h2 class="lead banner-subtitle">
                Poliklinik Sehat, Layanan Tepat, Kesehatan Anda Terjaga!
            </h2>
            <p class="font-italic banner-note">
                Bimbingan Karir 2024 Bidang Website
            </p>
        </div>
    </section>

    <!-- Login Section -->
    <section class="login-section py-5">
        <div class="container">
            <div class="row justify-content-evenly">
                <div class="col-md-5 mb-4">
                    <div class="login-box p-3 rounded shadow">
                        <div class="text-center mb-3">
                            <img src="assets/images/pasien.png" alt="pasien" class="rounded-circle"
                                style="width: auto;">
                        </div>
                        <h4>Login Pasien</h4>
                        <p>Apabila Anda seorang pasien, silakan login melalui link di bawah ini!</p>
                        <a href="loginUser.php" class="btn btn-primary">Login Pasien</a>
                    </div>
                </div>

                <div class="col-md-5 mb-4">
                    <div class="login-box p-3 rounded shadow">
                        <div class="text-center mb-3">
                            <img src="assets/images/Dokter.png" alt="dokter" class="rounded-circle"
                                style="width: auto;">
                        </div>
                        <h4>Login Dokter</h4>
                        <p>Apabila Anda seorang dokter, silakan login melalui link di bawah ini!</p>
                        <a href="login.php" class="btn btn-primary">Login Dokter</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Testimoni Section -->
    <section class="testimoni-section py-5 bg-light">
        <div class="container text-center">
            <h2 class="mb-5">Apa Kata Mereka?</h2>

            <!-- Carousel Testimoni -->
            <div id="testimonialCarousel" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                    <!-- Testimonial 1 -->
                    <div class="carousel-item active">
                        <div class="testimonial-card p-4">
                            <div class="d-flex justify-content-center mb-3">
                                <img src="assets/images/testimoni1.jpg" alt="Testimoni 1" class="testimonial-image">
                            </div>
                            <p class="text-muted">"Layanan yang sangat memuaskan! Saya merasa lebih sehat dan selalu
                                mendapat perhatian penuh dari dokter. Terima kasih!"</p>
                            <div class="testimonial-info text-center">
                                <h5>John Doe</h5>
                                <p class="text-muted">Pasien</p>
                            </div>
                        </div>
                    </div>

                    <!-- Testimonial 2 -->
                    <div class="carousel-item">
                        <div class="testimonial-card p-4">
                            <div class="d-flex justify-content-center mb-3">
                                <img src="assets/images/testimoni1.jpg" alt="Testimoni 2" class="testimonial-image">
                            </div>
                            <p class="text-muted">"Dokter yang sangat profesional! Proses konsultasi berjalan dengan
                                lancar dan informasi yang diberikan sangat berguna!"</p>
                            <div class="testimonial-info text-center">
                                <h5>Jane Smith</h5>
                                <p class="text-muted">Dokter</p>
                            </div>
                        </div>
                    </div>

                    <!-- Testimonial 3 -->
                    <div class="carousel-item">
                        <div class="testimonial-card p-4">
                            <div class="d-flex justify-content-center mb-3">
                                <img src="assets/images/testimoni1.jpg" alt="Testimoni 3" class="testimonial-image">
                            </div>
                            <p class="text-muted">"Pelayanan yang sangat ramah dan cepat. Semua prosedur dijelaskan
                                dengan jelas, dan saya merasa sangat dihargai!"</p>
                            <div class="testimonial-info text-center">
                                <h5>Ali Reza</h5>
                                <p class="text-muted">Pasien</p>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Carousel Controls -->
                <button class="carousel-control-prev" type="button" data-bs-target="#testimonialCarousel"
                    data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#testimonialCarousel"
                    data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
    </section>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>

</html>