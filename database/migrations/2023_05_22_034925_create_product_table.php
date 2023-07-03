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
        Schema::create('db_product', function (Blueprint $table) {
            $table->id(); //id
            $table->string('catid', 1000);
            $table->string('brandid', 1000);
            $table->string('name', 1000);
            $table->string('slug', 1000);
            $table->string('image', 1000)->nullable();
            $table->string('detail', 1000);
            $table->string('metakey');
            $table->string('metadesc');
            $table->integer('qty', 1000);
            $table->double('price',12,2);
            $table->double('price_sale',12,2);  
            $table->unsignedInteger('created_by')->default(1);
            $table->unsignedInteger('updated_by')->nullable();
            $table->unsignedTinyInteger('status')->default(2);
            $table->timestamps(); //created_at, updated_at
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('db_product');
    }
};
