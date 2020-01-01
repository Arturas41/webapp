<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;

class UserController extends Controller
{
    public function showAngleslashProfile($name)
    {
        $user = User::where('name', $name)->firstOrFail();

        return view('angleslash.profile')
            ->with('title', $user->name)
            ->with('user', $user);
    }
}
