@extends('home.templates.index')

@section('page-content')
    <section id="home-section" class="ftco-section">
        <div class="container mt-4">
            <div>
                <div class="card text-center" style="background-color: #333333;">
                    <p style="color: #A38758;" class="m-auto py-3">
                        <img src="{{ asset('foto/1a.png') }}" href="{{ url('home') }}" width="20"> Detail Informasi
                        <img src="{{ asset('foto/line.png') }}" href="{{ url('home') }}" width="20">
                        <img src="{{ asset('foto/2b.png') }}" href="{{ url('home') }}" width="20"> Pembayaran
                        <img src="{{ asset('foto/line.png') }}" href="{{ url('home') }}" width="20">
                        <img src="{{ asset('foto/3b.png') }}" href="{{ url('home') }}" width="20"> Konfirmasi
                    </p>
                </div>
            </div>
            <form method="post" action="{{ url('home/docheckout') }}">
                <?php $totalbelanja = 0; ?>
                @csrf
                <div class="row">
                    <div class="col-md-8">
                        <div class="mt-5">
                            <h1 style="color: black; font-weight:bold;">Pesanan Anda</h1>
                        </div>
                        <div class="card py-2 px-2 text-justify">
                            Seluruh pesanan anda yang tercantum adalah harga final tambah biaya tambahan
                            lainnya dan dijamin harga terbaik.
                        </div>
                        <div class="card py-2 px-2 text-justify mt-5">
                            <h3 style="color: black;">Data Kontak Pesan</h3>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Nama Pelanggan</label>
                                        <input type="text" value="{{ $pengguna->nama }}" name="nama" required
                                            class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>Alamat Email</label>
                                        <input type="text" value="{{ $pengguna->email }}" name="email" required
                                            class="form-control">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>No. Telepon</label>
                                        <input type="text" value="{{ $pengguna->telepon }}" name="telepon" required
                                            class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>Alamat Lengkap</label>
                                        <textarea class="form-control" name="alamat" placeholder="Masukkan Alamat" required>{{ $pengguna->alamat }}</textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card py-2 px-2 text-justify mt-5">
                            <h3 style="color: black;">Kebijakan Pemesanan</h3>
                            Dengan melanjutkan ke tahapan selanjutnya, Anda telah membaca dan setuju dengan <a href="#" style="color: #55acce;">Syarat & Kententuannya</a>.
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mt-5 py-2 px-2">
                            @foreach (session('keranjang') as $idproduk => $item)
                                @php
                                    $produk = DB::table('produk')->where('idproduk', $idproduk)->first();
                                    $totalharga = $produk->harga * $item['jumlah'];
                                @endphp
                                <h3 style="color: black;">{{ $produk->nama }}</h3>
                                Kota Asal Pengiriman : Kabupaten Jepara
                                <img src="{{ asset('foto/' . $produk->foto) }}" height="250px" alt="">
                            @break
                        @endforeach
                        <p style="color: #55acce; font-weight:600"><img src="{{ asset('foto/location.png') }}"
                                alt=""> Input Lokasi Pengiriman Anda</p>
                        <div class="form-group">
                            <label>Provinsi</label>
                            <input type="text" class="form-control" value="{{ $pengguna->provinsi }}"
                                name="provinsi" required>
                        </div>
                        <div class="form-group">
                            <label>Kota</label>
                            <input type="text" class="form-control" value="{{ $pengguna->kota }}" name="kota"
                                required>
                        </div>
                        <div class="form-group">
                            <label>Kecamatan</label>
                            <input type="text" class="form-control" value="{{ $pengguna->kec }}" name="kec"
                                required>
                        </div>
                        <div class="form-group">
                            <label>Kode Pos</label>
                            <input type="text" class="form-control" value="{{ $pengguna->kode_pos }}"
                                name="kode_pos" required>
                        </div>
                    </div>
                    <div class="card py-2 px-2 text-justify mt-5">
                        <!-- Payment Method Selection -->
                        <div class="form-group mt-3">
                            <label style="color: black;"><strong>Pilih Metode Pembayaran</strong></label><br>
                            <div>
                                <input type="radio" id="cod" name="metodepembayaran" value="Cod" required>
                                <label for="cod">Cash on Delivery (COD)</label>
                            </div>
                            <div>
                                <input type="radio" id="transfer" name="metodepembayaran" value="Transfer" required>
                                <label for="transfer">Transfer</label>
                            </div>
                        </div>
                        <h3 style="color: black; font-weight:bold;">Rincian Harga</h3>
                        @if (!empty(session('keranjang')))
                            @foreach (session('keranjang') as $idproduk => $item)
                                @php
                                    $produk = DB::table('produk')->where('idproduk', $idproduk)->first();
                                    $totalharga = $produk->harga * $item['jumlah'];
                                @endphp
                                <div class="row">
                                    <div class="col-md-6">
                                        <p style="color: black;">{{ $produk->nama }} ({{ $item['jumlah'] }} x)</p>
                                        <p style="color: black;">Rp {{ number_format($produk->harga) }},-</p>
                                    </div>
                                    <div class="col-md-6">
                                        <p style="color: black;font-weight: bold;" class="text-right">Rp
                                            {{ number_format($totalharga) }},-</p>
                                    </div>
                                </div>
                                <?php $totalbelanja += $totalharga; ?>
                            @endforeach
                        @else
                            <tr>
                                <td colspan="5" class="text-center">Keranjang Kosong</td>
                            </tr>
                        @endif
                        <hr>

                        <div class="row">
                            <div class="col-md-6">
                                <h5 style="color: black; font-weight:bold;">Total</h5>
                            </div>
                            <div class="col-md-6">
                                <p style="color: black; font-weight:bold;" class="text-right">Rp
                                    {{ number_format($totalbelanja) }} <br> <span
                                        style="color: red; font-weight:400;">NON REFUNDABLE</span></p>
                            </div>
                        </div>
                        <hr>
                        <p>Dengan melanjutkan ke tahapan selanjutnya, Anda telah membaca dan setuju dengan <a href="#" style="color: #55acce;">Syarat &
                                Kententuannya</a>.</p>



                        <input type="hidden" id="total_belanja" name="total_belanja" value="{{ $totalbelanja }}">
                        <button class="btn btn-lg text-white" style="background-color: #55acce"
                            name="checkout">Lanjutkan Pembayaran</button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</section>
@endsection
