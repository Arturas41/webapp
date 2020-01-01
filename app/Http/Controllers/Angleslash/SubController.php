<?php

namespace App\Http\Controllers\Angleslash;

use Illuminate\Http\Request;
use App\Http\Requests\Angleslash\SubFormRequest;
use App\AngleslashSub;
use App\Http\Controllers\Controller;

class SubController extends Controller
{
    public function show($name)
    {

        $sub = AngleslashSub::where('name', $name)->firstOrFail();

        return view('angleslash.sub')
            ->with('sub', $sub->name)
            ->with('posts', $sub->posts()->paginate(15));
    }

    public function displayform()
    {
        return view('angleslash.forms.createsub')
            ->with('title', 'Create Sub');
    }

    public function storesub(SubFormRequest $request)
    {

        $sub = new AngleslashSub;
        $sub->name = $request->get('name');
        $sub->owner_id = \Auth::id();
        $sub->save();



        return \Redirect::to('angleslash/r/' . $request->get('name'));
    }
}
