<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "goods".
 *
 * @property integer $id
 * @property string $name
 * @property string $intro
 * @property string $descr
 * @property integer $manufact_id
 * @property double $price
 * @property integer $cat_id
 * @property integer $published
 * @property integer $exist
 *
 * @property Cart[] $carts
 * @property Manufacturers $manufact
 * @property Categories $cat
 * @property GoodsParamsValues[] $goodsParamsValues
 */
class Goods extends \yii\db\ActiveRecord
{
    public $params = array();
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'goods';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['intro', 'descr'], 'string'],
            [['manufact_id', 'cat_id', 'published', 'exist'], 'integer'],
            [['price'], 'number'],
            [['name'], 'string', 'max' => 255],
            [['manufact_id'], 'exist', 'skipOnError' => true, 'targetClass' => Manufacturers::className(), 'targetAttribute' => ['manufact_id' => 'id']],
            [['cat_id'], 'exist', 'skipOnError' => true, 'targetClass' => Categories::className(), 'targetAttribute' => ['cat_id' => 'id']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => 'Name',
            'intro' => 'Intro',
            'descr' => 'Descr',
            'manufact_id' => 'Manufact ID',
            'price' => 'Price',
            'cat_id' => 'Cat ID',
            'published' => 'Published',
            'exist' => 'Exist',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCarts()
    {
        return $this->hasMany(Cart::className(), ['good_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getManufact()
    {
        return $this->hasOne(Manufacturers::className(), ['id' => 'manufact_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCat()
    {
        return $this->hasOne(Categories::className(), ['id' => 'cat_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getGoodsParamsValues()
    {
        return $this->hasMany(GoodsParamsValues::className(), ['goods_id' => 'id']);

    }
}
