<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;
use Illuminate\Foundation\Testing\DatabaseMigrations;

class ReadLearnTopicsTest extends TestCase
{
    use DatabaseMigrations;

    public function setUp() : void
    {
        parent::setUp();

        $this->learnTopic = factory('App\LearnTopic')->create();
    }

    public function test_a_user_can_browse_learn_topic()
    {
        $response = $this->get('/learn_topic');
        $response->assertSee($this->learnTopic->title);
        $response->assertStatus(200);
    }

    public function test_a_user_can_browse_learn_topic_show()
    {
        $response = $this->get('/learn_topic/' . $this->learnTopic->id);
        $response->assertSee($this->learnTopic->title);
        $response->assertStatus(200);
    }

    public function test_a_user_can_see_tags_that_are_associated_with_a_learn_topic()
    {

        $tag1 = factory('App\Tag')->create();
        $tag2 = factory('App\Tag')->create();

        $this->learnTopic->tags()->attach([$tag1->id,$tag2->id]);

        $response = $this->get('/learn_topic/' . $this->learnTopic->id);

        $response->assertSee($tag1->name);
        $response->assertSee($tag2->name);

        $response->assertSee($this->learnTopic->owner->name);

        $response->assertStatus(200);

        $response = $this->get('/learn_topic');

        $response->assertSee($tag1->name);
        $response->assertSee($tag2->name);
        $response->assertStatus(200);
    }
}
