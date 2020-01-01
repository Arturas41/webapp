<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\SubFormRequest;
use App\Sub;

class SubController extends Controller
{
    public function show($name)
    {
        $sub = Sub::where('name', $name)->firstOrFail();

        return view('sub')
            ->with('sub', $sub->name)
            ->with('posts', $sub->posts()->paginate(15));
    }

    public function displayform()
    {
        return view('forms.createsub')
            ->with('title', 'Create Sub');
    }

    public function storesub(SubFormRequest $request)
    {
        $sub = new Sub;
        $sub->name = $request->get('name');
        $sub->owner_id = \Auth::id();
        $sub->save();

        return \Redirect::to('angleslash/r/' . $request->get('name'));
    }
}
