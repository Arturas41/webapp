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
        $materials = CStudyMaterial::with(['tags','priority'])->latest()->get();

        return response($materials, 200);
    }

    public function show(CStudyMaterial $material){
        return response(CStudyMaterial::with(['tags','user','rating','priority'])->where('id',$material->id)->first(), 200);
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

        $material->updateTags(collect(request('tags')));

        if(request()->has('rating')){
            $material->createRating(request('rating'));
        }else{
            $material->createRating(2.5); //avarage
        }

        if(request()->has('priority')){
            $material->createPriority(request('priority'));
        }else{
            $material->createPriority(3); //moderate
        }

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

        $material->updateTags(collect(request('tags')));

        if(request()->has('rating')){
            $material->updateRating(request('rating'));
        }else{
            $material->updateRating(2.5);//avarage
        }
        
        if(request()->has('priority')){
            $material->updatePriority(request('priority'));
        }else{
            $material->updatePriority(3); //moderate
        }

        return response($material, 200);
    }

}
