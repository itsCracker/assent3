<?php
use yii\helpers\Url;
use yii\helpers\Html;
use yii\grid\GridView;
//use yii\bootstrap\ActiveForm;
use kartik\file\FileInput;
use kartik\form\ActiveForm;
/* @var $this yii\web\View */

$this->title = 'Assent Compliance Inc';
?>

<?php if (isset($model)) { ?>
    <?php $form = ActiveForm::begin(); ?>
    <?= $form->field($model, 'myfile', [
        'addon' => [
            'append' => [
                'content' => '<a href="' . Url::to(['recalls']) . '" class="btn btn-info">Normal Search</a>',
                'asButton' => true
            ]
        ]
    ])->widget(FileInput::classname(), [
        // 'options' => ['accept' => 'image/*'],
        'pluginOptions' => [
            'showPreview' => false,
            'showCaption' => true,
        ]
    ])->label(false); ?>

    <?php ActiveForm::end(); ?>
<?php } else { ?>
    <?php $form = ActiveForm::begin(['action' => ['recalls'], 'method' => 'get',]); ?>

    <?= $form->field($searchModel, 'globalSearch', [
        'addon' => [
            'append' => [
                'content' => Html::submitButton('Search', ['class' => 'btn btn-primary']) . '<a href="' . Url::to(['recalls', 'type' => 'file']) . '" class="btn btn-info">File Search</a>',
                'asButton' => true
            ]
        ]
    ])->label(false)->textInput(['placeholder' => 'Search Database']); ?>

    <?php ActiveForm::end(); ?>
<?php } ?>

    <?php if($dataProvider!=null){ 
            echo GridView::widget([
                'dataProvider' => $dataProvider,
                //'filterModel' => $searchModel,
                'columns' => [
                    ['class' => 'yii\grid\SerialColumn'],
                    'type_of_alert',
                    'alert_number',
                    'alert_submitted_by', 
                    'country_of_origin',
                    'counterfeit', 
                    'risk_type',
                    'name', 
                    'description', 
                    'brand',
                    'category', 
                    'number_of_model',
                    'risk',
                ],
            ]); }?>
   
</div>
