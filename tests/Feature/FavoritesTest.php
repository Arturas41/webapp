<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;
use Illuminate\Foundation\Testing\DatabaseMigrations;

class FavoritesTest extends TestCase
{
    use DatabaseMigrations;
 
    public function test_an_authenticated_use_can_favorite_any_reply()
    {
        $this->actingAs(factory('App\User')->create());

        $reply = factory('App\CForumReply')->create();

        $this->post('/c_forum/replies/' . $reply->id . '/favorites');

        $this->assertCount(1,$reply->favorites);
    }

    public function test_a_guest_can_not_favorite_anything()
    {
        $this->expectException('Illuminate\Auth\AuthenticationException');

        $this->post('/c_forum/replies/1/favorites');
    }

    public function test_an_authenticated_user_may_only_favorite_a_reply_one_time()
    {
        $this->withoutExceptionHandling();
        $this->actingAs(factory('App\User')->create());

        $reply = factory('App\CForumReply')->create();

        $this->post('/c_forum/replies/' . $reply->id . '/favorites');
        $this->post('/c_forum/replies/' . $reply->id . '/favorites');

        $this->assertCount(1, $reply->favorites);
    }
}
