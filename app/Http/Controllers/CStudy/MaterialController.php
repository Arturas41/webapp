<?php

namespace App\Http\Controllers\CStudy;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\CStudyMaterial;
use Alphametric\Validation\Rules\Lowercase;
use DB;

class MaterialController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth')->except(['index', 'show']);
    }

    public function index(){
        $materials = CStudyMaterial::with(['tags'])->latest()->get();

        return $materials;
    }

    public function show(CStudyMaterial $material){
        return CStudyMaterial::with(['tags','user'])->where('id',$material->id)->first();
    }

    public function store(){

        $this->validate(request(), [
            'title' => 'required|max:255|min:3',
            'reference' => 'required|max:2048|url|unique:c_study_materials',
            "tags.*"  => ['required', 'alpha_dash', new Lowercase],
        ]);


        $material = CStudyMaterial::create([
            'user_id' => auth()->id(),
            'title' => request('title'),
            'note' => request('note'),
            'reference' => request('reference')
        ]);

        $material->addTags(request('tags'));

        return response($material, 201);
    }

    public function destroy(CStudyMaterial $material){
        $this->authorize('delete', $material);
        $material->delete();
        return response([], 204);
    }

    public function update(CStudyMaterial $material){
        $this->authorize('update', $material);

        $this->validate(request(), [
            'title' => 'required|max:255|min:3',
            'reference' => 'required|max:2048|url|unique:c_study_materials,reference,' . $material->id,
            "tags.*"  => ['required', 'alpha_dash', new Lowercase],
        ]);
        
        $material->update([
            'title' => request('title'), 
            'reference' => request('reference'),
            'note' => request('note')
        ]);

        $material->addTags(request('tags'));

        return $material;
    }

}
