<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "{{%eu_product_recalls}}".
 *
 * @property int $uid
 * @property string|null $type_of_alert
 * @property string|null $type
 * @property string|null $alert_number
 * @property string|null $alert_submitted_by
 * @property string|null $country_of_origin
 * @property string|null $counterfeit
 * @property string|null $risk_type
 * @property string|null $risk_legal_provision
 * @property string|null $product
 * @property string|null $name
 * @property string|null $description
 * @property string|null $brand
 * @property string|null $category
 * @property string|null $number_of_model
 * @property string|null $OECD_portal_category
 * @property string|null $risk
 * @property string|null $compulsory_measures
 * @property string|null $voluntary_measures
 * @property string|null $company_recall_page
 * @property string|null $url_of_case
 * @property string|null $barcode
 * @property string|null $batch_number
 * @property string|null $packaging_description
 */
class EuProductRecalls extends \yii\db\ActiveRecord
{
    public $myfile;
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return '{{%eu_product_recalls}}';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
        [['myfile'], 'file'],
            [['type_of_alert', 'type', 'alert_number', 'alert_submitted_by', 'country_of_origin', 'counterfeit', 'risk_type', 'risk_legal_provision', 'product', 'name', 'description', 'brand', 'category', 'number_of_model', 'OECD_portal_category', 'risk', 'compulsory_measures', 'voluntary_measures', 'company_recall_page', 'url_of_case', 'barcode', 'batch_number', 'packaging_description'], 'string'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'uid' => 'Uid',
            'type_of_alert' => 'Type Of Alert',
            'type' => 'Type',
            'alert_number' => 'Alert Number',
            'alert_submitted_by' => 'Alert Submitted By',
            'country_of_origin' => 'Country Of Origin',
            'counterfeit' => 'Counterfeit',
            'risk_type' => 'Risk Type',
            'risk_legal_provision' => 'Risk Legal Provision',
            'product' => 'Product',
            'name' => 'Name',
            'description' => 'Description',
            'brand' => 'Brand',
            'category' => 'Category',
            'number_of_model' => 'Number Of Model',
            'OECD_portal_category' => 'Oecd Portal Category',
            'risk' => 'Risk',
            'compulsory_measures' => 'Compulsory Measures',
            'voluntary_measures' => 'Voluntary Measures',
            'company_recall_page' => 'Company Recall Page',
            'url_of_case' => 'Url Of Case',
            'barcode' => 'Barcode',
            'batch_number' => 'Batch Number',
            'packaging_description' => 'Packaging Description',
        ];
    }
}
