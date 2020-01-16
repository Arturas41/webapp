<?php

namespace Tests\Unit;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;
use Illuminate\Foundation\Testing\DatabaseMigrations;

class CForumThreadTest extends TestCase
{

    use DatabaseMigrations;

    public function setUp() : void{
        parent::setUp();

        $this->thread = factory('App\CForumThread')->create();
    }

    public function test_a_thread_has_replies()
    {
        $this->assertInstanceOf('Illuminate\Database\Eloquent\Collection', $this->thread->replies);
    }

    public function test_thread_has_a_creator(){
        $this->assertInstanceOf('App\User', $this->thread->creator);
    }

    public function test_a_thread_can_add_a_reply(){
        $this->thread->addReply([
            'body' => 'Chipoltle',
            'user_id' => 1
        ]);

        $this->assertCount(1, $this->thread->replies);
    }

    public function test_a_thread_belongs_to_a_channel()
    {
        $thread = factory('App\CForumThread')->create();
 
        $this->assertInstanceOf('App\CForumChannel', $thread->channel);
    }

    public function test_a_thread_can_make_a_string_path()
    {
        $thread = factory('App\CForumThread')->create();
 
        $this->assertEquals('/c_forum/threads/' . $thread->channel->slug . '/' . $thread->id, $thread->path());
    }

    public function test_a_thread_can_be_subscribed_to()
    {
        $thread = factory('App\CForumThread')->create();
        $thread->subscribe($userId = 1);
        $this->assertEquals(
            1,
            $thread->subscriptions()->where('user_id', $userId)->count()
        );
    }

    public function test_a_thread_can_be_unsubscribed_from()
    {
        $thread = factory('App\CForumThread')->create();
        $thread->subscribe($userId = 1);
        $thread->unsubscribe($userId);
        $this->assertCount(0, $thread->subscriptions);
    }

    public function test_a_thread_can_check_if_the_authenticated_user_has_read_all_replies()
    {
        $this->actingAs(factory('App\User')->create());
        $thread = factory('App\CForumThread')->create();
        tap(auth()->user(), function ($user) use ($thread) {
            $this->assertTrue($thread->hasUpdatesFor($user));
            $user->read($thread);
            $this->assertFalse($thread->hasUpdatesFor($user));
        });
    }

}
