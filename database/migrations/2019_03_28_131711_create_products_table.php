<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name',150);
            $table->float('price',11);
            $table->string('image',150);
            $table->text('description');
            $table->string('seo-title',50)->nullable();
            $table->string('seo-keyword',50)->nullable();
            $table->string('seo-description',50)->nullable();
            $table->string('seo-image',50)->nullable();
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
        Schema::dropIfExists('products');
    }
}
