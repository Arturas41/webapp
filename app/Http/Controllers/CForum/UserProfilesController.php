<?php

namespace App\Http\Controllers\CForum;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;

class UserProfilesController extends Controller
{

    public function show(User $user){
        return view('c_forum.user_profiles.show', [
            'user' => $user,
            'threads' => $user->cForumThreads()->paginate(1)
        ]);
    }

}
