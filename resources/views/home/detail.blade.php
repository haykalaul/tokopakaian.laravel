@extends('home.templates.index')

@section('page-content')
<style>
    .price-wrapper {
        background-color: #333333;
        padding: 10px;
        width: 100%;
        text-align: center;
        border-radius: 5px;
        display: inline-block;
        color: #fff;
        margin-top: 10px;
    }

    .price {
        margin: 0;
    }

    .quantity-input {
        width: 100px;
        margin-right: 10px;
        display: inline-block;
    }

    .description {
        margin-top: 20px;
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
        color: white;
        padding: 5px 10px;
        border-radius: 5px;
        position: absolute;
        top: 10px;
        left: 10px;
    }
</style>

<section class="ftco-section">
    <div class="container">
        <div class="row mt-5">
            <div class="col-lg-6 mb-5 ftco-animate">
                <a href="{{ asset('foto/' . $produk->foto) }}" class="image-popup prod-img-bg" wid><img
                        src="{{ asset('foto/' . $produk->foto) }}" width="100%" alt="Colorlib Template"></a>
            </div>
            <div class="col-lg-6 product-details pl-md-5 ftco-animate">
                <h3 style="color: black;">{{ $produk->nama }}</h3>
                <p style="color: black;">Kota Asal Pengiriman : Kabupaten Jepara</p>
                <hr>
                <div class="price-wrapper">
                    <p class="price"><span style="color: white">Rp. {{ number_format($produk->harga) }}</span></p>
                </div>
                @if ($produk->stok > 0)
                <form method="post" action="{{ url('home/pesan') }}">
                    @csrf
                    <input type="hidden" name="idproduk" value="{{ $produk->idproduk }}">
                    <br>
                    <div class="form-group">
                        <input type="number" value="1" class="form-control quantity-input" min="1"
                            max="{{ $produk->stok }}" name="jumlah" required></input>
                    </div>
                    <hr>
                    <p class="mt-3">SKU: <span style="color: #55acce;">{{ $SKU }}</span></p>
                    <p class="mt-3">Kategori: <span style="color: #55acce;">{{ $produk->namakategori }}</span></p>
                    <p class="mt-3">Stok Tersedia: <span style="color: #55acce;">{{ $produk->stok }}</span></p>
                    <button class="btn float-right text-white" style="background-color: #55acce !important;"
                        name="beli">ADD KERANJANG</button>
                </form>
                @else
                <p class="text-danger">Stok habis, produk tidak tersedia untuk dibeli saat ini.</p>
                @endif
            </div>
        </div>
        <div class="description card py-2 px-2">
            <h2 class="text-black">Deskripsi :</h2>
            <p>{!! $produk->deskripsi !!}</p>
        </div>
    </div>
</section>
@endsection