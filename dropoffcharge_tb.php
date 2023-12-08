<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tabel Drop Off Charge</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="table.css">
</head>
<body>
    <div class="top">
        <h2>Table Selection</h2>
    </div>
    <div class="below">
        <h3>Tabel Drop Off Charge</h3>
    </div>
    <div class="container">
        <table class="table" style="max-width: 800px; width: 100%; margin: 0 auto;">
            <tr style="background-color: #2D9596">
                <th width="50">No</th>
                <th width="200">Kelas Mobil</th>
                <th width="200">Dari Lokasi</th>
                <th width="200">Menuju Lokasi</th>
                <th width="200">Biaya</th>
            </tr>
            <?php
            $koneksi = mysqli_connect('localhost', 'root', '', 'car_rental') or die('koneksi gagal');
            $no = 1;
            $data = mysqli_query($koneksi, "
            SELECT *
            FROM dropoffcharge_tb;        
            
            ");
            while($d = mysqli_fetch_array($data)) {
                ?>
                <tr>
                    <td><?php echo $no++; ?></td>
                    <td><?php echo $d['class_car']; ?></td>
                    <td><?php echo $d['from_location']; ?></td>
                    <td><?php echo $d['to_location']; ?></td>
                    <td><?php echo $d['charge']; ?></td>
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
