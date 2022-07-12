<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Xanh+Mono&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style_matematyka.css">
    <title>Panel Student</title>
</head>
<body>
    <header id="header">
        <a href="student.html"><section id="back">BACK</section></a>
        <h1 id="h1">MATEMATYKA</h1>
    </header>

    <header id="header_przedmiot">ROZWIĄŻ ZADANIA Z MATEMATYKI</header><br><br>

    <section id="odczyt_matematyka">
        <?php
            $baza=mysqli_connect("localhost", "root", "");
            mysqli_select_db($baza, "exam_generator");
            $zapytanie1="SELECT matematyka.Zadanie FROM matematyka";
            $odczyt1=mysqli_query($baza, $zapytanie1);

            echo "<table>";
            echo "<tr><td>Zadanie</td></tr>";
            while ($wiersz=mysqli_fetch_array($odczyt1))
            {
                echo "<tr><td>".$wiersz['Zadanie']."</td></tr>";
            }
            echo "</table>";

            mysqli_close($baza);
        ?>
    </section>

    <header id="header_odpowiedz">PRZEŚLIJ ODPOWIEDŹ</header><br><br>

    <form action="matematyka.php" method="POST">
        <label id="odpowiedz"><br><textarea name="Odpowiedz" id="" cols="150" rows="20"></textarea><br><br></label>
        <input id="button" type="submit" value="WYŚLIJ ODPOWIEDŹ">
    </form>

    <section id="zapis_matematyka">
        <?php
            $Odpowiedz=$_POST['Odpowiedz'];
            $baza=mysqli_connect("localhost", "root", "");
            mysqli_select_db($baza, "exam_generator");

            $zapytanieOdp="INSERT INTO matematyka_student_odp VALUES('', '$Odpowiedz')";
            mysqli_query($baza, $zapytanieOdp);
            
            mysqli_close($baza);
        ?>
    </section>

    
</body>
</html>