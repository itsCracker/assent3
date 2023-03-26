<?php

namespace backend\controllers;

use Yii;
use backend\models\EuProductRecalls as Core;
use backend\models\EuProductRecallsSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use ruskid\csvimporter\CSVImporter;
use ruskid\csvimporter\CSVReader;
use ruskid\csvimporter\ImportInterface;
use ruskid\csvimporter\MultipleImportStrategy;
use ruskid\csvimporter\MultipleUpdateStrategy;
use ruskid\csvimporter\BaseImportStrategy;
use yii\widgets\ActiveForm;
use yii\helpers\Json;
use yii\web\UploadedFile;
/**
 * EuProductRecallsController implements the CRUD actions for EuProductRecalls model.
 */
class EuProductRecallsController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    public function actionIndex($id=null)
    {
        if($id!=null){
            return $this->update($id);
        }else{
        $searchModel = new EuProductRecallsSearch();
        $model = new Core;
        $importer = new CSVImporter;
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
        if($model->load(Yii::$app->request->post())){
          $model->myfile = UploadedFile::getInstance($model, 'myfile' );
          $importer->setData(new CSVReader([
              'filename' => $model->myfile->tempName == null? $model->myfile->name :$model->myfile->tempName,
              'fgetcsvOptions' => [
              'delimiter' => ','
              ]
          ]));
          $numberRowsAffected = $importer->import(new MultipleImportStrategy([
                'tableName' => Core::tableName(),
                'className' => Core::className(),
                'configs' => [
                  [
                    'attribute'=>'type_of_alert',
                    'value' => function($line){return $line[0];},
                  ],
                  [
                    'attribute'=>'type',
                    'value' => function($line){return $line[1];},
                  ],
                  [
                    'attribute'=>'alert_number',
                    'value' => function($line){return $line[2];},
                  ],
                  [
                    'attribute'=>'alert_submitted_by',
                    'value' => function($line){return $line[3];},
                  ],
                  [
                    'attribute'=>'country_of_origin',
                    'value' => function($line){return $line[4];},
                  ],
                  [
                    'attribute'=>'counterfeit',
                    'value' => function($line){return $line[5];},
                  ],
                  [
                    'attribute'=>'risk_type',
                    'value' => function($line){return $line[6];},
                  ],
                  [
                    'attribute'=>'risk_legal_provision',
                    'value' => function($line){return $line[7];},
                  ],
                  [
                    'attribute'=>'product',
                    'value' => function($line){return $line[8];},
                  ],
                  [
                    'attribute'=>'name',
                    'value' => function($line){return $line[9];},
                  ],
                  [
                    'attribute'=>'description',
                    'value' => function($line){return $line[10];},
                  ],
                  [
                    'attribute'=>'brand',
                    'value' => function($line){return $line[11];},
                  ],
                  [
                    'attribute'=>'category',
                    'value' => function($line){return $line[12];},
                  ],
                  [
                    'attribute'=>'number_of_model',
                    'value' => function($line){return $line[13];},
                  ],
                  [
                    'attribute'=>'OECD_portal_category',
                    'value' => function($line){return $line[14];},
                  ],
                  [
                    'attribute'=>'risk',
                    'value' => function($line){return $line[15];},
                  ],
                  [
                    'attribute'=>'compulsory_measures',
                    'value' => function($line){return $line[16];},
                  ],
                  [
                    'attribute'=>'voluntary_measures',
                    'value' => function($line){return $line[17];},
                  ],
                  [
                    'attribute'=>'company_recall_page',
                    'value' => function($line){return $line[18];},
                  ],
                  [
                    'attribute'=>'url_of_case',
                    'value' => function($line){return $line[19];},
                  ],
                  [
                    'attribute'=>'barcode',
                    'value' => function($line){return $line[20];},
                  ],
                  [
                    'attribute'=>'batch_number',
                    'value' => function($line){return $line[21];},
                  ],
                  [
                    'attribute'=>'packaging_description',
                    'value' => function($line){return $line[22];},
                  ],

                  ],
                  'skipImport' => function($line){
                      if($line[0] == NULL || $line[0] == ""){
                          return true;
                      }
                      if($line[1] == NULL || $line[1] == ""){
                          return true;
                      }
                  }
              ]));

        }
        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
            'model' => $model,
        ]);
        }
    }
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['index']);
        }

        return $this->render('_form', [
            'model' => $model,
        ]);
    }

    /**
     * Finds the EuProductRecalls model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return EuProductRecalls the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Core::findOne(['uid'=>$id])) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
