<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\EuProductRecalls;

/**
 * EuProductRecallsSearch represents the model behind the search form of `app\models\EuProductRecalls`.
 */
class EuProductRecallsSearch extends EuProductRecalls
{
    public $globalSearch;
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['uid'], 'integer'],
            [['type_of_alert', 'type', 'alert_number', 'alert_submitted_by', 'country_of_origin', 'counterfeit', 'risk_type', 'risk_legal_provision', 'product', 'name', 'description', 'brand', 'category', 'number_of_model', 'OECD_portal_category', 'risk', 'compulsory_measures', 'voluntary_measures', 'company_recall_page', 'url_of_case', 'barcode', 'batch_number', 'packaging_description', 'globalSearch'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = EuProductRecalls::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'uid' => $this->uid,
        ]);

        $query->orFilterWhere(['like', 'type_of_alert', $this->globalSearch])
            ->orFilterWhere(['like', 'type', $this->globalSearch])
            ->orFilterWhere(['like', 'alert_number', $this->globalSearch])
            ->orFilterWhere(['like', 'alert_submitted_by', $this->globalSearch])
            ->orFilterWhere(['like', 'country_of_origin', $this->globalSearch])
            ->orFilterWhere(['like', 'counterfeit', $this->globalSearch])
            ->orFilterWhere(['like', 'risk_type', $this->globalSearch])
            ->orFilterWhere(['like', 'risk_legal_provision', $this->globalSearch])
            ->orFilterWhere(['like', 'product', $this->globalSearch])
            ->orFilterWhere(['like', 'name', $this->globalSearch])
            ->orFilterWhere(['like', 'description', $this->globalSearch])
            ->orFilterWhere(['like', 'brand', $this->globalSearch])
            ->orFilterWhere(['like', 'category', $this->globalSearch])
            ->orFilterWhere(['like', 'number_of_model', $this->globalSearch])
            ->orFilterWhere(['like', 'OECD_portal_category', $this->globalSearch])
            ->orFilterWhere(['like', 'risk', $this->globalSearch])
            ->orFilterWhere(['like', 'compulsory_measures', $this->globalSearch])
            ->orFilterWhere(['like', 'voluntary_measures', $this->globalSearch])
            ->orFilterWhere(['like', 'company_recall_page', $this->globalSearch])
            ->orFilterWhere(['like', 'url_of_case', $this->globalSearch])
            ->orFilterWhere(['like', 'barcode', $this->globalSearch])
            ->orFilterWhere(['like', 'batch_number', $this->globalSearch])
            ->orFilterWhere(['like', 'packaging_description', $this->globalSearch]);

        return $dataProvider;
    }
}
