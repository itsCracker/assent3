<?php

use yii\db\Migration;

/**
 * Class m230301_143402_pro65
 */
class m230301_143402_pro65 extends Migration
{
    public function up()
  {
      $tableOptions = null;
      if ($this->db->driverName === 'mysql') {
          $tableOptions = 'CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE=InnoDB';
      }
      $this->createTable('{{%pro65}}', [
          'uid' => $this->primaryKey(),
          'ag_number' => $this->string(),
          'date' => $this->string(),
          'noticing_party' => $this->text(),
          'plaintiff_attoney' => $this->text(),
          'alleged_violatior' => $this->text(),
          'chemicals' => $this->text(),
          'source' => $this->text(),
          'comment' => $this->text(),
          'case_id' => $this->text(),
          'case_name' => $this->text(),
          'court_docket_number' => $this->text(),
          'civil_penalty' => $this->text(),
          'attorney_fees' => $this->text(),
          'other_payments' => $this->text(),
          'type_of_claim' => $this->text(),
          'relief_sought' => $this->text(),
          'injuctive_relief' => $this->text(),
      ], $tableOptions);
  }
  public function down()
  {
      $this->dropTable('{{%pro65}}');
  }
}
