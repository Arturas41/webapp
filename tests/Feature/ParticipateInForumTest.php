<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;
use Illuminate\Foundation\Testing\DatabaseMigrations;

class ParticipateInForumTest extends TestCase
{
    use DatabaseMigrations;
    
    public function test_unauthenticated_users_can_not_add_replies(){
        $this->expectException('Illuminate\Auth\AuthenticationException');
        $this->post('/c_forum/threads/1/asdf/replies', []);
    }

    public function test_an_authenticated_user_can_participate_in_forum_threads(){
        $user = factory('App\User')->create();

        $this->be($user);
        
        $thread = factory('App\CForumThread')->create();

        $reply = factory('App\CForumReply')->create();

        $this->post($thread->path() . '/replies', $reply->toArray());

        $this->get($thread->path())->assertSee($reply->body);
    }

    public function test_a_reply_requires_a_body()
    {
        $this->expectException('Illuminate\Validation\ValidationException');

        $this->actingAs(factory('App\User')->create());
 
        $thread = factory('App\CForumThread')->create();
 
        $reply = factory('App\CForumReply')->make(['body' => null]);
 
        $this->post($thread->path() . '/replies', $reply->toArray());
    }
    
}
