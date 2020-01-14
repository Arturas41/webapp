<?php

namespace App\Policies\CForum;

use App\CForumReply;
use App\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class ReplyPolicy
{
    use HandlesAuthorization;

    public function update(User $user, CForumReply $reply)
    {
        return $reply->user_id == $user->id;
    }
}
