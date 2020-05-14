<?php
include __DIR__ . '/templates/ReviewRepository.php';

$connect_bd = new ReviewRepository(10);

//Определяем текущую страницу
$cur_page = 1;
if (isset($_GET['page']) && $_GET['page'] > 0)
{
    $cur_page = $_GET['page'];
}

$num_pages = $connect_bd->getTotalPages();
//получение списка отзывов для вывода на странице
$row = $connect_bd->getList($cur_page, 10);

// Ввод данных из формы в бд при получении данных
if(count($_POST) > 0) {
    $data = array(
        'name' => $_POST['name'],
        'email' => $_POST['email'],
        'text' => $_POST['text_feedback']
    );
    $connect_bd->create($data);
    header("Location: ".$_SERVER['REQUEST_URI']); //Фикс повторной отправки данных после перезагрузки страницы
}

// подключаем файл для вывода html
include __DIR__ . '/templates/index.phtml';
?>
