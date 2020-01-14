<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;
use Illuminate\Foundation\Testing\DatabaseMigrations;

class CForumUserProfileTest extends TestCase
{
    use DatabaseMigrations;
 
    public function test_a_user_has_a_profile()
    {   
        $user = factory('App\User')->create();
        
        $this->withoutExceptionHandling()->get('/c_forum/user_profiles/' . $user->id)
            ->assertSee($user->name);
    }

    public function test_profiles_display_all_threads_by_the_user()
    {
        $this->actingAs(factory('App\User')->create());

        $thread = factory('App\CForumThread')->create(['user_id' => auth()->id()]);
 
        $this->withoutExceptionHandling()->get('/c_forum/user_profiles/' . auth()->id())
            ->assertSee($thread->title)
            ->assertSee($thread->body);
    }
}
