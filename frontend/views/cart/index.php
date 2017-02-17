<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii2mod\cart\widgets\CartGrid;

/* @var $this yii\web\View */
/* @var $searchModel frontend\models\CartSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Carts';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="cart-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Cart', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?php echo \yii2mod\cart\widgets\CartGrid::widget([
        // Some widget property maybe need to change.
        'cartColumns' => [
            'id',
            'user_id',
            'good_id',
            'count',
        ]
    ]); ?>
</div>
