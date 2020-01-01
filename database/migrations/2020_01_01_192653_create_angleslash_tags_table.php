<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAngleslashTagsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('angleslash_tags', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->timestamps();
        });

        Schema::create('angleslash_post_angleslash_tag', function (Blueprint $table) {
            $table->integer('angleslash_post_id')->unsigned()->index();
            $table->foreign('angleslash_post_id')->references('id')->on('angleslash_posts')->onDelete('cascade');

            $table->integer('angleslash_tag_id')->unsigned()->index();
            $table->foreign('angleslash_tag_id')->references('id')->on('angleslash_tags')->onDelete('cascade');

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
        Schema::drop('angleslash_tags');
        Schema::drop('angleslash_post_angleslash_tag');
    }
}
