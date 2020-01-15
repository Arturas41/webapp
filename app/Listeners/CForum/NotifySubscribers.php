<?php

namespace App\Listeners\CForum;

use App\Events\CForum\ThreadReceivedNewReply;

class NotifySubscribers
{

    public function handle(ThreadReceivedNewReply $event)
    {
        $event->reply->thread->subscriptions
            ->where('user_id', '!=', $event->reply->user_id)
            ->each
            ->notify($event->reply);
    }
}
