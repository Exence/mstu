<?php

// Работа с корзиной
class Cart
{

    // Добавить в корзину
    public static function addProduct($id)
    {

        $id = intval($id);
        $productsInCart = array();

        // Если в корзине уже есть товары
        if (isset($_SESSION['products'])) {
            $productsInCart = $_SESSION['products'];
        }

        // Проверяем есть ли уже такой товар в корзине 
        if (array_key_exists($id, $productsInCart)) {
            $productsInCart[$id] ++;
        } else {
            $productsInCart[$id] = 1;
        }

        $_SESSION['products'] = $productsInCart;
        return self::countItems();
    }

    // Подсчет количество товаров в корзине (в сессии)
    public static function countItems()
    {
        if (isset($_SESSION['products'])) {
            $count = 0;
            foreach ($_SESSION['products'] as $id => $quantity) {
                $count = $count + $quantity;
            }
            return $count;
        } else {
            return 0;
        }
    }

    // Продукты в корзине
    public static function getProducts()
    {
        if (isset($_SESSION['products'])) {
            return $_SESSION['products'];
        }
        return false;
    }

    // Получаем общую стоимость переданных товаров
    public static function getTotalPrice($products)
    {
        $productsInCart = self::getProducts();

        $total = 0;
        if ($productsInCart) {
            // Если в корзине не пусто
            foreach ($products as $item) {
                $total += $item['price'] * $productsInCart[$item['id']];
            }
        }
        return $total;
    }

    // Очистка корзины
    public static function clear()
    {
        if (isset($_SESSION['products'])) {
            unset($_SESSION['products']);
        }
    }

    // Удаляем товар с указанным id из корзины
    public static function deleteProduct($id)
    {
        $productsInCart = self::getProducts();
        unset($productsInCart[$id]);

        $_SESSION['products'] = $productsInCart;
    }

}
