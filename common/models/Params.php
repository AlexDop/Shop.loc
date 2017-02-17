<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "params".
 *
 * @property integer $id
 * @property string $name
 * @property string $descr
 * @property string $unit
 *
 * @property CatsParams[] $catsParams
 * @property GoodsParamsValues[] $goodsParamsValues
 */
class Params extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'params';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['descr'], 'string'],
            [['name', 'unit'], 'string', 'max' => 255],
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
            'descr' => 'Descr',
            'unit' => 'Unit',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCatsParams()
    {
        return $this->hasMany(CatsParams::className(), ['param_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getGoodsParamsValues()
    {
        return $this->hasMany(GoodsParamsValues::className(), ['param_id' => 'id']);
    }
}
