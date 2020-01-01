<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;
use Illuminate\Foundation\Testing\DatabaseMigrations;

class CreateLearnTopicsTestLearnTopicsTest extends TestCase
{
    use DatabaseMigrations;

    public function test_an_authenticated_user_can_create_learn_topic()
    {
        $this->be($user = factory('App\User')->create());

        $learnTopic = factory('App\LearnTopic')->create();

        $this->post('/learn_topic/', $learnTopic->toArray());

        $this->get($learnTopic->path())->assertSee($learnTopic->title);
    }
}
