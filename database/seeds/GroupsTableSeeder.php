<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
class GroupsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
    	factory(App\Group::class, 4)->create();
    }
}
