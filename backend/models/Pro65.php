<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "{{%pro65}}".
 *
 * @property int $uid
 * @property string|null $ag_number
 * @property string|null $date
 * @property string|null $noticing_party
 * @property string|null $plaintiff_attoney
 * @property string|null $alleged_violatior
 * @property string|null $chemicals
 * @property string|null $source
 * @property string|null $comment
 * @property string|null $case_id
 * @property string|null $case_name
 * @property string|null $court_docket_number
 * @property string|null $civil_penalty
 * @property string|null $attorney_fees
 * @property string|null $other_payments
 * @property string|null $type_of_claim
 * @property string|null $relief_sought
 * @property string|null $injuctive_relief
 */
class Pro65 extends \yii\db\ActiveRecord
{
    public $myfile;
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return '{{%pro65}}';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['noticing_party', 'plaintiff_attoney', 'alleged_violatior', 'chemicals', 'source', 'comment', 'case_id', 'case_name', 'court_docket_number', 'civil_penalty', 'attorney_fees', 'other_payments', 'type_of_claim', 'relief_sought', 'injuctive_relief'], 'string'],
            [['ag_number', 'date'], 'string', 'max' => 255],
            [['myfile'], 'file'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'uid' => 'Uid',
            'ag_number' => 'AG Number',
            'date' => 'Date',
            'noticing_party' => 'Noticing Party',
            'plaintiff_attoney' => 'Plaintiff Attoney',
            'alleged_violatior' => 'Alleged Violator',
            'chemicals' => 'Chemicals',
            'source' => 'Source',
            'comment' => 'Comment',
            'case_id' => 'Case ID',
            'case_name' => 'Case Name',
            'court_docket_number' => 'Court Docket Number',
            'civil_penalty' => 'Civil Penalty',
            'attorney_fees' => 'Attorney Fees',
            'other_payments' => 'Other Payments',
            'type_of_claim' => 'Type Of Claim',
            'relief_sought' => 'Relief Sought',
            'injuctive_relief' => 'Injuctive Relief',
        ];
    }
}
