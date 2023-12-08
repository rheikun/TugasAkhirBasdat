<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Query 7</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="query.css">
</head>
<body>
    <div class="top">
        <h2>Query Selection</h2>
    </div>
    <div class="below">
        <h3>Query 7</h3>
        <p>Apakah presiden perusahaan bekerja di kantor pusat?</p>
    </div>
    <div class="container">
        <table class="table" style="max-width: 800px; width: 100%; margin: 0 auto;">
            <tr style="background-color: #2D9596">
                <th width="50">No</th>
                <th width="200">Driver License</th>
                <th width="200">Employee Type</th>
                <th width="200">Presiden</th>
                <th width="200">City</th>
            </tr>
            <?php
            $koneksi = mysqli_connect('localhost', 'root', '', 'car_rental') or die('koneksi gagal');
            $no = 1;
            $data = mysqli_query($koneksi, "
            SELECT 
                e.driver_license,
                e.employee_type AS manager_status,
                a.city,
                CASE 
                    WHEN e.is_president = 'Y' THEN 'Yes'
                    ELSE 'No'
                END AS keterangan_presiden
            FROM 
                employee_tb e
            JOIN 
                address_tb a ON e.location = a.address_id
            WHERE 
                e.is_president = 'Y' AND a.is_headquarter = 'Y';

            ");
            while($d = mysqli_fetch_array($data)) {
                ?>
                <tr>
                    <td><?php echo $no++; ?></td>
                    <td><?php echo $d['driver_license']; ?></td>
                    <td><?php echo $d['manager_status']; ?></td>
                    <td><?php echo $d['keterangan_presiden']; ?></td>
                    <td><?php echo $d['city']; ?></td>
                </tr>
                <?php
            }            
            ?>
        </table>
        <div class= "button-box">
            <button class="custom-btn custom-btn-primary" type="submit" onclick="window.location.href='query6.php'">Query 6</button>
            <button class="custom-btn custom-btn-primary" type="submit" onclick="window.location.href='dashboard.php'">Dashboard</button>
            <button class="custom-btn custom-btn-primary" type="submit" onclick="window.location.href='query8.php'">Query 8</button>
        </div>
    </div>
</body>
</html>
