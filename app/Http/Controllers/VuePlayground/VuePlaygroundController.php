<?php

namespace App\Http\Controllers\VuePlayground;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class VuePlaygroundController extends Controller
{
    public function index()
    {
        return view('vue_playground.index');
    }

}
