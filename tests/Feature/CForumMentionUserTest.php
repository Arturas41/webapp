<?php
 
namespace Tests\Feature;
 
use Illuminate\Foundation\Testing\DatabaseMigrations;
use Tests\TestCase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;
 
class MentionUsersTest extends TestCase
{
    use DatabaseMigrations;
 
    function test_mentioned_users_in_a_reply_are_notified()
    {
        $tom = factory('App\User')->create();
        $this->actingAs($tom);
 
        $sarah = factory('App\User')->create(['name' => 'Sarah']);

        $thread = factory('App\CForumThread')->create();
 
        $reply = factory('App\CForumReply')->make(['body' => 'Hey @Sarah check this out.']);
        $this->json('post', $thread->path() . '/replies', $reply->toArray());
 
        $this->assertCount(1, $sarah->notifications);
    }
}