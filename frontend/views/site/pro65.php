<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\GridView;
use kartik\file\FileInput;
use kartik\form\ActiveForm;

$this->title = 'Assent Compliance Inc';
?>
<?php if (isset($model)) { ?>
    <?php $form = ActiveForm::begin(); ?>
    <?= $form->field($model, 'myfile', [
        'addon' => [
            'append' => [
                'content' => '<a href="' . Url::to(['pro65']) . '" class="btn btn-info">Normal Search</a>',
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
    <?php $form = ActiveForm::begin(['action' => ['pro65'], 'method' => 'get',]); ?>

    <?= $form->field($searchModel, 'globalSearch', [
        'addon' => [
            'append' => [
                'content' => Html::submitButton('Search', ['class' => 'btn btn-primary']) . '<a href="' . Url::to(['pro65', 'type' => 'file']) . '" class="btn btn-info">File Search</a>',
                'asButton' => true
            ]
        ]
    ])->label(false)->textInput(['placeholder' => 'Search Database']); ?>

    <?php ActiveForm::end(); ?>
<?php } ?>




<?php if ($dataProvider != null) {
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
    ]);
} ?>

</div>