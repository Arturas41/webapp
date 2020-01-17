<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;
use Illuminate\Foundation\Testing\DatabaseMigrations;

class CStudyCRUDCreateMaterialTest extends TestCase
{
    use DatabaseMigrations;

    public function setUp() : void{
        parent::setUp();
    }
    
    public function test_a_logged_in_user_can_create_new_threads(){
        $this->actingAs(factory('App\User')->create());

        $material = factory('App\CStudyMaterial')->create();

        $this->post('/c_study/materials', $material->toArray());
        
        $this->assertDatabaseHas('c_study_materials', [
            'user_id' => auth()->id(),
            'title' => $material->title,
            'reference' => $material->reference,
        ]);
    }

}
