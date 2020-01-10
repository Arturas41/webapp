<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddCForumChannelIdToCForumThreadsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('c_forum_threads', function (Blueprint $table) {
            if (DB::getDriverName() !== 'sqlite') { 
                $table->bigInteger('c_forum_channel_id')->after('user_id');
            }else{
                $table->bigInteger('c_forum_channel_id')->default(0);
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
        Schema::table('c_forum_threads', function (Blueprint $table) {
            $table->dropColumn(['c_forum_channel_id']);
        });
    }
}
