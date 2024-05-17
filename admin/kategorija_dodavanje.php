<?php
include_once "../ukljuci/konekcija.php"; 
session_start();

if (!isset($_POST['submit'])) {
    header("Location: kategorije.php?poruka=молимо+вас+упишите+категориjу");
    exit();
} else {
    //Провера да ли је сесија активна
    if (!isset($_SESSION['autor_uloga'])) {
        header("Location: prijavljivanje.php");
        exit();
    } else {
        //Провера да ли корisnik има улогу администратора
        if ($_SESSION['autor_uloga']!="admin") {
            echo "Немате приступ овој страници"; 
            exit();
        } else if ($_SESSION['autor_uloga'] == "admin") {
            // Додавање нове категорије
            $kategorija_naziv = $_POST['kategorija_naziv'];
            $sql = "INSERT INTO kategorija (kategorija_naziv) VALUES ('$kategorija_naziv');"; 
            if (mysqli_query($veza, $sql)) {
                header("Location: kategorije.php?poruka=успешно+додата+категориjа");
                exit();
            } else {
                header("Location: kategorije.php?poruka=гpeшкa");
                exit();
            }
        }
    }
}
?>
