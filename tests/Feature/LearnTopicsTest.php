<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;
use Illuminate\Foundation\Testing\DatabaseMigrations;

class LearnTopicsTest extends TestCase
{
    use DatabaseMigrations;

    public function test_a_user_can_browse_learn_topic()
    {
        $learnTopic = factory('App\LearnTopic')->create();

        $response = $this->get('/learn_topic');
        $response->assertSee($learnTopic->title);
        $response->assertStatus(200);
    }

    public function test_a_user_can_browse_learn_topic_show()
    {
        $learnTopic = factory('App\LearnTopic')->create();

        $response = $this->get('/learn_topic/'.$learnTopic->id);
        $response->assertSee($learnTopic->title);
        $response->assertStatus(200);
    }
}
