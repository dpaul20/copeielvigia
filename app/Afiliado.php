<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Afiliado extends Model
{
    protected	$fillable =['nombre','apellido','cedula', 'celular','correo','parroquia' ];
}
