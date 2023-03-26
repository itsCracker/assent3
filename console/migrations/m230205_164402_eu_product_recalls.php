<?php

use yii\db\Migration;

/**
 * Class m230205_164402_eu_product_recalls
 */
class m230205_164402_eu_product_recalls extends Migration
{
  public function up()
  {
      $tableOptions = null;
      if ($this->db->driverName === 'mysql') {
          $tableOptions = 'CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE=InnoDB';
      }
      $this->createTable('{{%eu_product_recalls}}', [
          'uid' => $this->primaryKey(),
          'type_of_alert' => $this->text(),
          'type' => $this->text(),
          'alert_number' => $this->text(),
          'alert_submitted_by' => $this->text(),
          'country_of_origin' => $this->text(),
          'counterfeit' => $this->text(),
          'risk_type' => $this->text(),
          'risk_legal_provision' => $this->text(),
          'product' => $this->text(),
          'name' => $this->text(),
          'description' => $this->text(),
          'brand' => $this->text(),
          'category' => $this->text(),
          'number_of_model' => $this->text(),
          'OECD_portal_category' => $this->text(),
          'risk' => $this->text(),
          'compulsory_measures' => $this->text(),
          'voluntary_measures' => $this->text(),
          'company_recall_page' => $this->text(),
          'url_of_case' => $this->text(),
          'barcode' => $this->text(),
          'batch_number' => $this->text(),
          'packaging_description' => $this->text(),
      ], $tableOptions);
  }
  public function down()
  {
      $this->dropTable('{{%eu_product_recalls}}');
  }
}
