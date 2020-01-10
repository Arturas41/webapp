<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;
use Illuminate\Foundation\Testing\DatabaseMigrations;

class CForumThreadsTest extends TestCase
{
    use DatabaseMigrations;
    
    public function test_user_can_browse_threads(){
        $thread = factory('App\CForumThread')->create();

        $response = $this->get('/c_forum/threads');

        $response->assertSee($thread->title);
    }

    public function test_user_can_read_a_single_thread(){
        $thread = factory('App\CForumThread')->create();

        $response = $this->get('/c_forum/threads/' . $thread->id);

        $response->assertSee($thread->title);
    }
    
}
