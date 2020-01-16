<?php

namespace Tests\Unit;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;
use Illuminate\Foundation\Testing\DatabaseMigrations;

class CForumReplyTest extends TestCase
{

    use DatabaseMigrations;

    public function test_reply_has_an_owner()
    {
        $reply = factory('App\CForumReply')->create();

        $this->assertInstanceOf('App\User', $reply->owner);
    }

    public function test_it_can_fetch_all_mentioned_users_starting_with_the_given_characters()
    {
        factory('App\User')->create(['name' => 'LilKim']);
        factory('App\User')->create(['name' => 'LilKimBro']);
        factory('App\User')->create(['name' => 'JoeBlow']);

        $results = $this->json('GET', '/api/users', ['name' => 'Lil']);
        $this->assertCount(2, $results->json());
    }
}
