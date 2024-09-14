<!DOCTYPE html>
<html>

<head>
    <title>Payroll</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            font-size: 7.5pt;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        table,
        th,
        tr,
        td {
            height: 15px;
            /* border: 1px solid black; */
            padding: 2px;
        }
    </style>
</head>

<body>
    <?php
    $path = FCPATH . 'assets/img/akt.png';
    $type = pathinfo($path, PATHINFO_EXTENSION);
    $data = file_get_contents($path);
    $base64 = 'data:image/' . $type . ';base64,' . base64_encode($data);
    ?>

    <?php
    $bulann =  date('Y-m-d');
    $date1 = new DateTime($bulann);
    $date1->modify("-1 month");
    $bulan_sebelum = format_bulan($date1->format('Y-m-d'));
    ?>

    <table>
        <tr>
            <td style="width: 30%; font-size: 6;">PT AKT Indonesia <br>Rembang Industri Raya no 45 <br>Tlp./Fax 0343-4505082 <br>Pasuruan Jawa Timur</td>

            <td style="width: 40%;">
                <center> <img src="<?= $base64; ?>" width="180px" alt=""></center>
            </td>


            <th style="width: 30%;">
                <table border="1px solid black">
                    <tr>
                        <th>
                            Slip Gaji <br> <?= $bulan_sebelum; ?>
                        </th>
                    </tr>
                </table>

            </th>
        </tr>
    </table>

    <hr style="height: 2px solid black;">

    <table border="0">

        <tr>
            <td style="font-weight: bold; width: 30%;">NIK</td>
            <td>:</td>
            <td style="width: 70%;font-weight: bold;"><?= $payroll->nik ?></td>

        </tr>
        <tr>
            <td style="font-weight: bold; width: 30%;">NAMA KARYAWAN</td>
            <td>:</td>

            <td style="width: 70%;font-weight: bold;"><?= $payroll->nama ?></td>
        </tr>
        <tr>
            <td style="font-weight: bold; width: 30%;">DEPT</td>
            <td>:</td>

            <td style="width: 70%;font-weight: bold;"><?= $payroll->dept ?></td>
        </tr>
        <tr>

            <td style="font-weight: bold; width: 30%;">STATUS</td>
            <td>:</td>

            <td style="width: 70%;font-weight: bold;"><?= $payroll->status ?></td>
        </tr>

        <tr>
            <td style="font-weight: bold; width: 30%;">TOTAL HARI KERJA</td>
            <td>:</td>

            <td style="width: 70%;font-weight: bold;"><?= $payroll->total_hari_kerja ?> Working Days</td>
        </tr>
    </table>

    <table style="border: 1px solid black;">

        <tr>
            <th colspan="2" style="text-align: center;border: 1px solid black;">PENDAPATAN</th>
        </tr>

        <tr>
            <td style="border: 1px solid black;font-weight: bold;">Gaji Pokok</td>
            <td style="border: 1px solid black;width: 50%;">Rp. <?= number_format($payroll->gaji_pokok, 0, ',', '.'); ?></td>
        </tr>
        <tr>
            <td style="border: 1px solid black;font-weight: bold;">Gaji Tidak Full</td>
            <td style="border: 1px solid black;width: 50%;">Rp. <?= number_format($payroll->gaji_tidak_full, 0, ',', '.'); ?></td>
        </tr>
        <tr>
            <td style="border: 1px solid black;font-weight: bold;">Uang Saku (PHL)</td>
            <td style="border: 1px solid black;width: 50%;">Rp. <?= number_format($payroll->uang_phl, 0, ',', '.'); ?></td>
        </tr>
        <tr>
            <td style="border: 1px solid black;font-weight: bold;">Tunjangan</td>
            <td style="border: 1px solid black;width: 50%;">Rp. <?= number_format($payroll->tunjangan, 0, ',', '.'); ?></td>
        </tr>
        <tr>
            <td style="border: 1px solid black;font-weight: bold;">Sisa Cuti</td>
            <td style="border: 1px solid black;width: 50%;">Rp. <?= number_format($payroll->sisa_cuti, 0, ',', '.'); ?></td>
        </tr>
        <tr>
            <td style="border: 1px solid black;font-weight: bold;">Lembur</td>
            <td style="border: 1px solid black;width: 50%;">Rp. <?= number_format($payroll->lembur, 0, ',', '.'); ?></td>
        </tr>
        <tr>
            <td style="border: 1px solid black;font-weight: bold;">Koreksi Positif</td>
            <td style="border: 1px solid black;width: 50%;">Rp. <?= number_format($payroll->koreksi_positif, 0, ',', '.'); ?></td>
        </tr>
        <tr>
            <td style="border: 1px solid black;"> <b>Jumlah Pendapatan</b></td>
            <td style="border: 1px solid black;"> <b>Rp. <?= number_format($payroll->jumlah_pendapatan, 0, ',', '.'); ?></b></td>
        </tr>
    </table>
    <table style="border: 1px solid black;">

        <tr>
            <th colspan="2" style="border: 1px solid black;text-align: center;">PENGELUARAN</th>
        </tr>
        <tr>
            <td style="border: 1px solid black;font-weight: bold;">BPJS Ketenagakerjaan</td>
            <td style="border: 1px solid black;width: 50%;">Rp. <?= number_format($payroll->bpjs_tk, 0, ',', '.'); ?></td>
        </tr>
        <tr>
            <td style="border: 1px solid black;font-weight: bold;">BPJS Kesehatan</td>
            <td style="border: 1px solid black;width: 50%;">Rp. <?= number_format($payroll->bpjs_kes, 0, ',', '.'); ?></td>
        </tr>
        <tr>
            <td style="border: 1px solid black;font-weight: bold;">PPH 21</td>
            <td style="border: 1px solid black;width: 50%;">Rp. <?= number_format($payroll->pph21, 0, ',', '.'); ?></td>
        </tr>
        <tr>
            <td style="border: 1px solid black;font-weight: bold;">Absensi</td>
            <td style="border: 1px solid black;width: 50%;">Rp. <?= number_format($payroll->absensi, 0, ',', '.'); ?></td>
        </tr>
        <tr>
            <td style="border: 1px solid black;font-weight: bold;">Koreksi Negatif</td>
            <td style="border: 1px solid black;width: 50%;">Rp. <?= number_format($payroll->koreksi_negatif, 0, ',', '.'); ?></td>
        </tr>

        <tr>
            <td style="border: border: 1px solid black;;"><b>Jumlah Potongan</b></td>
            <td style="border: border: 1px solid black;;"><b>Rp. <?= number_format($payroll->jumlah_potongan, 0, ',', '.'); ?></b></td>
        </tr>


    </table>

    <table>



        <tr>
            <th style="border: 1px solid black;text-align: center;">TAKE HOME PAY</th>
        </tr>
        <tr>
            <td style="border: 1px solid black;background-color: #c5c9c5;text-align: center;"><b>Rp. <?= number_format($payroll->take_home_pay, 0, ',', '.'); ?></b></td>
        </tr>

    </table>


    <br>
    <table border="0">
        <tr>
            <td style="width: 70%;">
                HRD PT AKT INDONESIA <br>
                Rembang Industri Raya No. 45 <br>
                Tlp./Fax 0343 - 4505082 <br>
                Pasuruan Jawa Timur 67152
            </td>
            <td style="width: 30%;text-align: center;">
                HRD <br><br><br><br><br>
                <B>M. RIZA FAHMI</B>
            </td>
        </tr>
    </table>

</body>

</html>