<?php

namespace App\Http\Controllers;
use App\Group;
use App\Noticia;
use Illuminate\Http\Request;

class GroupListController extends Controller
{
    public function index(Group $group)
    {
    	$groups=Group::with('noticias')->orderBy('name','asc')->get();
    	//dd($groups);
        $noticias = \Auth::user()->noticias()->belongsToGroup($group); //$group->noticias->load('group'); 
        return view('/copei/noticia/lista', compact('groups', 'noticias' ));
    }
}
