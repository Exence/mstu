<?php

class SiteController
{

   // Главная
    public function actionIndex()
    {

        $categories = Category::getCategoriesList();
        $latestProducts = Product::getLatestProducts(6);
        $sliderProducts = Product::getRecommendedProducts();

        require_once(ROOT . '/views/site/index.php');
        return true;
    }

    // Обратная связь
    public function actionContact()
    {
        $userEmail = false;
        $userText = false;
        $result = false;

        // Обработка формы
        if (isset($_POST['submit'])) {
            // Если форма отправлена 
            // Получаем данные из формы
            $userEmail = $_POST['userEmail'];
            $userText = $_POST['userText'];

            // Флаг ошибок
            $errors = false;

            // Валидация полей
            if (!User::checkEmail($userEmail)) {
                $errors[] = 'Неправильный email';
            }

            if ($errors == false) {
                $adminEmail = 'mansurovan@mstu.edu.ru';
                $message = "Текст: {$userText}. От {$userEmail}";
                $subject = 'Тема письма';
                $result = mail($adminEmail, $subject, $message);
                $result = true;
            }
        }

        require_once(ROOT . '/views/site/contact.php');
        return true;
    }
    
    // О магазине
    public function actionAbout()
    {
        require_once(ROOT . '/views/site/about.php');
        return true;
    }

}
