<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Query 5</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="query.css">
</head>
<body>
    <div class="top">
        <h2>Query Selection</h2>
    </div>
    <div class="below">
        <h3>Query 5</h3>
        <p>Tampilkan nama belakang dan nama depan semua pelanggan.</p>
    </div>
    <div class="container">
        <table class="table" style="max-width: 800px; width: 100%; margin: 0 auto;">
            <tr style="background-color: #2D9596">
                <th width="50">No</th>
                <th width="200">Nama Belakang</th>
                <th width="200">Nama Depan</th>
            </tr>
            <?php
            $koneksi = mysqli_connect('localhost', 'root', '', 'car_rental') or die('koneksi gagal');
            $no = 1;
            $data = mysqli_query($koneksi, "
            SELECT last_name, first_name
            FROM customer_tb C, person_tb P
            WHERE c.driver_license = p.driver_license;
            
            ");
            while($d = mysqli_fetch_array($data)) {
                ?>
                <tr>
                    <td><?php echo $no++; ?></td>
                    <td><?php echo $d['last_name']; ?></td>
                    <td><?php echo $d['first_name']; ?></td>
                </tr>
                <?php
            }
            ?>
        </table>
        <div class= "button-box">
            <!-- Content here -->
            <button class="custom-btn custom-btn-primary" type="submit" onclick="window.location.href='query4.php'">Query 4</button>
            <button class="custom-btn custom-btn-primary" type="submit" onclick="window.location.href='dashboard.php'">Dashboard</button>
            <button class="custom-btn custom-btn-primary" type="submit" onclick="window.location.href='query6.php'">Query 6</button>
        </div>
    </div>
</body>
</html>
