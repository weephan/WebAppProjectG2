<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
   {
       Schema::table('inventories', function (Blueprint $table) {
           $table->integer('max_stock')->after('current_stock'); // Adjust the position as needed
       });
   }


    /**
     * Reverse the migrations.
     */
    public function down()
   {
       Schema::table('inventories', function (Blueprint $table) {
           $table->dropColumn('max_stock');
       });
   }
};
