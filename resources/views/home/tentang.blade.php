@extends('home.templates.index')

@section('page-content')
    <style>
        .product {
            position: relative;
        }

        .sale-label {
            position: absolute;
            top: 10px;
            left: 10px;
            background-color: #55acce;
            color: white;
            padding: 5px 10px;
            border-radius: 5px;
            font-weight: bold;
            font-size: 14px;
            z-index: 10;
            /* Pastikan label muncul di atas gambar */
        }
    </style>

    <br>
    <br>
    <br>
    <br>
    <section class="ftco-section">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="mb-5">
                        <h1 style="color: black; font-weight:bold;">Tentang Kami</h1>
                        <br>
                        <h5 style="color: black; font-weight:bold;">Griya Pakaian adalah brand terkemuka yang bergerak di
                            industri Pakaian.</h5>
                        <p>Kami hadir untuk menyediakan berbagai jenis pakaian berkualitas tinggi dan aksesori yang
                            memenuhi kebutuhan pakaian, dari anak-anak hingga dewasa.</p>
                    </div>
                </div>

                <div class="col-md-6 d-flex justify-content-center">
                    <img src="{{ asset('foto/logonya1.webp') }}" href="{{ url('home') }}" width="50%">
                </div>
            </div>
        </div>
    </section>
@endsection
