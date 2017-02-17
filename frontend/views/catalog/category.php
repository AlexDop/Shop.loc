<?php

/**
 * @var $this yii\web\View
 * @var $category
 *
 */

use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\ListView;
use yii\widgets\Pjax;
use kartik\growl\GrowlAsset;
use kartik\base\AnimateAsset;

AnimateAsset::register($this);
GrowlAsset::register($this);

$this->title = $category->name;
$this->params['breadcrumbs'][] = $this->title;
$this->params['menu'] = $menu;
?>


    <div class="row">
        <div class="col-md-12 category_header">
            <h1><?=$category->name?></h1>
            <p><?=$category->descr?></p>
        </div>
    </div>
    <?php
        echo ListView::widget([
            'dataProvider' => $listDataProvider,
            'itemView' => '_product-cart',
            'itemOptions' => ['class' => 'col-md-3 good-wrapper'],
            'layout' => '
                <div class="row">{items}</div>
                <div class="row"> 
                    <div class="col-md-6">{summary}</div> 
                    <div class="col-md-6">{pager}</div>
                </div>    
            ',
            'pager' => [
                'options'=> ['class'=>'pagination pull-right']
            ]

        ]);
    ?>

<?php

    $this->registerJs('        
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
        $(".icon").on("click",function () {
  
            var that = $(this);
            $.ajax({
                url: "'.Url::toRoute(['cart/add']).'",
                type: "POST",
                data: "goodId="+that.data("id"),
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


