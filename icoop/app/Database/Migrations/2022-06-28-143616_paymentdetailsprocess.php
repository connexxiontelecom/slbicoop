<?php namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Paymentdetailsprocess extends Migration
{
	public function up()
	{
		//
        $fields = [
            'pd_upload_date' => [
                'type' => 'DATE',
                'null' => 'true'
            ],

            'pd_upload_by' => [
                'type' => 'TEXT',
                'null' => 'true'
            ],

            'pd_processed_date' => [
                'type' => 'DATE',
                'null' => 'true'
            ],

            'pd_processed_by' => [
                'type' => 'TEXT',
                'null' => 'true'
            ],

        ];
        $this->forge->addColumn('payment_details', $fields);
	}

	//--------------------------------------------------------------------

	public function down()
	{
		//
	}
}
