<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app */

$this->title = Yii::t('catalog', 'Update {modelClass}: ', [
    'modelClass' => 'Goods',
]) . $model->name;
$this->params['breadcrumbs'][] = ['label' => Yii::t('catalog', 'Goods'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->name, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = Yii::t('catalog', 'Update');
?>
<div class="goods-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
