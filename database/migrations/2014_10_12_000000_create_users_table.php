<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        // Email, Họ tên, Điện thoại, Mật khẩu mã hóa, thời điểm đăng ký
        Schema::create('users', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name')->nullable();
            $table->string('email',100)->unique();
            $table->string('phone',100)->nullable();
            $table->string('password');
            $table->string('reset_pass_token',100);
            $table->timestamp('last_access')->nullable();
            $table->integer('attempt')->nullable()->default(0);
            $table->integer('active')->default(1);
            $table->rememberToken();
            $table->timestamps();
        });
    }

    // $table->rememberToken();
    // $table->timestamps();
    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('users');
    }
}
