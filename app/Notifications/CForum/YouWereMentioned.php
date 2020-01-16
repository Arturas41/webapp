<?php
 
namespace App\Notifications\CForum;
 
use Illuminate\Bus\Queueable;
use Illuminate\Notifications\Notification;
 
class YouWereMentioned extends Notification
{
    use Queueable;
 
    protected $reply;
 
    public function __construct($reply)
    {
        $this->reply = $reply;
    }
 
    public function via($notifiable)
    {
        return ['database'];
    }
 
    public function toArray($notifiable)
    {
        return [
            'message' => $this->reply->owner->name . ' mentioned you in ' . $this->reply->thread->title,
            'link' => $this->reply->path()
        ];
    }
}