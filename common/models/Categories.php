<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "categories".
 *
 * @property integer $id
 * @property integer $parent
 * @property string $name
 * @property string $descr
 * @property integer $published
 *
 * @property CatsParams[] $catsParams
 * @property Goods[] $goods
 */
class Categories extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'categories';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['parent', 'published'], 'integer'],
            [['descr'], 'string'],
            [['name'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'parent' => 'Parent',
            'name' => 'Name',
            'descr' => 'Descr',
            'published' => 'Published',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCatsParams()
    {
        return $this->hasMany(CatsParams::className(), ['cat_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getGoods()
    {
        return $this->hasMany(Goods::className(), ['cat_id' => 'id']);
    }

    //erarchy massive category
    public static function getCategories($parent = 0)
    {
        $categories = Yii::$app->db->createCommand('
        SELECT *
        FROM categories 
        WHERE parent=:parent
        AND published = 1
        ')
            ->bindValue(':parent', $parent)
            ->queryAll();
        $resultArray = [];
        foreach ($categories as $category){
            $category['child'] = self::getCategories($category['id']);
            array_push($resultArray, $category);
        }

        return $resultArray;

    }

   // public function  getCategoryByParent($parent = 0, $id = 1, $published = 1){
       // $data = Categories::find()->asArray()->where(['parent => :parent and id => :id and published => :published',
       //     //['parent' => $parent,'id' => $id,'published' => $published]])->all();
        //return $data;
    //}
//

    //id's podcategory
    public static function idsofChildCategories($categories){

        $resultArray =[];
        foreach ($categories as $category){
            if (sizeof($category['child']) === 0){
                array_push($resultArray,$category['id']);
            } else {
                self::idsofChildCategories($category['child']);
            }
        }

        return $resultArray;

    }
}
