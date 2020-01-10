<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;
use Illuminate\Foundation\Testing\DatabaseMigrations;

class CForumReadThreadsTest extends TestCase
{
    use DatabaseMigrations;

    public function setUp() : void{
        parent::setUp();

        $this->thread = factory('App\CForumThread')->create();
    }
    
    public function test_user_can_browse_threads(){
        $response = $this->get('/c_forum/threads');

        $response->assertSee($this->thread->title);
    }

    public function test_user_can_read_a_single_thread(){
        $response = $this->get('/c_forum/threads/' . $this->thread->id);

        $response->assertSee($this->thread->title);
    }

    public function test_user_can_see_replies_that_are_associated_with_threads(){
        $reply = factory('App\CForumReply')->create(['c_forum_thread_id' => $this->thread->id]);
        
        $response= $this->get('/c_forum/threads/' . $this->thread->id);

        $response->assertSee($reply->body);
        
    }
    
}