<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\EuProductRecalls */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="eu-product-recalls-form">
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
    <?= $form->field($model, 'type_of_alert')->textarea(['rows' => 2]) ?>
</div>
<div class="col-md-6">
    <?= $form->field($model, 'type')->textarea(['rows' => 2]) ?>
</div>
<div class="col-md-6">
    <?= $form->field($model, 'alert_number')->textarea(['rows' => 2]) ?>
</div>
<div class="col-md-6">
    <?= $form->field($model, 'alert_submitted_by')->textarea(['rows' => 2]) ?>
</div>
<div class="col-md-6">
    <?= $form->field($model, 'country_of_origin')->textarea(['rows' => 2]) ?>
</div>
<div class="col-md-6">
    <?= $form->field($model, 'counterfeit')->textarea(['rows' => 2]) ?>
</div>
<div class="col-md-6">
    <?= $form->field($model, 'risk_type')->textarea(['rows' => 2]) ?>
</div>
<div class="col-md-6">
    <?= $form->field($model, 'risk_legal_provision')->textarea(['rows' => 2]) ?>
</div>
<div class="col-md-6">
    <?= $form->field($model, 'product')->textarea(['rows' => 2]) ?>
</div>
<div class="col-md-6">
    <?= $form->field($model, 'name')->textarea(['rows' => 2]) ?>
</div>
<div class="col-md-6">
    <?= $form->field($model, 'description')->textarea(['rows' => 2]) ?>
</div>
<div class="col-md-6">
    <?= $form->field($model, 'brand')->textarea(['rows' => 2]) ?>
</div>
<div class="col-md-6">
    <?= $form->field($model, 'category')->textarea(['rows' => 2]) ?>
</div>
<div class="col-md-6">
    <?= $form->field($model, 'number_of_model')->textarea(['rows' => 2]) ?>
</div>
<div class="col-md-6">
    <?= $form->field($model, 'OECD_portal_category')->textarea(['rows' => 2]) ?>
</div>
<div class="col-md-6">
    <?= $form->field($model, 'risk')->textarea(['rows' => 2]) ?>
</div>
<div class="col-md-6">
    <?= $form->field($model, 'compulsory_measures')->textarea(['rows' => 2]) ?>
</div>
<div class="col-md-6">
    <?= $form->field($model, 'voluntary_measures')->textarea(['rows' => 2]) ?>
</div>
<div class="col-md-6">
    <?= $form->field($model, 'company_recall_page')->textarea(['rows' => 2]) ?>
</div>
<div class="col-md-6">
    <?= $form->field($model, 'url_of_case')->textarea(['rows' => 2]) ?>
</div>
<div class="col-md-6">
    <?= $form->field($model, 'barcode')->textarea(['rows' => 2]) ?>
</div>
<div class="col-md-6">
    <?= $form->field($model, 'batch_number')->textarea(['rows' => 2]) ?>
</div>
<div class="col-md-6">
    <?= $form->field($model, 'packaging_description')->textarea(['rows' => 2]) ?>
</div>
</div>
    <div class="form-group">
        <?= Html::submitButton('Update Record', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

          </div><!-- /.card-body -->
        </div>
      </div><!-- /.container-fluid -->
    </section>
</div>
