<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class ForeignKeys extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if (DB::getDriverName() !== 'sqlite') { //Problem dropping foreign keys when run tests using in memory sqlite
            Schema::table('angleslash_posts', function (Blueprint $table) {
                $table->foreign('sub_id')->references('id')->on('angleslash_subs')
                    ->onDelete('restrict')
                    ->onUpdate('restrict');
            });
            Schema::table('angleslash_posts', function (Blueprint $table) {
                $table->foreign('user_id')->references('id')->on('users')
                    ->onDelete('restrict')
                    ->onUpdate('restrict');
            });
            Schema::table('angleslash_subs', function (Blueprint $table) {
                $table->foreign('owner_id')->references('id')->on('users')
                    ->onDelete('restrict')
                    ->onUpdate('restrict');
            });
            Schema::table('angleslash_post_votes', function (Blueprint $table) {
                $table->foreign('user_id')->references('id')->on('users')
                    ->onDelete('restrict')
                    ->onUpdate('restrict');
            });
            Schema::table('angleslash_post_votes', function (Blueprint $table) {
                $table->foreign('post_id')->references('id')->on('angleslash_posts')
                    ->onDelete('restrict')
                    ->onUpdate('restrict');
            });
        }
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        if (DB::getDriverName() !== 'sqlite') { //Problem dropping foreign keys when run tests using in memory sqlite
            Schema::table('angleslash_posts', function (Blueprint $table) {
                $table->dropForeign('angleslash_posts_sub_id_foreign');
            });
            Schema::table('angleslash_posts', function (Blueprint $table) {
                $table->dropForeign('angleslash_posts_user_id_foreign');
            });
            Schema::table('angleslash_subs', function (Blueprint $table) {
                $table->dropForeign('angleslash_subs_owner_id_foreign');
            });
            Schema::table('angleslash_post_votes', function (Blueprint $table) {
                $table->dropForeign('angleslash_post_votes_user_id_foreign');
            });
            Schema::table('angleslash_post_votes', function (Blueprint $table) {
                $table->dropForeign('angleslash_post_votes_post_id_foreign');
            });
        }
    }
}
