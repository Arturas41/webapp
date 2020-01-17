<?php

namespace App\Http\Controllers\CStudy;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\CStudyMaterial;

class MaterialController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth')->except(['index', 'show']);
    }

    public function index(){
        return view('c_study/index');
    }

    public function store(){

        //$this->validate($request, [
        //    'title' => 'required'
        //]);

        $material = CStudyMaterial::create([
            'user_id' => auth()->id(),
            'title' => request('title'),
            'reference' => request('reference')
        ]);

        return redirect($material->path())->with('flash', 'Created:' . $material->title);;
    }

}
