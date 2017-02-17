<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\Goods */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="goods-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'name')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'intro')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'descr')->textarea(['rows' => 6]) ?>

    <?php echo $form->field($model, 'manufact_id')->dropdownList(
        \common\models\Manufacturers::find()->select(['name', 'id'])->indexBy('id')->column(),
        ['prompt'=>'Select Category']
    ); ?>

    <?= $form->field($model, 'price')->textInput() ?>

    <?php echo $form->field($model, 'cat_id')->dropdownList(
        \common\models\Categories::find()->select(['name', 'id'])->indexBy('id')->column(),
        ['prompt'=>'Select Category']
    ); ?>
    <?php if(isset($model->cat_id)):?>
        <?php foreach ($model->cat->catsParams as $catParam):?>
            <?php $value = \common\models\GoodsParamsValues::find()->where(['goods_id' => $model->id, 'param_id' => $catParam->param->id])->one();?>
            <?= $form->field($model, 'params['.$catParam->param->id.']')->textInput(['value' => is_null($value) ? '' : $value->value])->label($catParam->param->name);?>
        <?php endforeach;?>
    <?php endif;?>


    <?= $form->field($model, 'published')->checkbox() ?>

    <?= $form->field($model, 'exist')->checkbox() ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
