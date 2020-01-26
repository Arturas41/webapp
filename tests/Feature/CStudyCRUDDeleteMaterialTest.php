<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;
use Illuminate\Foundation\Testing\DatabaseMigrations;

class CStudyCRUDDeleteMaterialTest extends TestCase
{
    use DatabaseMigrations;

    public function setUp() : void{
        parent::setUp();
    }
    
    function test_logged_user_can_delete_materials()
    {
        $user = factory('App\User')->create();

        $this->actingAs($user);

        $material = factory('App\CStudyMaterial')->create(['user_id' => $user->id]);

        $this->assertDatabaseHas('c_study_materials', ['id' => $material->id]);

        $this->delete('/c_study/materials/' . $material->id);

        $this->assertDatabaseMissing('c_study_materials', ['id' => $material->id]);
    }

    function test_another_user_can_not_delete_materials()
    {
        $this->expectException('Illuminate\Auth\Access\AuthorizationException');

        $user = factory('App\User')->create();

        $this->actingAs($user);

        $material = factory('App\CStudyMaterial')->create(['user_id' => $user->id]);

        $anotherUser = factory('App\User')->create();

        $this->actingAs($anotherUser);

        $this->delete('/c_study/materials/' . $material->id);
    }

}
