<?php

namespace App\Http\Controllers;

use App\Group;
use App\Noticia;
use Illuminate\Http\Request;
use App\Http\Requests\NoticiaRequest;

class NoticiaController extends Controller
{
	public function index() //Muestra todas las noticias
    {
        $noticias = Noticia::UltimasNoticias();

        return view('/copei/noticias', ['noticias'=>$noticias]);
    }

	public function show(Noticia $noticia) //Muestra una noticia
    {
    	//$noticia=Noticia::findOrFail($id);

    	return view('/copei/noticia/nota', ['noticia'=>$noticia]);
    }
     public function create() //Crear noticia
    {
        $groups=Group::pluck('name', 'id');
    	return view('/copei/noticia/create', compact('groups'));
    }

    public function store(NoticiaRequest $request)
    {
    	$noticia= new Noticia(request()->all());
        \Auth::user()->notas()->save($noticia);
    	return back();

    }

    public function edit(Noticia $noticia) //editar noticia
    {
        $groups=Group::pluck('name', 'id');
    	return view('/copei/noticia/edit', compact('noticia','groups'));
    }

    public function update(Noticia $noticia, NoticiaRequest $request) //actualizar noticia
    {
    	$noticia->update(request()->all());
    	return redirect('/noticias/');
   	}

    public function destroy(Noticia $noticia)
    {
    	$noticia->delete();
    	return redirect('/noticias/');
    }
}
