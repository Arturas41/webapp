<?php

namespace App\Policies\CStudy;

use App\CStudyMaterial;
use App\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class MaterialPolicy
{
    use HandlesAuthorization;

    public function viewAny(User $user)
    {
        //
    }

    public function view(User $user, CStudyMaterial $material)
    {
        //
    }

    public function create(User $user)
    {
        //
    }

    public function update(User $user, CStudyMaterial $material)
    {
        return $material->user_id == $user->id;
    }

    public function delete(User $user, CStudyMaterial $material)
    {
        return $material->user_id == $user->id;
    }

    public function restore(User $user, CStudyMaterial $material)
    {
        return $material->user_id == $user->id;
    }

    public function forceDelete(User $user, CStudyMaterial $material)
    {
        return $material->user_id == $user->id;
    }
}
