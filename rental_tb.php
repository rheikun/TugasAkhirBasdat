<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tabel Rental</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="table.css">
</head>
<body>
    <div class="top">
        <h2>Table Selection</h2>
    </div>
    <div class="below">
        <h3>Tabel Rental</h3>
    </div>
    <div class="container">
        <table class="table" style="max-width: 800px; width: 100%; margin: 0 auto;">
            <tr style="background-color: #2D9596">
                <th width="50">No</th>
                <th width="200">Rental ID</th>
                <th width="200">Lisensi Pengemudi</th>
                <th width="200">Car ID</th>
                <th width="200">Dari Lokasi</th>
                <th width="200">Menuju Lokasi</th>
                <th width="200">Dari Tanggal</th>
                <th width="200">Menuju Tanggal</th>
                <th width="200">Tangki</th>
                <th width="200">Odometer Semula</th>
                <th width="200">Odometer Akhir</th>
            </tr>
            <?php
            $koneksi = mysqli_connect('localhost', 'root', '', 'car_rental') or die('koneksi gagal');
            $no = 1;
            $data = mysqli_query($koneksi, "
            SELECT *
            FROM rental_tb;        
            
            ");
            while($d = mysqli_fetch_array($data)) {
                ?>
                <tr>
                    <td><?php echo $no++; ?></td>
                    <td><?php echo $d['rental_id']; ?></td>
                    <td><?php echo $d['driver_license']; ?></td>
                    <td><?php echo $d['car_id']; ?></td>
                    <td><?php echo $d['from_location']; ?></td>
                    <td><?php echo $d['dropoff_location']; ?></td>
                    <td><?php echo $d['from_date']; ?></td>
                    <td><?php echo $d['to_date']; ?></td>
                    <td><?php echo $d['tank']; ?></td>
                    <td><?php echo $d['initial_odo']; ?></td>
                    <td><?php echo $d['return_odo']; ?></td>
                </tr>
                <?php
            }
            ?>
        </table>
        <div class= "button-box">
            <button class="custom-btn custom-btn-primary dashboard-btn" type="submit" onclick="window.location.href='alltabel.php'">Kembali ke Table Selection</button>
        </div>
    </div>
</body>
</html>
