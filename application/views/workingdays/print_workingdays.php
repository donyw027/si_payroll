<!DOCTYPE html>
<html>

<head>
    <title>Working Days</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            font-size: 8.5pt;
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

    $path1 = FCPATH . 'assets/img/ttd.png';
    $type1 = pathinfo($path1, PATHINFO_EXTENSION);
    $data1 = file_get_contents($path1);
    $base641 = 'data:image/' . $type1 . ';base64,' . base64_encode($data1);
    ?>

    <?php
    $bulann =  date('Y-m-d');
    $date1 = new DateTime($bulann);
    $date1->modify("-1 month");
    $bulan_sebelum = format_bulan($date1->format('Y-m-d'));
    ?>

    <table>
        <tr>
            <!-- <td style="width: 30%; font-size: 6;">
                PT AKT Indonesia <br>Rembang Industri Raya no 45 <br>Tlp./Fax 0343-4505082 <br>Pasuruan Jawa Timur
            </td> -->

            <td style="width: 50%;">
                <center> <img src="<?= $base64; ?>" width="200px" alt=""></center>
            </td>


            <th style="width: 50%;">
                <table>
                    <tr>
                        <th style="font-size: 10pt;border: 1px solid Black;">
                            Working Days <?= $bulan_sebelum; ?>
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
            <td style="width: 70%;font-weight: bold;"><?= $workingdays->nik ?></td>

        </tr>
        <tr>
            <td style="font-weight: bold; width: 30%;">NAMA KARYAWAN</td>
            <td>:</td>

            <td style="width: 70%;font-weight: bold;"><?= $workingdays->nama ?></td>
        </tr>
        <tr>
            <td style="font-weight: bold; width: 30%;">DEPT</td>
            <td>:</td>

            <td style="width: 70%;font-weight: bold;"><?= $workingdays->dept ?></td>
        </tr>
        <tr>

            <td style="font-weight: bold; width: 30%;">SECTION</td>
            <td>:</td>

            <td style="width: 70%;font-weight: bold;"><?= $workingdays->section ?></td>
        </tr>


    </table>

    <table style="border: 1px solid black;">

        <tr>
            <th colspan="2" style="text-align: center;border: 1px solid black;">Rincian Hari Kerja (XX Working Days)</th>
        </tr>

        <tr>
            <td style="border: 1px solid black;font-weight: bold;">Potongan (Ijin)</td>
            <td style="border: 1px solid black;width: 50%;"><?= $workingdays->ijin; ?> Jam</td>
        </tr>
        <tr>
            <td style="border: 1px solid black;font-weight: bold;">Sakit</td>
            <td style="border: 1px solid black;width: 50%;"><?= $workingdays->sakit; ?> Working Days</td>
        </tr>
        <tr>
            <td style="border: 1px solid black;font-weight: bold;">Cuti</td>
            <td style="border: 1px solid black;width: 50%;"><?= $workingdays->cuti; ?> Working Days</td>
        </tr>
        <tr>
            <td style="border: 1px solid black;font-weight: bold;">Alpha/Absent</td>
            <td style="border: 1px solid black;width: 50%;"><?= $workingdays->alpha; ?> Working Days</td>
        </tr>


    </table>
    <br>

    <table>
        <tr>
            <td style="border: 1px solid black;font-weight: bold;">Total Hari Kerja</td>
            <td style="border: 1px solid black;width: 50%;"><?= $workingdays->total_hari_kerja; ?> Working Days</td>
        </tr>
        <tr>
            <td style="border: 1px solid black;font-weight: bold;">PHL (Harian)</td>
            <td style="border: 1px solid black;width: 50%;"><?= $workingdays->total_hari_phl; ?> Working Days</td>
        </tr>

    </table>
    <br>

    <table>
        <tr>
            <td style="border: 1px solid black;font-weight: bold;">Total Overtime</td>
            <td style="border: 1px solid black;width: 50%; background-color: #c5c9c5;"><?= $workingdays->total_overtime; ?> Jam</td>
        </tr>
    </table>

    <br><br>

    <table>
        <tr>
            <th style="border: 1px solid black;font-weight: bold;">Note :</th>
            <td style="border: 1px solid black; background-color: #fff;">
                TERKAIT SAKIT (S) AKAN DI CEK DAN DI VALIDASI LEBIH LANJUT <br>
                KOMPLAIN JIKA TERDAPAT KETIDAK SESUAIAN DATA MAXIMAL <br>
                PADA KAMIS 12 SEPTEMBER JAM 09.00 WIB KE PIHAK HRD <br>
                <b> KARENA DATA TERLAMPIR MASIH DRAFT</b>
            </td>
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
                HRD <br>
                <center> <img src="<?= $base641; ?>" width="80px" alt=""></center>

                <B>M. RIZA FAHMI</B>
            </td>
        </tr>
    </table>

</body>

</html>