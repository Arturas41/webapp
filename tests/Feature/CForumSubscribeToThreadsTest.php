<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;
use Illuminate\Foundation\Testing\DatabaseMigrations;

class CForumSubscribeToThreadsTest extends TestCase
{
    use DatabaseMigrations;

    public function test_a_user_can_subscribe_to_threads()
    {
        $this->actingAs(factory('App\User')->create());
        $thread = factory('App\CForumThread')->create();
        $this->post($thread->path() . '/subscriptions');
        $this->assertCount(1, $thread->fresh()->subscriptions);
    }
}
