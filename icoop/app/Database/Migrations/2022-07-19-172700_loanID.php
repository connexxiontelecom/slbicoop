<?php namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class LoanID extends Migration
{
	public function up()
	{
		//
        $fields = [
            'l_loanid' => [
                'type' => 'INTEGER',
                'null' => 'true',
                'default' => '0'
            ]
        ];
        $this->forge->addColumn('loan_applications', $fields);
        $this->forge->addColumn('loans', $fields);
	}

	//--------------------------------------------------------------------

	public function down()
	{
		//
	}
}
