<nav class="col-md-2 d-none d-md-block bg-light sidebar">
    <div class="sidebar-sticky">
        <ul class="nav flex-column">
            <li class="nav-item">
                <a class="nav-link active" href="index.php">
                    <span data-feather="home"></span> контролна табла
                    <span class="sr-only">(тренутно)</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="clanci.php">
                    <span data-feather="file"></span> Cви члани
                </a>
            </li>
            <!--Линкови само за администраторе-->
            <?php
            if (isset($_SESSION['autor_uloga'])) {
                if ($_SESSION['autor_uloga']=="admin") {
            ?>
            <li class="nav-item">
                <a class="nav-link" href="kategorije.php">
                    <span data-feather="file"></span> Све категориjе
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="stranice.php">
                    <span data-feather="file"></span> Свe страниде
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="podesavanja.php">
                    <span data-feather="file"></span> Подешаважа
                </a>
            </li>
            <?php
                }
            }
            ?>
        </ul>
    </div>
</nav>
