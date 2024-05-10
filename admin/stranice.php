<?php
include_once "../ukljuci/funkcije.php";
include_once "../ukljuci/konekcija.php";
session_start();

if (isset($_SESSION['autor_uloga'])) {
    if ($_SESSION['autor_uloga'] == "admin") {
?>
<!DOCTYPE html>
<html lang="sr">
<head>
    <?php include_once "ukljuci/zaglavlje.php"; ?>
</head>
<body>
    <!--Горњи мени-->
    <?php include_once "ukljuci/gornji_meni.php"; ?>
    <!--Контејнер-->
    <div class="container-fluid">
        <div class="row">
            <!--Леви мени-->
            <?php include_once "ukljuci/levi_meni.php"; ?>
            <!--Главни садржај-->
            <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
                <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                    <button id="toggleForm" class="btn btn-info">додаване нове странмше</button>
                    <h6>3драво <?php echo $_SESSION['autor_ime']; ?> | Ваша улога je <?php echo $_SESSION['autor_uloga']; ?></h6>
                </div>
                <div id="admin-index-form">
                    <?php
                    if (isset($_GET['poruka'])) {
                        $msg = $_GET['poruka'];
                        echo '<div class="alert alert-warning alert-dismissible fade show" role="alert"> '.$msg.'
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"> <span aria-hidden="true">×</span>
                        </button>
                        </div>';
                    }
                    ?>
                    <div style="display:none" id="newPageForm">
                        <form action="stranica_dodavanje.php" method="post">
                            <input type="text" name="stranica_naslov" class="form-control" placeholder="унeсите наслов странише"> <br>
                            <textarea name="stranica_sadrzaj" class="form-control" rows="3" placeholder="уHeсите садржаj странмше"></textarea> <br>
                            <button name="dodavanje" class="btn btn-success">Додаваже странише</button>
                            <br>
                            <br>
                        </form>
                    </div>
                    <h1>Странице:</h1>
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">ИД странишe</th>
                                <th scope="col">Наслов странише</th>
                                <th scope="col">Активности</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $sql = "SELECT * FROM `stranica` ORDER BY stranica_id DESC";
                            $rezultat = mysqli_query($veza, $sql);
                            while ($row = mysqli_fetch_assoc($rezultat)) {
                                $stranica_naslov = $row['stranica_naslov'];
                                $stranica_id = $row['stranica_id'];
                            ?>
                            <tr>
                                <th scope="row"><?php echo $stranica_id; ?></th>
                                <td><?php echo $stranica_naslov; ?></td>
                                <td>
                                    <a href="stranica_uredjivanje.php?id=<?php echo $stranica_id; ?>">
                                        <button class="btn btn-info">Уређивање</button>
                                    </a>
                                    <a onclick="return confirm ('Да ли сте сигурни?');" href="stranica_uklanjanje.php?id=<?php echo $stranica_id; ?>">
                                        <button class="btn btn-danger">Уклањање</button>
                                    </a>
                                </td>
                            </tr>
                            <?php } ?>
                        </tbody>
                    </table>
                    <hr>
                </div>
            </main>
        </div>
    </div>
    <script src="../js/jquery.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/scroll.js"></script>
    <script>
    $(document).ready(function() {
        $("#toggleForm").click(function() {
            $("#newPageForm").slideToggle();
        });
    });
    </script>
</body>
</html>
<?php
    }
} else {
    header("Location: prijavljivanje.php?poruka=Mолимо+вас+да+се+приjавите");
}
?>
