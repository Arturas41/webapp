<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateToDoablesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('to_doables', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('to_do_id');
            $table->bigInteger('to_doable_id');
            $table->string('to_doable_type');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('to_doables');
    }
}
