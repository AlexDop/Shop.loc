<?php

/**
 * @var $this yii\web\View
 * @var $good
 * @var $menu
 * @var $category
 */

use bupy7\flexslider\FlexSlider;
use kartik\base\AnimateAsset;
use kartik\growl\GrowlAsset;
use kartik\widgets\TouchSpin;
use yii\helpers\Url;

AnimateAsset::register($this);
GrowlAsset::register($this);

$this->title = $good->name;
$this->params['breadcrumbs'][] = $this->title;
$this->params['menu'] = $menu;

?>

<div class="row">
    <div class="col-md-12 good-page-header">
        <h1><?= $category->name . ' ' . $good->name; ?></h1>
        <p><?= $category->descr ?></p>
    </div>
</div>
<div class="row">
    <div class="col-md-5 good-left">
        <div class="row carousel">
            <?php
                $carousel = [
                    [
                        'content' => '<img src="/img/empty_img_big.jpg"/>',
                        'options' => ['data-thumb' => "/img/empty_img_big.jpg"]
                    ],
                    [
                        'content' => '<img src="/img/empty_img_big.jpg"/>',
                        'options' => ['data-thumb' => "/img/empty_img_big.jpg"]
                    ],
                    [
                        'content' => '<img src="/img/empty_img_big.jpg"/>',
                        'options' => ['data-thumb' => "/img/empty_img_big.jpg"]
                    ],
                    [
                        'content' => '<img src="/img/empty_img_big.jpg"/>',
                        'options' => ['data-thumb' => "/img/empty_img_big.jpg"]
                    ],
                    [
                        'content' => '<img src="/img/empty_img_big.jpg"/>',
                        'options' => ['data-thumb' => "/img/empty_img_big.jpg"]
                    ],
                    [
                        'content' => '<img src="/img/empty_img_big.jpg"/>',
                        'options' => ['data-thumb' => "/img/empty_img_big.jpg"]
                    ],
                    [
                        'content' => '<img src="/img/empty_img_big.jpg"/>',
                        'options' => ['data-thumb' => "/img/empty_img_big.jpg"]
                    ],
                    [
                        'content' => '<img src="/img/empty_img_big.jpg"/>',
                        'options' => ['data-thumb' => "/img/empty_img_big.jpg"]
                    ],
                ];
                echo FlexSlider::widget([
                    'options' => ['class' => 'flexslider'],
                    'items' => $carousel,
                    'pluginOptions' => [
                        'animation' => 'slide',
                        'animationSpeed' => 500,
                        'controlNav' => 'thumbnails',
                    ]
                ]);
            ?>
        </div>

    </div>
    <div class="col-md-7 good-right">
        <div class="row">
            <div class="col-md-12">
                <p><b>Дата создаения: </b><?= $good->created_at ?></p>
                <p><b>Краткое описание: </b><?= $good->intro ?></p>
                <p><b>Описание: </b><?= $good->descr ?></p>
                <p><b>Цена: </b><span class="price"><?= $good->price ?></span> $</p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <?php
                    echo TouchSpin::widget([
                        'name' => 't4',
                        'pluginOptions' => [
                            'initval' => 1,
                            'postfix' => 'шт.',
                            'buttonup_class' => 'btn',
                            'buttondown_class' => 'btn',
                            'buttonup_txt' => '<i class="glyphicon glyphicon-plus-sign"></i>',
                            'buttondown_txt' => '<i class="glyphicon glyphicon-minus-sign"></i>'
                        ]
                    ]);
                ?>
            </div>
            <div class="col-md-6">
                <button data-id="<?= $good->id ?>" class="btn add-to-cart">Добавить в корзину
                    <i class="fa fa-cart-plus"></i>
                </button>
            </div>

        </div>

    </div>
</div>

<?php
    $this->registerJs('
        var count = 0;
        var price = ' . $good->price . ';
 
        $("#w1").on("change", function () {
            count = $(this).val();
            console.log(count);
            $(".price").html(price*count)
        });
        function alertMsg(text, type){
            $.notify({
                // options
                icon: "fa fa-cart-plus",
                message: text 
                },{
                // settings
                mouse_over: "pause",
                delay: 2000,
                animate: {
                    enter: "animated flipInY",
                    exit: "animated flipOutX"
                },
                type: type
            });
        }    
        $(".add-to-cart").on("click",function () {
    
            var that = $(this);
            $.ajax({
                url: "' . Url::toRoute(['cart/add']) . '",
                type: "POST",
                data: {
                    goodId: that.data("id"),
                    count: count
                },
                success: function(data){
                    alertMsg(data, "success");
                },
                error: function (data) {
                     alertMsg(data, "error");
                }
            });
        });
    ');
?>



