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

        $response = $this->post('/c_forum/threads', $thread->toArray());
        
        $this->get($response->headers->get('Location'))
            ->assertSee($thread->title)
            ->assertSee($thread->body);
    }

    function test_guest_can_not_create_threads()
    {
        $this->expectException('Illuminate\Auth\AuthenticationException');

        $this->get('/c_forum/threads/create')->assertRedirect('/login');
 
        $this->post('/c_forum/threads')->assertRedirect('login');
    }

    function test_a_thread_requires_a_title()
    {
        $this->expectException('Illuminate\Validation\ValidationException');

        $this->publishThread(['title' => null]);
    }    

    function test_a_thread_requires_a_body()
    {
        $this->expectException('Illuminate\Validation\ValidationException');

        $this->publishThread(['body' => null]);
    }   

    function test_a_thread_requires_a_valid_channel()
    {
        $this->expectException('Illuminate\Validation\ValidationException');

        factory('App\CForumChannel', 2)->create();
 
        $this->publishThread(['c_forum_channel_id' => 42]);
    }

    public function test_a_thread_can_be_deleted()
    {
        $this->withoutExceptionHandling();

        $this->actingAs(factory('App\User')->create());

        $thread = factory('App\CForumThread')->create();
        $reply = factory('App\CForumReply')->create(['c_forum_thread_id' => $thread->id]);

        $response = $this->json('DELETE', $thread->path());

        $response->assertStatus(204);

        $this->assertDatabaseMissing('c_forum_threads', ['id' => $thread->id]);
        $this->assertDatabaseMissing('c_forum_replies', ['id' => $reply->id]);

    }

    public function test_guests_can_not_delete_threads()
    {
        $this->expectException('Illuminate\Auth\AuthenticationException');

        $thread = factory('App\CForumThread')->create();

        $this->json('DELETE', $thread->path());
    }

    private function publishThread($overrides = []){
        $this->actingAs(factory('App\User')->create());

        $thread = factory('App\CForumThread')->make($overrides);

        return $this->post('/c_forum/threads', $thread->toArray());
    }


}
