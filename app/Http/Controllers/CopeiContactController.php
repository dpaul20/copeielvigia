<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CopeiContactController extends Controller
{
    public function index()
    {
    	return view('/copei/contactos');
    }
}
