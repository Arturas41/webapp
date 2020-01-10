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
}
