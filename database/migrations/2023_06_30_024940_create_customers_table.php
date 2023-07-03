<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /** 
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('db_customer', function (Blueprint $table) {
            $table->id(); //id
            $table->unsignedInteger('customer_id')->default(1);
            $table->string('name');
            $table->string('email');
            $table->string('phone');
            $table->string('roles');
            $table->mediumText('gender');
            $table->string('username');
            $table->string('password');
            $table->string('address');
            $table->unsignedTinyInteger('status')->default(2);
            $table->timestamps(); //created_at, updated_at

        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('db_customer');
    }
};
