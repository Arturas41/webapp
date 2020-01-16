<?php

namespace App\Http\Controllers\VuePlayground;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class VuePlayground2Controller extends Controller
{
    public function index()
    {
        return view('vue_playground2.index');
    }

}
