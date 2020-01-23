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
        $materials = CStudyMaterial::latest()->get();

        return view('c_study/materials/index', compact('materials'));
    }

    public function store(){

        $this->validate(request(), [
            'title' => 'required|max:255',
            'reference' => 'required|max:2048|url'
        ]);

        $material = CStudyMaterial::create([
            'user_id' => auth()->id(),
            'title' => request('title'),
            'reference' => request('reference')
        ]);

        return redirect($material->path())->with('flash', 'Created:' . $material->title);;
    }

}