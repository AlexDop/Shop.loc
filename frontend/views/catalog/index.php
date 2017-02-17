
<?php

/*
 * @var $this yii\web\View
 * @var array $categories
*/

use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\ListView;


 //мы записываем в парамс наш массив категорий для того, чтобы он был доступен в шаблоне (layout)
$this->title = 'Store';
$this->params['menu'] = $menu;

?>



<div class="site-index container">

    <div class="row">
        <div class="col-md-12">
            <h1>Главная страница</h1>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12 main-section-header">
            Последние добавленные
        </div>

        <?php

        echo ListView::widget([
            'dataProvider' => $newestDataProvider,
            'itemView' => '_newest-product',
            'itemOptions' => ['class' => 'item'],
            'layout' => '{pager}{items}',
            'pager' => ['registerLinkTags' => true],
        ]);

        ?>
    </div>

    <div class="row">
        <div class="col-md-12 main-section-header">
            Новинки
        </div>
        <div class="col-md-3 good">
            <a href="#">
                <img src="/statics/img/3.jpg">
                <p>Новинка 1</p>
            </a>
        </div>
        <div class="col-md-3 good">
            <a href="#">
                <img src="/statics/img/1.jpg">
                <p>Новинка 2</p>
            </a>
        </div>
        <div class="col-md-3 good">
            <a href="#">
                <img src="/statics/img/4.jpg">
                <p>Новинка 3</p>
            </a>
        </div>
        <div class="col-md-3 good">
            <a href="#">
                <img src="/statics/img/2.jpg">
                <p>Новинка 4</p>
            </a>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12 main-section-header">
            ТОПчик
        </div>
        <div class="col-md-3 good">
            <a href="#">
                <img src="/statics/img/2.jpg">
                <p>ТОПчик 1</p>
            </a>
        </div>
        <div class="col-md-3 good">
            <a href="#">
                <img src="/statics/img/4.jpg">
                <p>ТОПчик 2</p>
            </a>
        </div>
        <div class="col-md-3 good">
            <a href="#">
                <img src="/statics/img/1.jpg">
                <p>ТОПчик 3</p>
            </a>
        </div>
        <div class="col-md-3 good">
            <a href="#">
                <img src="/statics/img/3.jpg">
                <p>ТОПчик 4</p>
            </a>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">

        </div>
    </div>

</div>
