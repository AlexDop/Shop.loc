<?php
use yii\helpers\Html;
use yii\helpers\HtmlPurifier;
use yii\helpers\Url;
?>

<div class="news-item">

</div>

<div class="col-md-3 good">
        <a href="<?=Url::toRoute(['catalog/good', 'id' => $model->id])?>">
        <!--                <img src="/statics/img/1.jpg">-->
        <p><?=$model->name?></p>
    </a>
</div>