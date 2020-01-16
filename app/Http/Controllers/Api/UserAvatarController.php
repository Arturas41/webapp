<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;

class UserAvatarController extends Controller
{
    public function store(User $user)
    {
        $this->validate(request(), [
            'avatar' => ['required', 'image']
        ]);
        auth()->user()->update([
            'avatar_path' => 'storage/' . request()->file('avatar')->store('avatars', 'public')
        ]);
        return response([], 204);
    }
}
