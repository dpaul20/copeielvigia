<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CopeiDownloadController extends Controller
{
        public function index()
    {
    	return view('/copei/descargas');
    }
}
