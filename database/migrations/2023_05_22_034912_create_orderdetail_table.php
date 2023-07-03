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
        Schema::create('db_orderdetail', function (Blueprint $table) {
            $table->id();
            $table->integer('orderid');
            $table->integer('productid');
            $table->double('price',12,2);
            $table->integer('qty');
            $table->double('amount',12,2);


            $table->timestamps();
        });
    }

    
    public function down(): void
    {
        Schema::dropIfExists('db_orderdetail');
    }
};
