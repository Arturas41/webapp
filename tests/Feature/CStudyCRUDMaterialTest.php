<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;
use Illuminate\Foundation\Testing\DatabaseMigrations;

class CStudyCRUDMaterialTest extends TestCase
{
    use DatabaseMigrations;

    public function setUp() : void{
        parent::setUp();
    }
    
    function test_crud_material_rating()
    {
        $user = factory('App\User')->create();

        $this->actingAs($user);

        $material = factory('App\CStudyMaterial')->make(['user_id' => $user->id]);

        $postedMaterial = $this->post('/c_study/materials', $material->toArray());
        $postedMaterial = $postedMaterial->original;

        $this->assertDatabaseHas('c_study_materials', [
            'user_id' => auth()->id(),
            'title' => $material->title,
            'reference' => $material->reference,
        ]);

        $this->assertDatabaseHas('ratings', [
            'value' => 2.5,
            'rated_id' => $postedMaterial->id,
            'rated_type' => 'App\CStudyMaterial'
        ]);

        $material->rating = 3;
        $postedMaterial = $this->patch('/c_study/materials/' . $postedMaterial->id, $material->toArray());
        $postedMaterial = $postedMaterial->original;

        $this->assertDatabaseHas('ratings', [
            'value' => 3,
            'rated_id' => $postedMaterial->id,
            'rated_type' => 'App\CStudyMaterial'
        ]);

        $this->delete('/c_study/materials/' . $postedMaterial->id);

        $this->assertDatabaseMissing('ratings', [
            'value' => 3,
            'rated_id' => $postedMaterial->id,
            'rated_type' => 'App\CStudyMaterial'
        ]);
    }

    function test_crud_material_priority()
    {
        $user = factory('App\User')->create();

        $this->actingAs($user);

        $material = factory('App\CStudyMaterial')->make(['user_id' => $user->id]);

        $postedMaterial = $this->post('/c_study/materials', $material->toArray());
        $postedMaterial = $postedMaterial->original;

        $this->assertDatabaseHas('c_study_materials', [
            'user_id' => auth()->id(),
            'title' => $material->title,
            'reference' => $material->reference,
        ]);

        $this->assertDatabaseHas('priorities', [
            'value' => 3,
            'prioritized_id' => $postedMaterial->id,
            'prioritized_type' => 'App\CStudyMaterial'
        ]);

        $material->priority = 5;
        $postedMaterial = $this->patch('/c_study/materials/' . $postedMaterial->id, $material->toArray());
        $postedMaterial = $postedMaterial->original;

        $this->assertDatabaseHas('priorities', [
            'value' => 5,
            'prioritized_id' => $postedMaterial->id,
            'prioritized_type' => 'App\CStudyMaterial'
        ]);

        $this->delete('/c_study/materials/' . $postedMaterial->id);

        $this->assertDatabaseMissing('priorities', [
            'value' => 5,
            'prioritized_id' => $postedMaterial->id,
            'prioritized_type' => 'App\CStudyMaterial'
        ]);
    }

}
