<?php
namespace frontend\components;
use yii\base\Widget;
use Yii;

/**
 *
 * Created by PhpStorm.
 * User: dop
 * Date: 31/01/2017
 * Time: 20:31
 */
class UserCartWidget extends Widget
{
    public $userId;
    public $view = 'cart';

    public function init(){

        $this -> userId = Yii::$app->user->getId();

    }

    public function run(){

        //$count = Cart::find()->where(['userId' => $this->userId])->count();

        return $this->render($this->view,['count' => 2]);

    }
}
