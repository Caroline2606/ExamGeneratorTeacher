<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Xanh+Mono&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style_teacher.css">
    <title>Panel Teacher</title>
</head>
<body>
    <header id="header">
        <a href="index.html"><section id="back">BACK</section></a>
        <h1 ID="h1">WITAJ W PANELU NAUCZYCIELA</h1>
    </header>

        <form action="teacher.php" method="POST">
            <header id="header_przedmiot">PRZEDMIOT</header><br><br>
            <section id="przedmioty">
                <label id="polski"><input type="radio" name="j_polski" value="Język polski">Język polski<br><img id="img_polski" src="Graphics/polski.jpg" alt="polski"><br><br></label>
                <label id="historia"><input type="radio" name="historia" value="Historia">Historia<br><img id="img_historia" src="Graphics/history.jpg" alt="historia"><br><br></label>
                <label id="bazy_danych"><input type="radio" name="bazy_danych" value="Bazy danych">Bazy danych<br><img id="img_bazy_danych" src="Graphics/bazy_danych.jpg" alt="bazy_danych"><br><br></label>
                <label id="matematyka"><input type="radio" name="matematyka" value="Matematyka">Matematyka<br><img id="img_matematyka" src="Graphics/math.jpg" alt="matematyka"><br><br></label>
                <label id="INF02"><input type="radio" name="inf02" value="INF.02">INF.02<br><img id="img_inf02" src="Graphics/IT_networks.jpg" alt="inf02"><br><br></label>
                <label id="ApStr"><input type="radio" name="Ap_Str" value="Ap_Str">Aplikacje i storny<br><img id="img_apk_str" src="Graphics/Apk_str.jpg" alt="aplikacje_strony"><br><br></label>
            </section>
            <header id="header_zadanie">ZADANIE</header><br><br>
            <section id="section_zadanie">
                <label id="zadanie"><textarea name="Zadanie" id="" cols="150" rows="30"></textarea><br><br></label>
            </section>
            <header id="header_odpowiedz">ODPOWIEDŹ</header>
            <label id="odpowiedz"><br><textarea name="Odpowiedz" id="" cols="150" rows="20"></textarea><br><br></label>
            <input id="button" type="submit" value="ZAPISZ">
        </form>

        <form action="polski_student_odp.php">
            <input class="button2" type="submit" value="ZOBACZ ODPOWIEDZI UCZNIA - JĘZYK POLSKI">
        </form>

        <form action="historia_student_odp.php">
            <input class="button2" type="submit" value="ZOBACZ ODPOWIEDZI UCZNIA - HISTORIA">
        </form>

        <form action="bazy_danych_student_odp.php">
            <input class="button2" type="submit" value="ZOBACZ ODPOWIEDZI UCZNIA - BAZY DANYCH">
        </form>

        <form action="matematyka_student_odp.php">
            <input class="button2" type="submit" value="ZOBACZ ODPOWIEDZI UCZNIA - MATEMATYKA">
        </form>

        <form action="inf02_student_odp.php">
            <input class="button2" type="submit" value="ZOBACZ ODPOWIEDZI UCZNIA - INF.02">
        </form>

        <form action="apk_str_student_odp.php">
            <input class="button2" type="submit" value="ZOBACZ ODPOWIEDZI UCZNIA - APLIKACJE I STRONY">
        </form>

        <?php
        // $przedmioty=$_POST['przedmioty'];

        // $j_polski=$_POST['j_polski'];
        // $historia=$_POST['historia'];
        // $bazy_danych=$_POST['bazy_danych'];

        $Zadanie=$_POST['Zadanie'];
        $Odpowiedz=$_POST['Odpowiedz'];


        $baza=mysqli_connect("localhost", "root", "");
        mysqli_select_db($baza, "exam_generator");

        $zapytanie1="INSERT INTO polski VALUES('', '$Zadanie', '$Odpowiedz')";
        $zapytanie2="INSERT INTO historia VALUES('', '$Zadanie', '$Odpowiedz')";
        $zapytanie3="INSERT INTO bazy_danych VALUES('', '$Zadanie', '$Odpowiedz')";
        $zapytanie4="INSERT INTO matematyka VALUES('', '$Zadanie', '$Odpowiedz')";
        $zapytanie5="INSERT INTO inf02 VALUES('', '$Zadanie', '$Odpowiedz')";
        $zapytanie6="INSERT INTO apk_str VALUES('', '$Zadanie', '$Odpowiedz')";

        if(isset($_POST['j_polski'])) {
            mysqli_query($baza, $zapytanie1);
        }

        if(isset($_POST['historia'])) {
            mysqli_query($baza, $zapytanie2);
        }

        if(isset($_POST['bazy_danych'])) {
            mysqli_query($baza, $zapytanie3);
        }

        if(isset($_POST['matematyka'])) {
            mysqli_query($baza, $zapytanie4);
        }

        if(isset($_POST['inf02'])) {
            mysqli_query($baza, $zapytanie5);
        }

        if(isset($_POST['apk_str'])) {
            mysqli_query($baza, $zapytanie6);
        }


    ?>

</body>
</html>