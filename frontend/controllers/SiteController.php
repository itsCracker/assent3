<?php

namespace frontend\controllers;

use Yii;
use yii\web\Controller;
use app\models\CsvSearch;
use yii\web\UploadedFile;
use app\models\FileSearch;
use common\models\LoginForm;
use app\models\CountriesSearch;
use backend\models\Pro65Search;
use ruskid\csvimporter\CSVReader;
use ruskid\csvimporter\CSVImporter;
use frontend\models\VerifyEmailForm;
use yii\web\BadRequestHttpException;
use frontend\models\ResetPasswordForm;
use yii\base\InvalidArgumentException;
use backend\models\EuProductRecallsSearch;
use frontend\models\PasswordResetRequestForm;
use ruskid\csvimporter\MultipleImportStrategy;
use frontend\models\ResendVerificationEmailForm;

/**
 * Site controller
 */
class SiteController extends Controller
{
    /**
     * {@inheritdoc}
     */


    /**
     * {@inheritdoc}
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }

    /**
     * Displays homepage.
     *
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new CountriesSearch();
        if ($searchModel->load(Yii::$app->request->get())) {
            $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
        } else {
            $dataProvider = null;
        }

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }
    public function actionPro65($type = null)
    {
        if ($type != 'file') {
            $searchModel = new \backend\models\Pro65Search();
            if ($searchModel->load(Yii::$app->request->get())) {
                $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
            } else {
                $dataProvider = null;
            }
            return $this->render('pro65', [
                'searchModel' => $searchModel,
                'dataProvider' => $dataProvider,
            ]);
        } else {
            $searchModel = new Pro65Search();
            $model = new FileSearch;
            $importer = new CSVImporter;
            $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
            $dataProvider->query->where(['IN', 'alleged_violatior', FileSearch::find()->select(['name'])->where(['user_id' => Yii::$app->user->identity->id])]);

            if ($model->load(Yii::$app->request->post())) {
                FileSearch::deleteAll(['user_id' => Yii::$app->user->identity->id]);
                $model->myfile = UploadedFile::getInstance($model, 'myfile');
                $importer->setData(new CSVReader([
                    'filename' => $model->myfile->tempName == null ? $model->myfile->name : $model->myfile->tempName,
                    'fgetcsvOptions' => [
                        'delimiter' => ','
                    ]
                ]));
                $numberRowsAffected = $importer->import(new MultipleImportStrategy([
                    'tableName' => FileSearch::tableName(),
                    'className' => FileSearch::className(),
                    'configs' => [
                        [
                            'attribute' => 'name',
                            'value' => function ($line) {
                                return strtoupper($line[0]);
                            },
                        ],
                        [
                            'attribute' => 'user_id',
                            'value' => function ($line) {
                                return Yii::$app->user->identity->id;
                            },
                        ],

                    ],
                ]));
            }
            return $this->render('pro65', [
                'searchModel' => $searchModel,
                'dataProvider' => $dataProvider,
                'model' => $model,
            ]);
        }
    }
    public function actionRecalls($type = null)
    {
        if ($type != 'file') {
            $searchModel = new EuProductRecallsSearch();
            if ($searchModel->load(Yii::$app->request->get())) {
                $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
            } else {
                $dataProvider = null;
            }

            return $this->render('recalls', [
                'searchModel' => $searchModel,
                'dataProvider' => $dataProvider,
            ]);
        } else {
            $searchModel = new EuProductRecallsSearch();
            $model = new FileSearch;
            $importer = new CSVImporter;
            $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
            $dataProvider->query->orFilterWhere(['IN', 'brand', FileSearch::find()->select(['name'])->where(['user_id' => Yii::$app->user->identity->id])])
                        ->orFilterWhere(['IN', 'name', FileSearch::find()->select(['name'])->where(['user_id' => Yii::$app->user->identity->id])]);

            if ($model->load(Yii::$app->request->post())) {
                FileSearch::deleteAll(['user_id' => Yii::$app->user->identity->id]);
                $model->myfile = UploadedFile::getInstance($model, 'myfile');
                $importer->setData(new CSVReader([
                    'filename' => $model->myfile->tempName == null ? $model->myfile->name : $model->myfile->tempName,
                    'fgetcsvOptions' => [
                        'delimiter' => ','
                    ]
                ]));
                $numberRowsAffected = $importer->import(new MultipleImportStrategy([
                    'tableName' => FileSearch::tableName(),
                    'className' => FileSearch::className(),
                    'configs' => [
                        [
                            'attribute' => 'name',
                            'value' => function ($line) {
                                return strtoupper($line[0]);
                            },
                        ],
                        [
                            'attribute' => 'user_id',
                            'value' => function ($line) {
                                return Yii::$app->user->identity->id;
                            },
                        ],

                    ],
                ]));
            }
            return $this->render('recalls', [
                'searchModel' => $searchModel,
                'dataProvider' => $dataProvider,
                'model' => $model,
            ]);

        }
    }
    public function actionFile()
    {

        $searchModel = new CsvSearch();
        $model = new FileSearch;
        $importer = new CSVImporter;
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
        // $dataProvider = new ActiveDataProvider([
        //     'query' => UserProfile::find()->joinWith(['user(relation_name)'])->where(['<>','user.status',0])
        // ]);
        $dataProvider->query->where(['IN', 'name', FileSearch::find()->select(['name'])->where(['user_id' => Yii::$app->user->identity->id])]);
        //->orFilterWhere(['IN', 'alt_names', FileSearch::find()->select(['alias_name'])->where(['user_id'=>Yii::$app->user->identity->id])]);
        //->andFilterWhere(['IN', 'name', FileSearch::find()->select(['passpandt_details'])->where(['user_id'=>Yii::$app->user->identity->id])])
        // ->andFilterWhere(['IN', 'nationalities', FileSearch::find()->select(['nationalities'])->where(['user_id'=>Yii::$app->user->identity->id])])
        // ->andFilterWhere(['IN', 'citizenships', FileSearch::find()->select(['citizenships'])->where(['user_id'=>Yii::$app->user->identity->id])])
        // ->andFilterWhere(['IN', 'entity_number', FileSearch::find()->select(['entity_number'])->where(['user_id'=>Yii::$app->user->identity->id])]);
        //$dataProvider->query->Where(['user_id'=>Yii::$app->user->identity->id]);

        if ($model->load(Yii::$app->request->post())) {
            FileSearch::deleteAll(['user_id' => Yii::$app->user->identity->id]);
            $model->myfile = UploadedFile::getInstance($model, 'myfile');
            $importer->setData(new CSVReader([
                'filename' => $model->myfile->tempName == null ? $model->myfile->name : $model->myfile->tempName,
                'fgetcsvOptions' => [
                    'delimiter' => ','
                ]
            ]));
            $numberRowsAffected = $importer->import(new MultipleImportStrategy([
                'tableName' => FileSearch::tableName(),
                'className' => FileSearch::className(),
                'configs' => [
                    [
                        'attribute' => 'name',
                        'value' => function ($line) {
                            return strtoupper($line[1]);
                        },
                    ],
                    [
                        'attribute' => 'alias_name',
                        'value' => function ($line) {
                            return strtoupper($line[2]);
                        },
                    ],
                    [
                        'attribute' => 'passport_details',
                        'value' => function ($line) {
                            return strtoupper($line[3]);
                        },
                    ],
                    [
                        'attribute' => 'nationalities',
                        'value' => function ($line) {
                            return strtoupper($line[4]);
                        },
                    ],
                    [
                        'attribute' => 'citizenships',
                        'value' => function ($line) {
                            return strtoupper($line[5]);
                        },
                    ],
                    [
                        'attribute' => 'entity_number',
                        'value' => function ($line) {
                            return strtoupper($line[6]);
                        },
                    ],
                    [
                        'attribute' => 'user_id',
                        'value' => function ($line) {
                            return Yii::$app->user->identity->id;
                        },
                    ],

                ],
            ]));
        }
        return $this->render('file', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
            'model' => $model,
        ]);
    }
    public function actionClear()
    {
        FileSearch::deleteAll(['user_id' => Yii::$app->user->identity->id]);;
        return $this->redirect(['index']);
    }

    /**
     * Logs in a user.
     *
     * @return mixed
     */
    public function actionLogin()
    {
        if (!Yii::$app->user->isGuest) {
            return $this->goHome();
        }

        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {
            return $this->goBack();
        } else {
            $model->password = '';
            return $this->render('login', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Logs out the current user.
     *
     * @return mixed
     */
    public function actionLogout()
    {
        Yii::$app->user->logout();

        return $this->goHome();
    }

    /**
     * Displays contact page.
     *
     * @return mixed
     */
    public function actionRequestPasswordReset()
    {
        $model = new PasswordResetRequestForm();
        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            if ($model->sendEmail()) {
                Yii::$app->session->setFlash('success', 'Check your email for further instructions.');

                return $this->goHome();
            } else {
                Yii::$app->session->setFlash('error', 'Sorry, we are unable to reset password for the provided email address.');
            }
        }

        return $this->render('requestPasswordResetToken', [
            'model' => $model,
        ]);
    }

    /**
     * Resets password.
     *
     * @param string $token
     * @return mixed
     * @throws BadRequestHttpException
     */
    public function actionResetPassword($token)
    {
        try {
            $model = new ResetPasswordForm($token);
        } catch (InvalidArgumentException $e) {
            throw new BadRequestHttpException($e->getMessage());
        }

        if ($model->load(Yii::$app->request->post()) && $model->validate() && $model->resetPassword()) {
            Yii::$app->session->setFlash('success', 'New password saved.');

            return $this->goHome();
        }

        return $this->render('resetPassword', [
            'model' => $model,
        ]);
    }

    /**
     * Verify email address
     *
     * @param string $token
     * @throws BadRequestHttpException
     * @return yii\web\Response
     */
    public function actionVerifyEmail($token)
    {
        try {
            $model = new VerifyEmailForm($token);
        } catch (InvalidArgumentException $e) {
            throw new BadRequestHttpException($e->getMessage());
        }
        if ($user = $model->verifyEmail()) {
            if (Yii::$app->user->login($user)) {
                Yii::$app->session->setFlash('success', 'Your email has been confirmed!');
                return $this->goHome();
            }
        }

        Yii::$app->session->setFlash('error', 'Sorry, we are unable to verify your account with provided token.');
        return $this->goHome();
    }

    /**
     * Resend verification email
     *
     * @return mixed
     */
    public function actionResendVerificationEmail()
    {
        $model = new ResendVerificationEmailForm();
        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            if ($model->sendEmail()) {
                Yii::$app->session->setFlash('success', 'Check your email for further instructions.');
                return $this->goHome();
            }
            Yii::$app->session->setFlash('error', 'Sorry, we are unable to resend verification email for the provided email address.');
        }

        return $this->render('resendVerificationEmail', [
            'model' => $model
        ]);
    }
}
