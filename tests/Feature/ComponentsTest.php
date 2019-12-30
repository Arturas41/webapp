<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;
use Illuminate\Foundation\Testing\DatabaseMigrations;

class ComponentsTest extends TestCase
{
    use DatabaseMigrations;

    public function test_a_user_can_browse_components_index_page()
    {
        $response = $this->get('/');

        $response->assertStatus(200);
    }
}
