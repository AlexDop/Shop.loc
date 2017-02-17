<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\models\CatsParams */

$this->title = 'Create Cats Params';
$this->params['breadcrumbs'][] = ['label' => 'Cats Params', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="cats-params-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
