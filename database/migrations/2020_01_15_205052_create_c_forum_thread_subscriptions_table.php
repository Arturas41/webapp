<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCForumThreadSubscriptionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('c_forum_thread_subscriptions', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('user_id')->unsigned();
            $table->bigInteger('c_forum_thread_id')->unsigned();
            $table->unique(['user_id', 'c_forum_thread_id']);
            $table->timestamps();
            if (DB::getDriverName() !== 'sqlite') {
                $table->foreign('c_forum_thread_id')
                    ->references('id')
                    ->on('c_forum_threads')
                    ->onDelete('cascade');
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
        Schema::dropIfExists('c_forum_thread_subscriptions');
    }
}
