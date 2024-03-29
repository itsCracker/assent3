<?php

use yii\helpers\Html;
use yii\grid\GridView;
use kartik\file\FileInput;
use yii\widgets\ActiveForm;

$this->title = 'Pro65';
?>
<div class="pro65-index">
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

            'ag_number',
            'date',
            'noticing_party:ntext',
            'plaintiff_attoney:ntext',
            'alleged_violatior:ntext',
            'chemicals:ntext',
            //'source:ntext',
            //'comment:ntext',
            //'case_id:ntext',
            //'case_name:ntext',
            //'court_docket_number:ntext',
            //'civil_penalty:ntext',
            //'attorney_fees:ntext',
            //'other_payments:ntext',
            //'type_of_claim:ntext',
            //'relief_sought:ntext',
            //'injuctive_relief:ntext',

            [
                        'class' => 'yii\grid\ActionColumn',
                        'template' =>  '{buttons}',
                        'buttons' => [
                            'buttons'=>function($url, $model, $key){
                                return Html::a('<i class="fa fa-edit"> </i>', ['index', 'id' => $model['uid']], ['class' => 'btn btn-xs btn-primary','data-original-title'=>'Amend Record','data-toggle'=>'tooltip','data-placement'=>'top']);
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
