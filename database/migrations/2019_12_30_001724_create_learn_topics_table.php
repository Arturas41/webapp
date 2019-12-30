<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLearnTopicsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('learn_topics', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('title');
            $table->text('note')->nullable();
            $table->boolean('done_theory')->default(0);
            $table->boolean('done_practice')->default(0);
            $table->integer('unknown_learn_topic_parent_id')->unsigned()->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('learn_topics');
    }
}
