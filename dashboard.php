<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="dashboard.css">
</head>
<body>
    <div class="top">
        <h2>Query Selection Dashboard</h2>
    </div>
    <div class="below">
        <p>Program ini dibuat untuk menampilkan hasil Query yang diminta pada Studi Kasus 4 mengenai Rental Mobil. 
        <br>Silakan pilih salah satu Query untuk ditampilkan. 
    </div>
    <div class="container">
        <div class= "button-box">
            <!-- Content here -->
            <button class="custom-btn custom-btn-primary" type="submit" onclick="window.location.href='query1.php'">Query 1</button>
            <button class="custom-btn custom-btn-primary" type="submit" onclick="window.location.href='query2.php'">Query 2</button>
            <button class="custom-btn custom-btn-primary" type="submit" onclick="window.location.href='query3.php'">Query 3</button>
            <button class="custom-btn custom-btn-primary" type="submit" onclick="window.location.href='query4.php'">Query 4</button>
            <button class="custom-btn custom-btn-primary" type="submit" onclick="window.location.href='query5.php'">Query 5</button>
            <br>
            <button class="custom-btn custom-btn-primary" type="submit" onclick="window.location.href='query6.php'">Query 6</button>
            <button class="custom-btn custom-btn-primary" type="submit" onclick="window.location.href='query7.php'">Query 7</button>
            <button class="custom-btn custom-btn-primary" type="submit" onclick="window.location.href='query8.php'">Query 8</button>
            <button class="custom-btn custom-btn-primary" type="submit" onclick="window.location.href='query9.php'">Query 9</button>
            <button class="custom-btn custom-btn-primary" type="submit" onclick="window.location.href='query10.php'">Query 10</button>
            
        </div>
        <br>
        <button class="btn btn-warning" type="button" onclick="window.location.href='alltabel.php'">Tampilkan semua tabel</button>
    </div>
</body>
</html>