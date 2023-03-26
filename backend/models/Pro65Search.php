<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Pro65;

/**
 * Pro65Search represents the model behind the search form of `backend\models\Pro65`.
 */
class Pro65Search extends Pro65
{
    public $globalSearch;
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['uid'], 'integer'],
            [['ag_number', 'date', 'noticing_party', 'plaintiff_attoney', 'alleged_violatior', 'chemicals', 'source', 'comment', 'case_id', 'case_name', 'court_docket_number', 'civil_penalty', 'attorney_fees', 'other_payments', 'type_of_claim', 'relief_sought', 'globalSearch'], 'safe'],
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
        $query = Pro65::find();

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

        $query->orFilterWhere(['like', 'ag_number', $this->globalSearch])
            ->orFilterWhere(['like', 'date', $this->globalSearch])
            ->orFilterWhere(['like', 'noticing_party', $this->globalSearch])
            ->orFilterWhere(['like', 'plaintiff_attoney', $this->globalSearch])
            ->orFilterWhere(['like', 'alleged_violatior', $this->globalSearch])
            ->orFilterWhere(['like', 'chemicals', $this->globalSearch])
            ->orFilterWhere(['like', 'source', $this->globalSearch])
            ->orFilterWhere(['like', 'comment', $this->globalSearch]);

        return $dataProvider;
    }
}
