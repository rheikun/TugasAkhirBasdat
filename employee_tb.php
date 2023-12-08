<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tabel Employee</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="table.css">
</head>
<body>
    <div class="top">
        <h2>Table Selection</h2>
    </div>
    <div class="below">
        <h3>Tabel Employee</h3>
    </div>
    <div class="container">
        <table class="table" style="max-width: 800px; width: 100%; margin: 0 auto;">
            <tr style="background-color: #2D9596">
                <th width="50">No</th>
                <th width="200">Lisensi Pengemudi</th>
                <th width="200">Lokasi</th>
                <th width="200">Jenis Pegawai</th>
                <th width="200">Presiden</th>
                <th width="200">Wakil Presiden</th>
            </tr>
            <?php
            $koneksi = mysqli_connect('localhost', 'root', '', 'car_rental') or die('koneksi gagal');
            $no = 1;
            $data = mysqli_query($koneksi, "
            SELECT *
            FROM employee_tb;        
            
            ");
            while($d = mysqli_fetch_array($data)) {
                ?>
                <tr>
                    <td><?php echo $no++; ?></td>
                    <td><?php echo $d['driver_license']; ?></td>
                    <td><?php echo $d['location']; ?></td>
                    <td><?php echo $d['employee_type']; ?></td>
                    <td><?php echo $d['is_president']; ?></td>
                    <td><?php echo $d['is_vicepres']; ?></td>
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
