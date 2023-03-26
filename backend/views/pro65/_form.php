<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\Pro65 */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="pro65-form">
<section class="content">
      <div class="container-fluid">
        <div class="card card-primary card-outline">
          <div class="card-header">
            <h3 class="card-title">Update Record</h3>
          </div> <!-- /.card-body -->
          <div class="card-body">
    <?php $form = ActiveForm::begin(); ?>
<div class="row">
    <div class="col-md-6">

    <?= $form->field($model, 'ag_number')->textInput(['maxlength' => true]) ?>
</div>
<div class="col-md-6">
    <?= $form->field($model, 'date')->textInput(['maxlength' => true]) ?>
</div>
<div class="col-md-6">
    <?= $form->field($model, 'noticing_party')->textarea(['rows' => 2]) ?>
</div>
<div class="col-md-6">
    <?= $form->field($model, 'plaintiff_attoney')->textarea(['rows' => 2]) ?>
</div>
<div class="col-md-6">
    <?= $form->field($model, 'alleged_violatior')->textarea(['rows' => 2]) ?>
</div>
<div class="col-md-6">
    <?= $form->field($model, 'chemicals')->textarea(['rows' => 2]) ?>
</div>
<div class="col-md-6">
    <?= $form->field($model, 'source')->textarea(['rows' => 2]) ?>
</div>
<div class="col-md-6">
    <?= $form->field($model, 'comment')->textarea(['rows' => 2]) ?>
</div>
<div class="col-md-6">
    <?= $form->field($model, 'case_id')->textarea(['rows' => 2]) ?>
</div>
<div class="col-md-6">
    <?= $form->field($model, 'case_name')->textarea(['rows' => 2]) ?>
</div>
<div class="col-md-6">
    <?= $form->field($model, 'court_docket_number')->textarea(['rows' => 2]) ?>
</div>
<div class="col-md-6">
    <?= $form->field($model, 'civil_penalty')->textarea(['rows' => 2]) ?>
</div>
<div class="col-md-6">
    <?= $form->field($model, 'attorney_fees')->textarea(['rows' => 2]) ?>
</div>
<div class="col-md-6">
    <?= $form->field($model, 'other_payments')->textarea(['rows' => 2]) ?>
</div>
<div class="col-md-6">
    <?= $form->field($model, 'type_of_claim')->textarea(['rows' => 2]) ?>
</div>
<div class="col-md-6">
    <?= $form->field($model, 'relief_sought')->textarea(['rows' => 2]) ?>
</div>
<div class="col-md-6">
    <?= $form->field($model, 'injuctive_relief')->textarea(['rows' => 2]) ?>
</div>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>
</div>
    <?php ActiveForm::end(); ?>
</div><!-- /.card-body -->
        </div>
      </div><!-- /.container-fluid -->
    </section>
</div>
