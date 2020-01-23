<?php

namespace App\Http\Controllers\HtmlParser;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Goutte\Client;
use GuzzleHttp\Client as GuzzleHttp;

class HtmlParserController extends Controller
{

    public function crawlUrl(){
        $this->validate(request(), [
            'node' => 'required|max:255',
            'url' => 'required|max:2048|url'
        ]);

        $client = new Client();

        $guzzleclient = new GuzzleHttp([
            'timeout' => 60,
            'verify' => false,
        ]);

        $client->setClient($guzzleclient);

        $crawler = $client->request('GET', request('url'));

        $nodes = collect([]);
        $crawler->filter(request('node'))->each(function ($node) use ($nodes) {
            $nodes->push($node->text());
        });

        return $nodes;

//        //eq
//        $crawler->filter('li')->eq(1)->text();
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
//        $crawler->filter('li')->first()->text();
//        //last
//        $crawler->filter('li')->last()->text();
//        //siblings
//        $crawler->filter('li')->eq(2)->siblings()->each(function ($node) {
//            echo $node->text() . '<br>';
//        });
//        //attr
//        $crawler->filter('form')->attr('action');
//        //nodeName
//        $crawler->filter('.motorcycle')->nodeName();
//        //html
//        $crawler->filter('form')->html();
//        //selectLink()
//        $link = $crawler->selectLink('top')->link();
//        $crawler = $client->click($link);
//        $crawler->filter('p.title')->first()->text();


    }

}
