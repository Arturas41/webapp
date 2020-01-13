<?php

namespace App\Policies\CForum;

use App\CForumThread;
use App\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class ThreadPolicy
{
    use HandlesAuthorization;

    /**
     * Determine whether the user can view any c model threads.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function viewAny(User $user)
    {
        //
    }

    /**
     * Determine whether the user can view the c model thread.
     *
     * @param  \App\User  $user
     * @param  \App\CForumThread  $thread
     * @return mixed
     */
    public function view(User $user, CForumThread $thread)
    {
        //
    }

    /**
     * Determine whether the user can create c model threads.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function create(User $user)
    {
        //
    }

    /**
     * Determine whether the user can update the c model thread.
     *
     * @param  \App\User  $user
     * @param  \App\CForumThread  $thread
     * @return mixed
     */
    public function update(User $user, CForumThread $thread)
    {
        return $thread->user_id == $user->id;
    }

    /**
     * Determine whether the user can delete the c model thread.
     *
     * @param  \App\User  $user
     * @param  \App\CForumThread  $thread
     * @return mixed
     */
    public function delete(User $user, CForumThread $thread)
    {
        //
    }

    /**
     * Determine whether the user can restore the c model thread.
     *
     * @param  \App\User  $user
     * @param  \App\CModelThread  $thread
     * @return mixed
     */
    public function restore(User $user, CForumThread $thread)
    {
        //
    }

    /**
     * Determine whether the user can permanently delete the c model thread.
     *
     * @param  \App\User  $user
     * @param  \App\CForumThread  $thread
     * @return mixed
     */
    public function forceDelete(User $user, CForumThread $thread)
    {
        //
    }
}
