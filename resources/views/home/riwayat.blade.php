@extends('home.templates.index')

@section('page-content')
<section id="home-section" class="ftco-section">
    <div class="container mt-4">
        <h1 style="color: black; font-weight:bold;">Riwayat Transaksi</h1>
        <div class="row">
            <div class="col-md-12 ftco-animate">
                <div class="cart-list">
                    <div class="table-responsive">
                        <!-- Added this div for responsiveness -->
                        <table class="table">
                            <thead>
                                <tr class="text-center">
                                    <th style="color: black;" width="10px">No</th>
                                    <th style="color: black;" width="25%">ID Transaksi</th>
                                    <th style="color: black;" width="25%">Daftar</th>
                                    <th style="color: black;">Tanggal Order</th>
                                    <th style="color: black;">Total</th>
                                    <th style="color: black;">Metode Pembayaran</th>
                                    <th style="color: black;">Bukti Pembayaran</th>
                                    <th style="color: black;">Opsi</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $nomor = 1; ?>
                                @foreach ($databeli as $db)
                                <tr>
                                    <td style="color: black;">
                                        <?php echo $nomor; ?>
                                    </td>
                                    <td style="color: black;">{{ $db->notransaksi }}</td>
                                    <td>
                                        <ul>
                                            @foreach ($dataproduk[$db->idpembelianreal] as $dp)
                                            <li style="color: black;">
                                                {{ $dp->nama }}
                                            </li>
                                            @endforeach
                                        </ul>
                                    </td>
                                    <td style="color: black;">{!! tanggal($db->tanggalbeli) . '<br>' . date('H:i',
                                        strtotime($db->waktu)) !!}</td>
                                    <td style="color: black;">Rp {{ number_format($db->totalbeli) }}</td>
                                    <td style="color: black;">{{ $db->metodepembayaran }}</td>
                                    <td class="text-center">
                                        @if (!empty($db->bukti) && file_exists(public_path('foto/' . $db->bukti)))
                                        <img width="100px" src="{{ asset('foto/' . $db->bukti) }}" alt="">
                                        @else
                                        <strong><span class="text-center">-</span></strong>
                                        @endif
                                    </td>

                                    </td>
                                    <td>
                                        <?php if ($db->statusbeli == "Belum Bayar") {
                                                $deadline = date('Y-m-d H:i', strtotime($db->waktu . ' +1 day'));
                                                $harideadline = date('Y-m-d', strtotime($db->waktu . ' +1 day'));
                                                $jamdeadline = date('H:i', strtotime($db->waktu  . ' +1 day'));
                                                if (date('Y-m-d H:i') >= $deadline) {
                                                    echo 'Waktu pembayaran<br>telah habis';
                                                } else { ?>
                                        <a href="{{ url('home/detailtransaksi/' . $db->idpembelianreal) }}"
                                            class="btn text-white" style="background-color: #A38758">Upload
                                            Bukti<br>Pembayaran
                                            Sebelum<br>
                                            <?= tanggal($harideadline) . ' - Jam ' . $jamdeadline ?>
                                        </a>
                                        <?php }
                                            } elseif ($db->statusbeli == "Sudah Upload Bukti Pembayaran" || $db->statusbeli == "Menunggu Konfirmasi") { ?>
                                        <a class="btn text-white" style="background-color: #A38758">Menunggu
                                            Konfirmasi
                                            Admin</a>
                                        <?php } elseif ($db->statusbeli == "Pesanan Di Terima") { ?>
                                        <a href="{{ url('home/detailtransaksi/' . $db->idpembelianreal) }}"
                                            class="btn text-white" style="background-color: #A38758">Pesanan Di
                                            Terima</a>
                                        <?php } elseif ($db->statusbeli == "Pesanan Sedang Dikirim") { ?>
                                        <label class="btn btn-info"> Pesanan Sedang Dikirim <br></label>
                                        <?php } elseif ($db->statusbeli == "Selesai") { ?>
                                        <label class="btn btn-success">Selesai <br></label>
                                        <?php } elseif ($db->statusbeli == "Pesanan Di Tolak") { ?>
                                        <a class="btn btn-danger text-white">Pesanan Anda Di Tolak</a>
                                        <?php } ?>
                                    </td>
                                </tr>
                                <?php $nomor++; ?>
                                @endforeach
                            </tbody>
                        </table>
                    </div> <!-- End of table-responsive -->
                </div>
                <div class="text-center">
                    {{ $databeli->links() }}
                </div>
            </div>
        </div>
    </div>
</section>
@endsection