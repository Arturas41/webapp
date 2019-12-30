<?php

namespace Tests\Unit;

use Illuminate\Foundation\Testing\DatabaseMigrations;
use Tests\TestCase;
use Illuminate\Foundation\Testing\RefreshDatabase;

class LearnTopicsTest extends TestCase
{
    use DatabaseMigrations;

    public function test_it_has_an_owner()
    {
        $learnTopic = factory('App\LearnTopic')->create();

        $this->assertInstanceOf('App\User', $learnTopic->owner);
    }
}
