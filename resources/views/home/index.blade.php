@extends('home.templates.index')

@section('page-content')

    <head>
        <!-- Include Font Awesome CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    </head>
    <style>
        .ftco-intro {
            background-color: #55acce;
            /* Updated to new color */
        }

        .intro {
            background-color: white;
            padding: 20px;
            margin: 10px;
            border-radius: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            text-align: center;
        }

        .intro .icon {
            font-size: 90px;
            color: #55acce;
            /* Updated to new color */
            margin-bottom: 0px;
        }

        .intro .text {
            color: black;
        }

        .intro h2 {
            font-size: 18px;
            margin-bottom: 10px;
        }

        .intro p {
            font-size: 14px;
            margin: 0;
        }

        .best-product .product-card {
            border: 1px solid #ddd;
            border-radius: 10px;
            padding: 15px;
            text-align: center;
            margin-bottom: 20px;
            position: relative;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            height: 100%;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .best-product .product-card img {
            border-radius: 10px;
            margin-bottom: 10px;
            max-height: 200px;
            object-fit: cover;
        }

        .best-product .product-card h3 {
            font-size: 16px;
            margin-bottom: 10px;
        }

        .best-product .product-card .price {
            font-size: 14px;
            color: #55acce;
            font-weight: bold;
            margin-top: auto;
        }

        .best-product .product-card .sale {
            background-color: #55acce;
            /* Updated to new color */
            color: black;
            padding: 5px 10px;
            border-radius: 5px;
            position: absolute;
            top: 10px;
            left: 10px;
        }

        .row {
            display: flex;
            flex-wrap: wrap;
        }

        .col-md-4 {
            flex: 1 1 33%;
            padding: 10px;
        }

        .latest-articles {
            padding: 50px 0;
        }

        .latest-articles .article-card {
            border: 1px solid #ddd;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
            display: flex;
            flex-direction: column;
            max-height: 600px;
        }

        .latest-articles .article-card img {
            width: 100%;
            height: 150px;
            object-fit: cover;
        }

        .latest-articles .article-card .content {
            padding: 20px;
            flex: 1;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .latest-articles .article-card h3 {
            font-size: 18px;
            margin-bottom: 10px;
        }

        .latest-articles .article-card p {
            font-size: 14px;
            color: #666;
            margin-bottom: 10px;
            overflow: hidden;
            text-overflow: ellipsis;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
        }

        .latest-articles .article-card .read-more {
            font-size: 14px;
            color: #A38758;
            font-weight: bold;
            text-decoration: none;
        }

        .latest-articles .article-card .date {
            font-size: 12px;
            color: #999;
            margin-top: 10px;
        }
    </style>

    <div class="hero-wrap" style="background-image: url('{{ asset('foto/backgroundberanda111.jpg') }}');"
        data-stellar-background-ratio="0.5">
        <div class=""></div>
        <div class="container">
            <div class="row no-gutters slider-text align-items-center justify-content-center">
                <div class="col-md-12 ftco-animate d-flex align-items-end">
                    <div class="text w-100">
                        <h1 class="mb-4">Selamat Datang Di <br><span>Griya Pakaian</span>.</h1>
                        <p class="mb-4">Menyediakan pakaian berkualitas dan terlengkap untuk para pecinta pakaian <br>
                            dari anak-anak hingga dewasa.</p>
                        <p><a href="{{ url('home/produkdaftar') }}" class="btn py-2 px-4"
                                style="background-color: #55acce; color: black">Order Sekarang</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <section class="ftco-section ftco-no-pb mb-5">
        <div class="container">
            <div class="row">
                <div class="col-md-6 img img-3 d-flex justify-content-center align-items-center">
                    <img src="{{ asset('foto/logo-pakaian.webp') }}" width="100%" style="border-radius: 10px">
                </div>
                <div class="col-md-6 wrap-about pl-md-5 ftco-animate py-5">
                    <div class="heading-section">
                        <h2 class="mt-4" style="color: black;">Griya Pakaian</h2>
                        <p style="color: black;">
                            Kami adalah toko pakaian terkemuka yang menawarkan berbagai jenis pakaian,
                            termasuk aksesori lainnya. Apapun kebutuhan pakaian Anda, kami memiliki
                            solusi terbaik.
                        </p>
                        <p><a href="{{ url('home/tentang') }}" class="btn py-2 px-4"
                                style="background-color: #55acce; color: black">Tentang Kami</a></p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-intro">
        <div class="container py-5">
            <div class="text-center" style="color: black">
                <h1>Informasi Layanan</h1>
                <p>Kami menyediakan berbagai layanan untuk memastikan pengalaman berpakaian Anda menjadi lebih baik.</p>
            </div>
            <div class="row no-gutters">
                <div class="col-md-3 d-flex">
                    <div class="intro d-lg-flex ftco-animate">
                        <div class="icon">
                            <img src="{{ asset('foto/a.png') }}" width="100%" alt="">
                        </div>
                        <div class="text">
                            <h2 style="color: black;">Desain Kreatif</h2>
                            <p>Menyediakan pakaian dengan desain yang menarik dan stylish.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 d-flex">
                    <div class="intro d-lg-flex ftco-animate">
                        <div class="icon">
                            <img src="{{ asset('foto/b.png') }}" width="100%" alt="">
                        </div>
                        <div class="text">
                            <h2 style="color: black;">Material Berkualitas</h2>
                            <p>Kami menggunakan bahan terbaik untuk memberikan performa maksimal.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 d-flex">
                    <div class="intro d-lg-flex ftco-animate">
                        <div class="icon">
                            <img src="{{ asset('foto/c.png') }}" width="100%" alt="">
                        </div>
                        <div class="text">
                            <h2 style="color: black;">Kustomisasi</h2>
                            <p>Kami menerima pesanan kustom sesuai kebutuhan Anda.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 d-flex">
                    <div class="intro d-lg-flex ftco-animate">
                        <div class="icon">
                            <img src="{{ asset('foto/d.png') }}" width="100%" alt="">
                        </div>
                        <div class="text">
                            <h2 style="color: black;">Pembayaran Aman</h2>
                            <p>Transaksi dengan kami selalu aman dan terpercaya.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="best-product mt-5">
        <div class="container">
            <div>
                <h1 style="color: black; font-weight:bold;">Produk Terbaik</h1>
                <p style="color: black;">Pesan Sekarang Untuk Mendapatkan Penawaran Spesial!</p>
            </div>
            <div class="row">
                @foreach ($produk as $product)
                    <div class="col-md-4">
                        <div class="product-card">
                            <img src="{{ asset('foto/' . $product->foto) }}" alt="{{ $product->nama }}">
                            <h3>{{ $product->nama }}</h3>
                            <p class="price">Rp {{ number_format($product->harga, 0, ',', '.') }}</p>
                            <a href="{{ url('home/detail/' . $product->idproduk) }}" class="btn"
                                style="background-color: #55acce">Lihat
                                Detail</a>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </section>
@endsection
