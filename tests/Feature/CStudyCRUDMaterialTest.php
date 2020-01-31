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

    function test_crud_material_to_dos()
    {
        $user = factory('App\User')->create();

        $this->actingAs($user);

        //create material with 2 to do list items
        $material = factory('App\CStudyMaterial')->make(['user_id' => $user->id]);
        $material->to_dos = [
            [
                'name' => "do this",
                'priority' => [ 'value' => 3]
            ],
            [
                'name' => "do that",
                'priority' => [ 'value' => 1]
            ], 
        ];

        $postedMaterial = $this->post('/c_study/materials', $material->toArray());
        $postedMaterial = $postedMaterial->original;

        $this->assertDatabaseHas('c_study_materials', [
            'user_id' => auth()->id(),
            'title' => $material->title,
            'reference' => $material->reference,
        ]);

        $this->assertDatabaseHas('to_doables', [
            'to_do_id' => 1,
            'to_doable_id' => $postedMaterial->id,
            'to_doable_type' => 'App\CStudyMaterial',
        ]);
        $this->assertDatabaseHas('to_doables', [
            'to_do_id' => 2,
            'to_doable_id' => $postedMaterial->id,
            'to_doable_type' => 'App\CStudyMaterial',
        ]);
        
        $this->assertDatabaseHas('to_dos', [
            'id' => 1,
            'name' => 'do this',
        ]);
        $this->assertDatabaseHas('to_dos', [
            'id' => 2,
            'name' => 'do that',
        ]);

        $this->assertDatabaseHas('priorities', [
            'value' => 3,
            'prioritized_id' => 1,
            'prioritized_type' => 'App\ToDo'
        ]);
        $this->assertDatabaseHas('priorities', [
            'value' => 1,
            'prioritized_id' => 2,
            'prioritized_type' => 'App\ToDo'
        ]);


        //update first to_dos priority and another to_dos name
        $material->to_dos = [
            [
                'id' => 1,
                'name' => "do this",
                'priority' => [ 'value' => 4]
            ],
            [
                'id' => 2,
                'name' => "do that updated",
                'priority' => [ 'value' => 1],
            ], 
        ];

        $postedMaterial = $this->patch('/c_study/materials/' .  $postedMaterial->id, $material->toArray());
        $postedMaterial = $postedMaterial->original;

        $this->assertDatabaseHas('to_doables', [
            'to_do_id' => 1,
            'to_doable_id' => $postedMaterial->id,
            'to_doable_type' => 'App\CStudyMaterial',
        ]);
        $this->assertDatabaseHas('to_doables', [
            'to_do_id' => 2,
            'to_doable_id' => $postedMaterial->id,
            'to_doable_type' => 'App\CStudyMaterial',
        ]);
        $this->assertDatabaseHas('to_dos', [
            'id' => 1,
            'name' => 'do this',
        ]);
        $this->assertDatabaseHas('to_dos', [
            'id' => 2,
            'name' => 'do that updated',
        ]);
        $this->assertDatabaseHas('priorities', [
            'value' => 4,
            'prioritized_id' => 1,
            'prioritized_type' => 'App\ToDo'
        ]);
        $this->assertDatabaseHas('priorities', [
            'value' => 1,
            'prioritized_id' => 2,
            'prioritized_type' => 'App\ToDo'
        ]);


        //update delete first to and add another one
        $material->to_dos = [
            [
                'id' => 2,
                'name' => "do that updated",
                'priority' => [ 'value' => 1],
            ],
            [
                'name' => "another one",
                'priority' => [ 'value' => 5],
            ], 
        ];

        $postedMaterial = $this->patch('/c_study/materials/' .  $postedMaterial->id, $material->toArray());
        $postedMaterial = $postedMaterial->original;

        $this->assertDatabaseMissing('to_doables', [
            'to_do_id' => 1,
            'to_doable_id' => $postedMaterial->id,
            'to_doable_type' => 'App\CStudyMaterial',
        ]);
        $this->assertDatabaseHas('to_doables', [
            'to_do_id' => 2,
            'to_doable_id' => $postedMaterial->id,
            'to_doable_type' => 'App\CStudyMaterial',
        ]);
        $this->assertDatabaseHas('to_doables', [
            'to_do_id' => 3,
            'to_doable_id' => $postedMaterial->id,
            'to_doable_type' => 'App\CStudyMaterial',
        ]);
        $this->assertDatabaseMissing('to_dos', [
            'id' => 1,
            'name' => 'do this',
        ]);
        $this->assertDatabaseHas('to_dos', [
            'id' => 2,
            'name' => 'do that updated',
        ]);
        $this->assertDatabaseHas('to_dos', [
            'id' => 3,
            'name' => 'another one',
        ]);
        $this->assertDatabaseMissing('priorities', [
            'value' => 4,
            'prioritized_id' => 1,
            'prioritized_type' => 'App\ToDo'
        ]);
        $this->assertDatabaseHas('priorities', [
            'value' => 1,
            'prioritized_id' => 2,
            'prioritized_type' => 'App\ToDo'
        ]);
        $this->assertDatabaseHas('priorities', [
            'value' => 5,
            'prioritized_id' => 3,
            'prioritized_type' => 'App\ToDo'
        ]);

        //delete material it self
        $this->delete('/c_study/materials/' .  $postedMaterial->id);

        $this->assertDatabaseMissing('to_doables', [
            'to_do_id' => 1,
            'to_doable_id' => $postedMaterial->id,
            'to_doable_type' => 'App\CStudyMaterial',
        ]);
        $this->assertDatabaseMissing('to_doables', [
            'to_do_id' => 2,
            'to_doable_id' => $postedMaterial->id,
            'to_doable_type' => 'App\CStudyMaterial',
        ]);
        $this->assertDatabaseMissing('to_doables', [
            'to_do_id' => 3,
            'to_doable_id' => $postedMaterial->id,
            'to_doable_type' => 'App\CStudyMaterial',
        ]);
        $this->assertDatabaseMissing('to_dos', [
            'id' => 1,
            'name' => 'do this',
        ]);
        $this->assertDatabaseMissing('to_dos', [
            'id' => 2,
            'name' => 'do that updated',
        ]);
        $this->assertDatabaseMissing('to_dos', [
            'id' => 3,
            'name' => 'another one',
        ]);
        $this->assertDatabaseMissing('priorities', [
            'value' => 4,
            'prioritized_id' => 1,
            'prioritized_type' => 'App\ToDo'
        ]);
        $this->assertDatabaseMissing('priorities', [
            'value' => 1,
            'prioritized_id' => 2,
            'prioritized_type' => 'App\ToDo'
        ]);
        $this->assertDatabaseMissing('priorities', [
            'value' => 5,
            'prioritized_id' => 3,
            'prioritized_type' => 'App\ToDo'
        ]);
    }

    function test_crud_material_current_and_next_many_to_many()
    {
        $user = factory('App\User')->create();

        $this->actingAs($user);

        $previousMaterial = factory('App\CStudyMaterial')->create(['user_id' => $user->id]);

        $currentMaterial = factory('App\CStudyMaterial')->make(['user_id' => $user->id]);
        $currentMaterial->previous_material_id = $previousMaterial->id;

        $currentMaterial = $this->post('/c_study/materials/', $currentMaterial->toArray());
        $currentMaterial = $currentMaterial->original;

        $this->assertDatabaseHas('c_study_materials', [
            'id' => $previousMaterial->id,
        ]);

        $this->assertDatabaseHas('c_study_materials', [
            'id' => $currentMaterial->id,
        ]);

        $this->assertDatabaseHas('c_study_material_previous_current', [
            'previous_id' => $previousMaterial->id,
            'current_id' => $currentMaterial->id,
        ]);

    }

}
