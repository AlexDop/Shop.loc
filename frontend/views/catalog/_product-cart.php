<?php
use yii\helpers\Url;

?>
<div class="good">
    <a href="<?= Url::toRoute(['catalog/good', 'id' => $model->id]) ?>">
        <h3><?=$model->name?></h3>
        <img src="/img/empty_img.jpg">
    </a>
    <p class="product_descr"><?= $model->descr ?></p>
    <a data-id="<?= $model->id ?>" class="icon"><i class="fa fa-cart-plus"></i></a>
    <p><a class="btn btn-default" href="htttp://www.yiiframework.com/extensions/">Yii Extensions</a></p>
    <a href="<?php echo \yii\helpers\Url::to(['catalog/good', 'categoryId' => $good->cat_id, 'url' => $good->url]);?>">Link</a>
</div>