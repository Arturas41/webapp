<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddReferenceIsUniqueToCStudyMaterialsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('c_study_materials', function (Blueprint $table) {
            $table->string('reference', 2048)->change();
            if (DB::getDriverName() !== 'sqlite') { 
                //not all 2048 in unique key length just 768. But 768 enough for unique URL(can't set unique index length with laravel's schema, so legth is set old fashion way)
                DB::statement('CREATE UNIQUE INDEX c_study_materials_reference_unique ON c_study_materials (reference(768));');
            }
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('c_study_materials', function (Blueprint $table) {
            if (DB::getDriverName() !== 'sqlite') { 
                $table->dropUnique('c_study_materials_reference_unique');
            }
        });
    }
}
