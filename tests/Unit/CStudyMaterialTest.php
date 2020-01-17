<?php

namespace Tests\Unit;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;
use Illuminate\Foundation\Testing\DatabaseMigrations;

class CStudyMaterialTest extends TestCase
{

    use DatabaseMigrations;

    public function setUp() : void{
        parent::setUp();
    }

    public function test_nothing(){
        $this->assertTrue(true);
    }

}
