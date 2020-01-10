<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;
use Illuminate\Foundation\Testing\DatabaseMigrations;

class CForumCreateThreadsTest extends TestCase
{
    use DatabaseMigrations;

    public function test_a_logged_in_user_can_create_new_threads(){
        $this->actingAs(factory('App\User')->create());

        $thread = factory('App\CForumThread')->create();

        $this->post('/c_forum/threads', $thread->toArray());

        $this->get($thread->path())->assertSee($thread->title);
    }

    function test_guest_can_not_create_threads()
    {
        $this->expectException('Illuminate\Auth\AuthenticationException');

        $this->get('/c_forum/threads/create')->assertRedirect('/login');
 
        $this->post('/c_forum/threads')->assertRedirect('login');
    }

}
