<?php

use Faker\Generator as Faker;

$factory->define(App\Group::class, function (Faker $faker) {
    return [
        'name' => $faker->unique()->randomElement($array = array ('Nacional','Regiones','Opinión', 'Comunicados')),
        'created_at'=>$faker->dateTime,
        'updated_at'=>$faker->dateTime,
    ];
});
