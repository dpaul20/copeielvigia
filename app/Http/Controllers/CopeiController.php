<?php

namespace App\Http\Controllers;

use App\Noticia;
use App\Afiliado;
use Illuminate\Http\Request;
use App\Http\Requests\AfiliadoRequest;

class CopeiController extends Controller
{
    public function index() //Muestra las tres ultimas noticias
    {
    	$noticias = Noticia::latest()->paginate(2);
        //Copei::create(request()->all());
    	return view('/welcome', ['noticias'=>$noticias]);
    }

    public function create() //Registrar  copeyano
    {

    }


    public function edit() //editar noticia
    {
    	# code...
    }

    public function update()
    {
    	# code...
    }

    public function destroy()
    {
    	# code...
    }
}
