<?php


namespace App\Http\Controllers;

use App\Component;
use App\User;

class ComponentController  extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }
    
    public function index()
    {
        $components = Component::all();

        return view('components')->with('components', $components);
    }
}
