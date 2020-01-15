<?php

namespace App;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token', 'email',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function games()
    {
        return $this->hasMany(Game::class);
    }
    
    public function reviews()
    {
        return $this->hasMany(Review::class);
    }

    public function posts()
    {
        return $this->hasMany('App\AngleslashPost');
    }

    public function subs()
    {
        return $this->hasMany('App\AngleslashSub');
    }

    public function postvotes()
    {
        return $this->hasMany('App\AngleslashPostVote');
    }

    public static function activeusers(){
        return static::selectRaw('users.name, count(*) submitted_games')
            ->join('games', 'games.user_id', '=', 'users.id')
            ->groupBy('users.name')
            ->orderBy('submitted_games', 'DESC')
            ->get();
    }

    public function cForumThreads()
    {
        return $this->hasMany(CForumThread::class)->latest();
    }

    public function activity()
    {
        return $this->hasMany(Activity::class);
    }
}
