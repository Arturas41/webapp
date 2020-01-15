<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Notifications\CForum\ThreadWasUpdated;

class CForumThreadSubscription extends Model
{
    protected $guarded = [];

    public function user()
    {
        return $this->belongsTo(User::class);
    }
 
    public function thread()
    {
        return $this->belongsTo(CForumThread::class, 'c_forum_thread_id');
    }

    public function notify($reply)
    {
        $this->user->notify(new ThreadWasUpdated($this->thread, $reply));
    }
}
