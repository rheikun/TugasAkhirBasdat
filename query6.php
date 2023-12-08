<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Query 6</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="query.css">
</head>
<body>
    <div class="top">
        <h2>Query Selection</h2>
    </div>
    <div class="below">
        <h3>Query 6</h3>
        <p>Apakah salah satu karyawan perusahaan juga pelanggan kami?</p>
    </div>
    <div class="container">
        <table class="table" style="max-width: 800px; width: 100%; margin: 0 auto;">
            <tr style="background-color: #2D9596">
                <th width="50">No</th>
                <th width="200">Driver License</th>
                <th width="200">Employee Type</th>
                <th width="200">Customer</th>
            </tr>
            <?php
            $koneksi = mysqli_connect('localhost', 'root', '', 'car_rental') or die('koneksi gagal');
            $no = 1;
            $data = mysqli_query($koneksi, "
            SELECT 
                E.driver_license AS 'No',
                E.driver_license,
                E.employee_type,
                'Yes' AS customer
            FROM 
                employee_tb E
            INNER JOIN 
                customer_tb C ON E.driver_license = C.driver_license;


            
            ");
            while($d = mysqli_fetch_array($data)) {
                ?>
                <tr>
                    <td><?php echo $no++; ?></td>
                    <td><?php echo $d['driver_license']; ?></td>
                    <td><?php echo $d['employee_type']; ?></td>
                    <td><?php echo $d['customer']; ?></td>
                </tr>
                <?php
            }
            ?>
        </table>
        <div class= "button-box">
            <!-- Content here -->
            <button class="custom-btn custom-btn-primary" type="submit" onclick="window.location.href='query5.php'">Query 5</button>
            <button class="custom-btn custom-btn-primary" type="submit" onclick="window.location.href='dashboard.php'">Dashboard</button>
            <button class="custom-btn custom-btn-primary" type="submit" onclick="window.location.href='query7.php'">Query 7</button>
        </div>
    </div>
</body>
</html>
