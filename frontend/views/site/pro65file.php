<?php
use yii\helpers\Html;
use yii\grid\GridView;
use kartik\file\FileInput;
//use yii\bootstrap\ActiveForm;
use kartik\form\ActiveForm;
/* @var $this yii\web\View */

$this->title = 'Assent Compliance Inc';
?>
    <?php $form = ActiveForm::begin(); ?>
    
                <?= $form->field($model, 'myfile')->widget(FileInput::classname(), [
                    // 'options' => ['accept' => 'image/*'],
                    'pluginOptions' => [
                        'showPreview' => false,
                        'showCaption' => true,
                    ]
                ])->label(false);?>

    <?php ActiveForm::end(); ?>

    <?php if($dataProvider!=null){ 
            echo GridView::widget([
                'dataProvider' => $dataProvider,
                //'filterModel' => $searchModel,
                'columns' => [
                    ['class' => 'yii\grid\SerialColumn'],
                    'ag_number',
                    'date',
                    'noticing_party:ntext',
                    'plaintiff_attoney:ntext',
                    'alleged_violatior:ntext',
                    'chemicals:ntext',
                    'source:ntext',
                    'comment:ntext'
                ],
            ]); }?>
   
</div>
