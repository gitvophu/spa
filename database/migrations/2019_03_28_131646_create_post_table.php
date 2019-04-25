<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePostTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('posts', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title',150);
            $table->string('image',150);
            $table->text('content');
            $table->string('seoTitle',50)->nullable();
            $table->string('seoKeyword',50)->nullable();
            $table->string('seoDescription',50)->nullable();
            $table->string('fb_app_id',50)->nullable();
            $table->string('google_analyst',50)->nullable();
            $table->string('slug',50)->nullable();
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
        Schema::dropIfExists('posts');
    }
}
