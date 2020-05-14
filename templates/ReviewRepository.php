<?php
class ReviewRepository
{
    private static $pdo;
    private $count_total = 0;
    private $default_limit = 10;
    // Подключаемся к базе данных
    public static function connect(){
        $host = 'mysql:host=localhost;dbname=feedback_base; charset=UTF8';
        $user = 'root';
        $pass = '';
        try {
            self::$pdo = new PDO($host, $user, $pass);
        } catch (PDOException $e) {
            // Ошибка подключения
            echo "Ошибка подключения базы данных: $e";
        }
    }

    public function __construct($default_limit){
        self::connect();
        $this->default_limit = $default_limit;
        $this->count_total = $this->getTotalPages();
    }

    // Узнаем общее количество страниц
    public function getTotalPages(){
        $sql_total = 'SELECT COUNT(id) FROM feedback_list';
        $total_rows = self::$pdo->query($sql_total);
        foreach ($total_rows as $key => $value) {
            $count_total = $value[0];
        }
        return ceil($count_total / $this->default_limit); // Узнаем количество страниц, округляя в большую сторону
    }

    //Добавление нового отзыва в базу данных
    public function create(array $data) {
        $name_feedback = $data['name'];
        $email_feedback = $data['email'];
        $text_feedback = $data['text'];
        $sql = "INSERT INTO feedback_list(name_feedback, email_feedback, text_feedback) VALUES('$name_feedback', '$email_feedback', '$text_feedback') ";
        self::$pdo->query($sql);
    }
    //получение списка отзывов для вывода на странице
    public function getList($page, $limit) {
        $this->default_limit = $limit;
        $start = ($page - 1) * $limit; // Текущий элемент, с которого начинаем вывод
        // Составляем запрос с учетом лимита:
        $sql = sprintf('SELECT 
        id,
        name_feedback,
        email_feedback,
        time_feedback,
        text_feedback
        FROM feedback_list
        ORDER BY time_feedback DESC
        LIMIT %d, %d', $start, $limit);
        return self::$pdo->query($sql);
    }
}