<?php

namespace App\Http\Controllers\TestRegex;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class TestRegexController extends Controller
{

    public function testRegex(){

        $subject = request('subject');
        $pattern = request('pattern');

        $collection = collect();


        
        if (strlen($pattern) > 0) {
            preg_match_all('/' . $pattern . '/', $subject, $matches);
            foreach ($matches[0] as $match) {
                $data['match'] = $match;
                $collection->push($data);
            }
        }
        
        return $collection;

    }

}
