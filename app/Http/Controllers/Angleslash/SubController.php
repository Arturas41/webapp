<?php

namespace App\Http\Controllers\Angleslash;

use Illuminate\Http\Request;
use App\Http\Requests\Angleslash\SubFormRequest;
use App\AngleslashSub;
use App\Http\Controllers\Controller;

class SubController extends Controller
{
    
    public function __construct()
    {
        $this->middleware('auth')->except(['show']);
    }
 
    public function show(AngleslashSub $sub)
    {
        return [
            'sub' => $sub,
            'posts' => $sub->posts
        ];
    }

    public function store(SubFormRequest $request)
    {
        $this->validate(request(), [
            'name' => 'required|min:3|max:20|alpha_dash|unique:angleslash_subs'
        ]);

        $sub = new AngleslashSub;
        $sub->name = request('name');
        $sub->owner_id = \Auth::id();
        $sub->save();
        return $sub;
    }

}
