<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\CatsParams */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="cats-params-form">

    <?php $form = ActiveForm::begin(); ?>

    <?php echo $form->field($model, 'param_id')->dropdownList(
        \common\models\Params::find()->select(['name', 'id'])->indexBy('id')->column(),
        ['prompt'=>'Select Pararameter']
    ); ?>
    <?php echo $form->field($model, 'cat_id')->dropdownList(
        \common\models\Categories::find()->select(['name', 'id'])->indexBy('id')->column(),
        ['prompt'=>'Select Category']
    ); ?>


    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
