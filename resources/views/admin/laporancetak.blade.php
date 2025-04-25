<html>

<head>
    <title>Laporan</title>
    <style type="text/css">
        body {
            -webkit-print-color-adjust: exact;
            padding: 25px;
        }

        #table {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
            font-size: 10pt;
        }

        #table td,
        #table th {
            padding: 5px;
            padding-top: 3px;
            border: 1px solid black;
        }

        #table tr {
            padding-top: 3px;
            padding-bottom: 3px;
        }

        #table tr:hover {
            background-color: #ddd;
        }

        #table th {
            padding-top: 3px;
            padding-bottom: 3px;
            text-align: left;
            background-color: #db2f33;
            color: white;
        }

        @page {
            size: auto;
            margin: 0;
        }

        hr {
            display: block;
            margin-top: 0.5em;
            margin-bottom: 0.5em;
            margin-left: auto;
            margin-right: auto;
            border-style: inset;
            border-width: 1px;
        }
    </style>
</head>

<body style='font-family:tahoma; font-size:8pt;padding-top:50px;'>
    <center>
        <img src="{{ asset('foto/logonya.webp') }}" width="200px">
        <br>
        <br>
        <b>_______________________________________________________________________________________________________</b>
        <br>
        <table style="width:670px; border-collapse:collapse;" border="0" >
            <tr>
                <td colspan="2" style="height: 20px;">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 50%; text-align: left; padding: 8px;">
                    <span style="font-size: 11pt; font-weight: bold;">Tanggal Awal</span>
                </td>
                <td style="width: 50%; text-align: left; padding: 8px;">
                    <span style="font-size: 11pt;">: <?= tanggal($tanggalawal) ?></span>
                </td>
            </tr>
            <tr>
                <td style="width: 50%; text-align: left; padding: 8px;">
                    <span style="font-size: 11pt; font-weight: bold;">Tanggal Akhir</span>
                </td>
                <td style="width: 50%; text-align: left; padding: 8px;">
                    <span style="font-size: 11pt;">: <?= tanggal($tanggalakhir) ?></span>
                </td>
            </tr>
        </table>

        <br><br>
        <table class="table table-bordered" id="table" style="width:670px; border: 1px solid black;">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Nama</th>
                    <th>Daftar Produk</th>
                    <th>Tanggal Pembelian</th>
                    <th>Total Pembelian</th>
                    <th>Metode Pembayaran</th>
                    <th>Status Belanja</th>
                </tr>
            </thead>
            <tbody>
                <?php $nomor = 1; ?>
                @foreach ($pembelian as $p)
                    <tr>
                        <td>{{ $nomor }}</td>
                        <td>{{ $p->nama }}</td>
                        <td>
                            <ul>
                                @foreach ($dataproduk[$p->idpembelian] as $dp)
                                    <li>{{ $dp->nama }}</li>
                                @endforeach
                            </ul>
                        </td>
                        <td>{{ tanggal(date('Y-m-d', strtotime($p->tanggalbeli))) }}</td>
                        <td>Rp. {{ number_format($p->totalbeli) }}</td>
                        <td>{{ $p->metodepembayaran }}</td>
                        <td>{{ $p->statusbeli }}</td>
                    </tr>
                    <?php $nomor++; ?>
                @endforeach
            </tbody>
            <tfoot>
                <tr>
                    <th colspan="4">Total Pembelian</th>
                    <th colspan="3">Rp. {{ number_format($totalPembelian) }}</th>
                </tr>
            </tfoot>
        </table>
    </center>
</body>

</html>
<script>
    window.print();
</script>
