<?php

namespace App\Http\Controllers\CForum;

use App\Http\Controllers\Controller;

class UserNotificationsController  extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
 
    public function index()
    {
        return auth()->user()->unreadNotifications;
    }
 
    public function destroy($user, $notificationId)
    {
        auth()->user()->notifications()->findOrFail($notificationId)->markAsRead();
    }
}
