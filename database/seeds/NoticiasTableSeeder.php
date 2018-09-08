<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class NoticiasTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\Noticia::class, 50)->create();   
    }
}
