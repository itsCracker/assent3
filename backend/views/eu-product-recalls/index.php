<?php

use yii\helpers\Html;
use yii\grid\GridView;
use kartik\file\FileInput;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $searchModel app\models\EuProductRecallsSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Eu Product Recalls';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="australia-index">
    <section class="content">
      <div class="container-fluid">
        <div class="card card-primary card-outline">
          <div class="card-header">
            <h3 class="card-title"><?= Html::encode($this->title) ?></h3>
          </div> <!-- /.card-body -->
          <div class="card-body">
            <?php $form = ActiveForm::begin(); ?>
                <?= $form->field($model, 'myfile')->widget(FileInput::classname(), [
                    // 'options' => ['accept' => 'image/*'],
                    'pluginOptions' => [
                        'showPreview' => false,
                        'showCaption' => true,
                    ]
                ])->label(false);?>
            <?php ActiveForm::end(); ?>

            <?= GridView::widget([
                'dataProvider' => $dataProvider,
                'filterModel' => $searchModel,
                'columns' => [
                    ['class' => 'yii\grid\SerialColumn'],

                    'name:ntext',
                    'type_of_alert:ntext',
                    'type:ntext',
                    'alert_number:ntext',
                    //'counterfeit:ntext',
                    //'risk_type:ntext',
                    //'risk_legal_provision:ntext',
                    //'product:ntext',
                    //'description:ntext',
                    //'brand:ntext',
                    //'category:ntext',
                    //'number_of_model:ntext',
                    //'OECD_portal_category:ntext',
                    //'risk:ntext',
                    //'compulsory_measures:ntext',
                    //'voluntary_measures:ntext',
                    //'company_recall_page:ntext',
                    //'url_of_case:ntext',
                    //'barcode:ntext',
                    //'batch_number:ntext',
                    //'packaging_description:ntext',

                    [
                        'class' => 'yii\grid\ActionColumn',
                        'template' =>  '{buttons}',
                        'buttons' => [
                            'buttons'=>function($url, $model, $key){
                                return Html::a('<i class="fa fa-edit"> </i>', ['update', 'id' => $key], ['class' => 'btn btn-xs btn-primary','data-original-title'=>'Amend Record','data-toggle'=>'tooltip','data-placement'=>'top']);
                            }
                                ]

                    ],
                ],
            ]); ?>
          </div><!-- /.card-body -->
        </div>
      </div><!-- /.container-fluid -->
    </section>
</div>
