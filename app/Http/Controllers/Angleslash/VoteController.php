<?php

namespace App\Http\Controllers\Angleslash;

use Illuminate\Http\Request;
use App\AngleslashPostVote;
use App\Http\Controllers\Controller;

class VoteController extends Controller
{
    public function vote(Request $request)
    {
        $class = $request->input('class');
        $postId = $request->input('postId');
        $previousVote = AngleslashPostVote::where('user_id', \Auth::id())->where('post_id', $postId)->first();
        $isUpvote = strpos($class, 'up');

        // If there is a vote by the same user on the same post
        if (!is_null($previousVote)) {
            if ($isUpvote) {
                if ($previousVote->type === 'up') {
                    // Cancel out previous upvote
                    $previousVote->delete();
                } else {
                    $previousVote->update(['type' => 'up']);
                }
            } else {
                if ($previousVote->type === 'down') {
                    // Cancel out previous downvote
                    $previousVote->delete();
                } else {
                    $previousVote->update(['type' => 'down']);
                }
            }
        } else {

            // Create a new vote
            AngleslashPostVote::create([
                'type' => $isUpvote ? 'up' : 'down',
                'user_id' => \Auth::id(),
                'post_id' => $postId
            ]);
        }
    }
}
