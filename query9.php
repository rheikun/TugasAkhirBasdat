<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Query 9</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="query.css">
</head>
<body>
    <div class="top">
        <h2>Query Selection</h2>
    </div>
    <div class="below">
        <h3>Query 9</h3>
        <p>Temukan nilai sewa termurah.</p>
    </div>
    <div class="container">
        <table class="table" style="max-width: 800px; width: 100%; margin: 0 auto;">
            <tr style="background-color: #2D9596">
                <th width="50">No</th>
                <th width="200">Rental ID</th>
                <th width="200">Harga Terendah</th>
            </tr>
            <?php
            $koneksi = mysqli_connect('localhost', 'root', '', 'car_rental') or die('koneksi gagal');
            $no = 1;
            $data = mysqli_query($koneksi, "
            SELECT 
                subquery.rental_id,
                MIN(subquery.count) AS LowestRentalRate
            FROM (
                SELECT 
                    rr.rental_id,
                    rr.count
                FROM 
                    rentalrate_tb rr
                    INNER JOIN rental_tb r ON rr.rental_id = r.rental_id
                WHERE 
                    r.to_date IS NOT NULL
            ) AS subquery;


            ");
            while ($d = mysqli_fetch_array($data)) {
                ?>
                <tr>
                    <td><?php echo $no++; ?></td>
                    <td><?php echo $d['rental_id']; ?></td>
                    <td><?php echo $d['LowestRentalRate']; ?></td>
                </tr>
                <?php
            }            
            ?>
        </table>
        <div class= "button-box">
            <!-- Content here -->
            <button class="custom-btn custom-btn-primary" type="submit" onclick="window.location.href='query8.php'">Query 8</button>
            <button class="custom-btn custom-btn-primary" type="submit" onclick="window.location.href='dashboard.php'">Dashboard</button>
            <button class="custom-btn custom-btn-primary" type="submit" onclick="window.location.href='query10.php'">Query 10</button>
        </div>
    </div>
</body>
</html>
