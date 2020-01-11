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
        $response = $this->get('/c_forum/threads/' . $this->thread->channel . '/' . $this->thread->id);

        $response->assertSee($this->thread->title);
    }

    public function test_user_can_see_replies_that_are_associated_with_threads(){
        $reply = factory('App\CForumReply')->create(['c_forum_thread_id' => $this->thread->id]);
        
        $response= $this->get('/c_forum/threads/' . $this->thread->id . '/' . $this->thread->id);

        $response->assertSee($reply->body);
        
    }
    
    public function test_a_user_can_filter_threads_according_to_channel()
    {
        $channel = factory('App\CForumChannel')->create();
        $threadInChannel = factory('App\CForumThread')->create(['c_forum_channel_id' => $channel->id]);
        $threadNotInChannel = factory('App\CForumThread')->create();
 
        $this->get('/c_forum/threads/' . $channel->slug)
            ->assertSee($threadInChannel->title)
            ->assertDontSee($threadNotInChannel->title);
    }

    public function test_a_user_can_filter_by_any_username()
    {

        $user = factory('App\User')->create(['name' => 'JohnDoe']);
        $this->actingAs($user);

        $threadByJohn = factory('App\CForumThread')->create(['user_id' => auth()->id()]);
        $threadNotByJohn = factory('App\CForumThread')->create();

        $this->get('c_forum/threads?by=JohnDoe')
            ->assertSee($threadByJohn->title)
            ->assertDontSee($threadNotByJohn->title);
    }
}
