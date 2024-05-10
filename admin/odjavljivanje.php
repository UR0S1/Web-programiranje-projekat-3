<?php
    session_start();
    session_unset();
    session_destroy();
    header("Location:j prijavljivanje.php?message=Успешно+сте+одјављени");
?>