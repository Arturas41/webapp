<?php

namespace Tests\Unit;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;
use Illuminate\Foundation\Testing\DatabaseMigrations;
use App\Activity;

class ActivityTest extends TestCase
{

    use DatabaseMigrations;

    public function test_it_records_activity_when_a_thread_is_created()
    {
        $this->actingAs(factory('App\User')->create());
 
        $thread = factory('App\CForumThread')->create();
 
        $this->assertDatabaseHas('activities', [
            'type' => 'created_CForumThread',
            'user_id' => auth()->id(),
            'subject_id' => $thread->id,
            'subject_type' => 'App\CForumThread'
        ]);

        $activity = Activity::first();
        $this->assertEquals($activity->subject->id, $thread->id);
    }

    public function test_it_records_activity_when_a_reply_is_created()
    {
        $this->actingAs(factory('App\User')->create());

        $reply = factory('App\CForumReply')->create();

        $this->assertEquals(2, Activity::count());
    }
}
