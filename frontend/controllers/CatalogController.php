<?php
namespace frontend\controllers;

use common\models\Categories;
use Yii;
use yii\base\InvalidParamException;
use yii\data\ActiveDataProvider;
use yii\web\BadRequestHttpException;
use yii\web\Controller;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use common\models\LoginForm;
use frontend\models\PasswordResetRequestForm;
use frontend\models\ResetPasswordForm;
use frontend\models\SignupForm;
use frontend\models\ContactForm;
use common\models\Goods;
use yii\helpers\Url;

class CatalogController extends Controller
{
    public $layout = 'catalog';

    private $result = '';

    public function actionIndex()
    {


        $categoriesArray = Categories::getCategories();

        $menu = $this->drawMenu($categoriesArray);

        $goods = Goods::find();

        $newestDataProvider = new ActiveDataProvider([

            'query' => $goods,
            'totalCount' => 6,
            'pagination' => [
                'pageSize' => 6,
            ],
            'sort' => [
                'defaultOrder' => [
                    'created_at' => SORT_DESC,
                    'name' => SORT_ASC,
                ]
            ]
        ]);
        //$childsIds = Categories::idsofChildCategories($categoriesCatalog);


        $data = [
            'newestDataProvider' => $newestDataProvider,
            'categoriesArray' => $categoriesArray,
            'menu' => $menu
            // 'childsIds' => $childsIds
        ];
        return $this->render('index', $data);
    }

    public function actionCategory($id = 0){

        $model = new Categories();
        $category = Categories::findOne($id);
        $categories = Categories::getCategories();
        $childIds = $model->idsOfChildCategories (Categories::getCategories($id));
        array_push($childIds,$id);
        $goods = Goods::find()->where(['cat_id'=>$childIds]);
        $menu = $this->drawMenu($categories, $id);

        $dataProvider = new ActiveDataProvider([
            'query' => $goods,
            'pagination'=>[
                'pageSize'=>10,
            ],
            'sort' => [
                'defaultOrder' => [
                    'created_at' => SORT_DESC,
                    'name' => SORT_ASC,
                ]
            ]
        ]);

        $data =[
            'category'=>$category,
            'categories'=>$categories,
            'menu' => $menu,
            'listDataProvider' => $dataProvider
        ];

// $this->generateGoods($category, 20);

        return $this->render('category',$data);
    }

    private function drawMenu($categories, $currentId = 0)
    {
        foreach ($categories as $category) {

            $this->result .= '<li';

            $this->result .= sizeof($category['child']) > 0 ? ' class="relative">' : '>';

            $this->result .= '<a href="' . Url::toRoute(['catalog/category', 'id' => $category['id']]) . '"';

            $this->result .= $category['id'] === $currentId ? ' class="active">' : '>';

            $this->result .= $category['name'] . '</a>';


            if (sizeof($category['child']) > 0) {

                $this->result .= $category['id'] === $currentId ?

                    '<button class="open_sub_category">-</button>'
                    :
                    '<button class="open_sub_category">-</button><ul style="display: none">';

                $this->drawMenu($category['child'], $currentId);

                $this->result .= '</ul>';

            };
            $this->result .= '</li>';

            if ($category['parent'] === '0') {
                $this->result .= '<li class="divider"></li>';
            };
        }
        return $this->result;
    }

    //private function generateGoods($category, $total)
}
