<?php

namespace App\Http\Controllers\CForum;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;

class UserProfilesController extends Controller
{

    public function show(User $user){
        $activities = $user->activity()->latest()->with('subject')
            ->whereIn('type', ['created_CForumReply', 'created_CForumThread'])
            ->get()
            ->groupBy(function ($activity){
                return $activity->created_at->format('Y-m-d');
            });

        return view('c_forum.user_profiles.show', [
            'user' => $user,
            'activities' => $activities
        ]);
    }

}
