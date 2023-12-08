<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Table Selection</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="dashboard.css">
</head>
<body>
    <div class="top">
        <h2>Table Selection</h2>
    </div>
    <div class="below">
        <p>Silakan pilih salah satu Tabel untuk ditampilkan. 
    </div>
    <div class="container">
        <div class= "button-box">
            <!-- Content here -->
            <button class="custom-btn custom-btn-primary" type="submit" onclick="window.location.href='address_tb.php'">Address</button>
            <button class="custom-btn custom-btn-primary" type="submit" onclick="window.location.href='classcar_tb.php'">Class Car</button>
            <button class="custom-btn custom-btn-primary" type="submit" onclick="window.location.href='car_tb.php'">Car</button>
            <button class="custom-btn custom-btn-primary" type="submit" onclick="window.location.href='person_tb.php'">Person</button>
            <button class="custom-btn custom-btn-primary" type="submit" onclick="window.location.href='phone_tb.php'">Phone</button>
            <br>
            <button class="custom-btn custom-btn-primary" type="submit" onclick="window.location.href='employeetype_tb.php'">Employee Type</button>
            <button class="custom-btn custom-btn-primary" type="submit" onclick="window.location.href='employee_tb.php'">Employee</button>
            <button class="custom-btn custom-btn-primary" type="submit" onclick="window.location.href='customer_tb.php'">Customer</button>
            <button class="custom-btn custom-btn-primary" type="submit" onclick="window.location.href='promrate_tb.php'">Promo Rate</button>
            <button class="custom-btn custom-btn-primary" type="submit" onclick="window.location.href='promo_tb.php'">Promo</button>
            <br>
            <button class="custom-btn custom-btn-primary" type="submit" onclick="window.location.href='rental_tb.php'">Rental</button>
            <button class="custom-btn custom-btn-primary" type="submit" onclick="window.location.href='rentalrate_tb.php'">Rental Rate</button>
            <button class="custom-btn custom-btn-primary" type="submit" onclick="window.location.href='dropoffcharge_tb.php'">Drop Off Charge</button>
        </div>
        <br>
        <button class="btn btn-warning" type="button" onclick="window.location.href='dashboard.php'">Kembali ke Dashboard</button>
    </div>
</body>
</html>