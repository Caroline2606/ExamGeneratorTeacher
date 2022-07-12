<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Xanh+Mono&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style_odpowiedzi.css">
    <title>Odpowiedzi ucznia</title>
</head>
<body>
    <header id="header">
        <a href="teacher.php"><section id="back">BACK</section></a>
        <h1 id="h1">ODPOWIEDZI UCZNIA</h1>
    </header>

    <header id="header_przedmiot">ODPOWIEDZI UCZNIA</header><br><br>

    <section id="uczen">
        <section id="zadania">
            <?php
                $baza=mysqli_connect("localhost", "root", "");
                mysqli_select_db($baza, "exam_generator");
                $odczyt="SELECT ID,Zadanie FROM apk_str";
                $wynik=mysqli_query($baza, $odczyt);

                echo "<dl>";

                while($wiersz=mysqli_fetch_array($wynik)) {
                    echo "<dt>".$wiersz["ID"].".".$wiersz["Zadanie"]."</dt>";
                }

                echo "</dl>";

                mysqli_close($baza);
            ?>
        </section>
        
        <section id="odpowiedzi">
            <?php
                $baza=mysqli_connect("localhost", "root", "");
                mysqli_select_db($baza, "exam_generator");
                $odczyt2 = "SELECT ID,Odpowiedz FROM apk_str_student_odp";
                $wynik2=mysqli_query($baza, $odczyt2);

                echo "<dl>";

                while($wiersz=mysqli_fetch_array($wynik2)) {
                    echo "<dt>".$wiersz["ID"].".".$wiersz["Odpowiedz"]."</dt>";
                }

                echo "</dl>";

                mysqli_close($baza);
                
            ?>
        </section>
    </section>
</body>
</html>