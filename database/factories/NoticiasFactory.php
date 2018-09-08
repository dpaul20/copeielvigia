<?php

use Faker\Generator as Faker;

$factory->define(App\Noticia::class, function (Faker $faker) {
    return [
        'titulo'=>$faker->sentence($nbWords = 6, $variableNbWords = true),
        'group_id'=>$faker->numberBetween($min = 1, $max = 4),
        'user_id'=>$faker->numberBetween($min = 1, $max = 10),
		'cuerpo'=>$faker->text($maxNbChars = 200),
		'importan'=>$faker->boolean,
        'created_at'=>$faker->dateTime,
        'updated_at'=>$faker->dateTime,
    ];
});
