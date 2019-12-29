<?php


namespace App\Http\Controllers;

class ComponentController  extends Controller
{

    /*
    |--------------------------------------------------------------------------
    | Welcome Controller
    |--------------------------------------------------------------------------
    |
    | This controller renders the "marketing page" for the application and
    | is configured to only allow guests. Like most of the other sample
    | controllers, you are free to modify or remove it as you desire.
    |
    */

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Show the application welcome screen to the user.
     *
     * @return Response
     */
    public function index()
    {
        $data['brand'] = 'Brand New Website';
        $data['navsearch'] = 'Search Now!';

        $data['components'][0]['name'] = 'Learning archive component';
        $data['components'][1]['name'] = 'Random component';
        $data['components'][2]['name'] = 'Random component2';

        $data['components'][0]['description'] = 'Learning archive component description';
        $data['components'][1]['description'] = 'Random component description';
        $data['components'][2]['description'] = 'Random component2 description';

        $data['components'][0]['href'] = '/learning';
        $data['components'][1]['href'] = '#';
        $data['components'][2]['href'] = '#';

        $data['footer'] = 'Trademark, Copyright, and all that Jazz';

        return view('components')->with($data);
    }
}
