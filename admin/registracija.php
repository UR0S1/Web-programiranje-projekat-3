<?php
include_once "../ukljuci/funkcije.php";
include_once "../ukljuci/konekcija.php";
?>
<!DOCTYPE html>
<html lang="sr">
<head>
    <title>Peгистрашиja</title>
    <?php include_once "ukljuci/zaglavlje.php"; ?>
</head>
<body>
    <?php
    if (isset($_GET['poruka'])){
        $msg = $_GET['poruka'];
        echo '<div class="alert alert-warning alert-dismissible fade show" role="alert">
        '.$msg.'
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">×</span>
        </button>
        </div>';
    }
    ?>
    <div style="width:500px; margin: auto auto; margin-top: 250px;">
        <form method="post" class="form-signin">
            <h1 class="h3 mb-3 font-weight-normal">молимо вас да се региструjeтe</h1>
            <input type="text" name="autor_ime" id="input" class="form-control" placeholder="унесите ваше име" required autofocus>
            <input type="email" name="autor_eadresa" id="inputEmail" class="form-control" placeholder="Vнесите е-адресу" required autofocus>
            <input type="password" name="autor_lozinka" id="inputPassword" class="form-control" placeholder="унeсите лозинку" required>
            <button class="btn btn-lg btn-primary btn-block" name="registrovanje" type="submit">Рeгистpоваsе</button>
        </form>
    </div>
    <?php
    if (isset($_POST['registrovanje'])) {
        $autor_ime = mysqli_real_escape_string($veza, $_POST['autor_ime']);
        $autor_eadresa = mysqli_real_escape_string($veza, $_POST['autor_eadresa']);
        $autor_lozinka = mysqli_real_escape_string($veza, $_POST['autor_lozinka']);
        // Провера да ли су поља празна
        if (empty($autor_ime) OR empty($autor_eadresa) OR empty($autor_lozinka)) {
            header("Location: registracija.php?poruka=Полa+су+празна");
            exit();
        }
        // Провера да ли је е-адреса валидна
        if (!filter_var($autor_eadresa, FILTER_VALIDATE_EMAIL)) {
            header("Location: registracija.php?porukа=молимо+вас÷унесите÷валидну+еадресу");
            exit();
        } else {
            // Ако е-адреса постоји
            $sql2 = "SELECT * FROM `autor` WHERE `autor_eadresa`='$autor_eadresa'";
            $rezultat = mysqli_query($veza, $sql2);
            if (mysqli_num_rows($rezultat) > 0) {
                header("Location: registracija.php?poruka=ЕАдреса+вeħ+постоjи");
                exit();
            } else {
                //криптовање лозинке
                $hash = password_hash($autor_lozinka, PASSWORD_DEFAULT);
                // Регистрација корисника
                $sql = "INSERT INTO `autor` (`autor_ime`, `autor_eadresa`, `autor_lozinka`, `autor_info`, `autor_uloga`) VALUES ('$autor_ime', '$autor_eadresa', '$hash', 'унесите основне индормашиje о себи', 'autor')";
                if (mysqli_query($veza, $sql)) {
                    header("Location: registracija.php?porukа=успешно+сте+се+регистровали");
                    exit();
                } else {
                    header("Location: registracija.php?poruka=Регистрашиja+ниjе+успешна");
                    exit();
                }
            }
        }
    }
    ?>
    <script src="../js/jquery.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/scroll.js"></script>
</body>
</html>
