<?php

namespace backend\controllers;

use Yii;
use backend\models\Pro65 as Core;
use backend\models\Pro65Search;
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
 * Pro65Controller implements the CRUD actions for Pro65 model.
 */
class Pro65Controller extends Controller
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
        $searchModel = new Pro65Search();
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
                    'attribute'=>'ag_number',
                    'value' => function($line){return $line[0];},
                  ],
                  [
                    'attribute'=>'date',
                    'value' => function($line){return $line[1];},
                  ],
                  [
                    'attribute'=>'noticing_party',
                    'value' => function($line){return $line[2];},
                  ],
                  [
                    'attribute'=>'plaintiff_attoney',
                    'value' => function($line){return $line[3];},
                  ],
                  [
                    'attribute'=>'alleged_violatior',
                    'value' => function($line){return $line[4];},
                  ],
                  [
                    'attribute'=>'chemicals',
                    'value' => function($line){return $line[5];},
                  ],
                  [
                    'attribute'=>'source',
                    'value' => function($line){return $line[6];},
                  ],
                  [
                    'attribute'=>'comment',
                    'value' => function($line){return $line[7];},
                  ],
                  [
                    'attribute'=>'case_id',
                    'value' => function($line){return $line[8];},
                  ],
                  [
                    'attribute'=>'case_name',
                    'value' => function($line){return $line[9];},
                  ],
                  [
                    'attribute'=>'court_docket_number',
                    'value' => function($line){return $line[10];},
                  ],
                  [
                    'attribute'=>'civil_penalty',
                    'value' => function($line){return $line[11];},
                  ],
                  [
                    'attribute'=>'attorney_fees',
                    'value' => function($line){return $line[12];},
                  ],
                  [
                    'attribute'=>'other_payments',
                    'value' => function($line){return $line[13];},
                  ],
                  [
                    'attribute'=>'type_of_claim',
                    'value' => function($line){return $line[14];},
                  ],
                  [
                    'attribute'=>'relief_sought',
                    'value' => function($line){return $line[15];},
                  ],
                  [
                    'attribute'=>'injuctive_relief',
                    'value' => function($line){return $line[16];},
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
    public function update($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['index']);
        }

        return $this->render('_form', [
            'model' => $model,
        ]);
    }
    protected function findModel($id)
    {
        if (($model = Core::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
