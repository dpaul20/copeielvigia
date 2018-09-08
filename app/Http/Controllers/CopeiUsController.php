<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CopeiUsController extends Controller
{
    public function index()
    {
    	return view('/copei/nosotros');
    }
}
