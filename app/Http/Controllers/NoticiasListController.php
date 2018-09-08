<?php

namespace App\Http\Controllers;
use App\Group;
use App\Noticia;
use Illuminate\Http\Request;

class NoticiasListController extends Controller
{
    public function index()
    {
    	$groups=Group::with('noticias')->orderBy('name','asc')->get();
        $noticias = \Auth::user()->noticias()->with('group')->latest()->limit(30)->get();
        return view('/copei/noticia/lista', compact('groups', 'noticias' ));
    }
}
