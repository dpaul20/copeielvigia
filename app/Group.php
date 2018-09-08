<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Group extends Model
{
    protected	$fillable =['name', 'id'];

    public function noticias()
    {
    	return $this->hasMany(Noticia::class);
    }
}
