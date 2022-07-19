<?php namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Loanwaiver extends Migration
{
	public function up()
	{
		//
        $fields = [
            'waiver' => [
                'type' => 'DOUBLE',
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
