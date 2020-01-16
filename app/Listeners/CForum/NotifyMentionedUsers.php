<?php

namespace App\Listeners\CForum;

use App\Events\CForum\ThreadReceivedNewReply;
use App\Notifications\CForum\YouWereMentioned;
use App\User;

class NotifyMentionedUsers
{
    public function handle(ThreadReceivedNewReply $event)
    {
        User::whereIn('name', $event->reply->mentionedUsers())
            ->get()
            ->each(function ($user) use ($event) {
                $user->notify(new YouWereMentioned($event->reply));
            });
    }
}
