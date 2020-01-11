<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;
use Illuminate\Foundation\Testing\DatabaseMigrations;

class CForumChannelTest extends TestCase
{
    use DatabaseMigrations;
 
    public function test_a_channel_consists_of_threads()
    {
        $channel = factory('App\CForumChannel')->create();

        $thread = factory('App\CForumThread')->create(['c_forum_channel_id' => $channel->id]);
 
        $this->assertTrue($channel->threads->contains($thread));
    }
}
