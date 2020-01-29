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
    
    private function invalidRequest($options = []){
        $this->actingAs(factory('App\User')->create());
        
        $this->expectException('Illuminate\Validation\ValidationException');

        $material = factory('App\CStudyMaterial')->make($options);

        $this->post('/c_study/materials', $material->toArray());
    }

    public function test_a_logged_in_user_can_create_new_materials(){
        $this->actingAs(factory('App\User')->create());

        $material = factory('App\CStudyMaterial')->make();

        $this->post('/c_study/materials', $material->toArray());
        
        $this->assertDatabaseHas('c_study_materials', [
            'user_id' => auth()->id(),
            'title' => $material->title,
            'reference' => $material->reference,
        ]);
    }

    function test_guest_can_not_create_materials()
    {
        $this->expectException('Illuminate\Auth\AuthenticationException');

        $material = factory('App\CStudyMaterial')->create();
 
        $this->post('/c_study/materials', $material->toArray());
    }

    function test_validation_require_a_title(){
        $this->invalidRequest(['title' => null]);
    }

    function test_validation_require_a_reference(){
        $this->invalidRequest(['reference' => null]);
    }

    function test_validation_title_no_longer_then_255(){
        $this->invalidRequest(['title' => bin2hex(random_bytes(128)) ]);
    }

    function test_validation_reference_has_to_be_url(){
        $this->invalidRequest(['reference' => 'fdsa\moc.fdsa.www\\:ptth' ]);
    }

    function test_validation_reference_no_longer_then_2048(){
        $this->invalidRequest(['reference' => 'http://www.asdf.com/' . bin2hex(random_bytes(1024)) ]);
    }

    //Unit test..?
    function test_can_attach_tags_to_material(){
        $this->actingAs(factory('App\User')->create());

        $material = factory('App\CStudyMaterial')->create();
        $tag1 = factory('App\Tag')->create(['name' => 'tag_name_1']);
        $tag2 = factory('App\Tag')->create(['name' => 'tag_name_2']);

        $material->tags()->attach([$tag1->id, $tag2->id]);

        $this->assertDatabaseHas('taggables', [
            'tag_id' => $tag1->id,
            'taggable_id' => $material->id,
            'taggable_type' => 'App\CStudyMaterial'
        ]);

         $this->assertEquals(2, $material->tags()->count());

    }
}
