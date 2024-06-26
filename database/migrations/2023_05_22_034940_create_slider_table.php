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
        Schema::create('db_slider', function (Blueprint $table) {
            $table->id(); //id
            $table->string('name', 1000);
            $table->string('link', 1000);
            $table->string('image')->default(0);
            $table->unsignedInteger('position');
            $table->string('sort_order');
            $table->unsignedInteger('created_by')->default(1);
            $table->unsignedInteger('updated_by')->nullable();
            $table->unsignedTinyInteger('status')->default(2);
            $table->timestamps(); //created_at, updated_at

        });
    }

  
    public function down(): void
    {
        Schema::dropIfExists('db_slider');
    }
};
