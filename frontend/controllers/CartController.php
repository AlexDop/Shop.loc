<?php

namespace frontend\controllers;

use Yii;
use common\models\Cart;
use common\models\Goods;
//use yz\shoppingcart\ShoppingCart;
//use yii\web\NotFoundHttpException;
use yii2mod\cart\models\CartItemInterface;

class CartController extends CartItemInterface
{
    public function actionAddToCart($id)
    {
        //$cart = new ShoppingCart();

        //$model = Cart::findOne($id);

        //if ($model) {
           // $cart->put($model, 1);
            //return $this->redirect(['cart-view']);


        // access the cart from "cart" subcomponent
        $cart = \Yii::$app->cart;

// Product is an AR model implementing CartProductInterface
        $product = Product::findOne(1);

// add an item to the cart
        $cart->add($product);

// returns the sum of all 'vat' attributes (or return values of getVat()) from all models in the cart.
        $totalVat = $cart->getAttributeTotal('vat');

// clear the cart
        $cart->clear();
        }
       // throw new NotFoundHttpException();
   // }


}
