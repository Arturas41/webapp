<?php

namespace App\Http\Controllers\HtmlParser;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Goutte\Client;
use GuzzleHttp\Client as GuzzleHttp;

class HtmlParserController extends Controller
{
    public function index(){
        $client = new Client();

        $guzzleclient = new GuzzleHttp([
            'timeout' => 60,
            'verify' => false,
        ]);

        $client->setClient($guzzleclient);

        $crawler = $client->request('GET', 'https://vegibit.com/php-simple-html-dom-parser-vs-friendsofphp-goutte/');

//        //eq
//        echo $crawler->filter('li')->eq(1)->text();

//        //slice
//        $crawler->filter('li')->slice(3, 2)->each(function ($node) {
//            echo $node->text() . '<br>';
//        });

//        //reduce
//        $crawler->filter('li')->reduce(function ($node) {
//            if (strlen($node->text()) > 2) {
//                echo $node->text() . '<br>';
//            }
//        });

//        //first
//        echo $crawler->filter('li')->first()->text();

//        //last
//        echo $crawler->filter('li')->last()->text();

//        //siblings
//        $crawler->filter('li')->eq(2)->siblings()->each(function ($node) {
//            echo $node->text() . '<br>';
//        });

//        //attr
//        echo $crawler->filter('form')->attr('action');

//        //nodeName
//        echo $crawler->filter('.motorcycle')->nodeName();

//        //html
//        echo $crawler->filter('form')->html();

//        //selectLink()
//        $link = $crawler->selectLink('top')->link();
//        $crawler = $client->click($link);
//        echo $crawler->filter('p.title')->first()->text();

        $nodes = collect([]);
        $crawler->filter('p > a')->each(function ($node) use ($nodes) {
            $nodes->push($node->text());
        });

        return view('html_parser.index', compact(['nodes']));
    }
}
