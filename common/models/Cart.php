<?php

namespace common\models;

use Yii;
//use yz\shoppingcart\CartPositionInterface;
//use yz\shoppingcart\CartPositionTrait;
use yii\db\ActiveRecord;
use yii2mod\cart\models\CartItemInterface;

class Cart extends ActiveRecord implements CartItemInterface
{

    public function getPrice()
    {
        return $this->price;
    }

    public function getLabel()
    {
        return $this->name;
    }

    public function getUniqueId()
    {
        return $this->id;
    }
}