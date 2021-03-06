<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app */

$this->title = Yii::t('catalog', 'Create Goods');
$this->params['breadcrumbs'][] = ['label' => Yii::t('catalog', 'Goods'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="goods-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
