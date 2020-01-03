<?php

namespace App\Http\Controllers\GeneralPlayground;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class GeneralPlaygroundController extends Controller
{
    public function laravel_collections()
    {
        $sites = collect([
            'http://google.com',
            'http://plus.google.com',
            'http://facebook.com',
            'http://twitter.com',
            'http://search.twitter.com',
            'http://apple.com'
        ])->map(function($site){
            return str_replace('http://', 'http://www.', $site);
        })->reject(function($site){
            return strpos($site, 'facebook') !== false;
        });

        $sites->all();//cast back to array

        //dd($sites);

        $avg = collect(['1234', '546', '777'])->avg();

        //dd($avg);

        $avg = collect([
            ['size' => 'tall', 'price' => 2.50],
            ['size' => 'grande', 'price' => 3.45],
            ['size' => 'venti', 'price' => 4.75]
        ])->avg('price');

//        dd($avg);

        $chunk = collect([
            (object)['site' => 'google.com'],
            (object)['site' => 'facebook.com'],
            (object)['site' => 'yahoo.com'],
            (object)['site' => 'digg.com'],
            (object)['site' => 'twitter.com'],
            (object)['site' => 'moz.com']

        ])->chunk(2);

//        dd($chunk);

        $collection = collect([
            ['color' => 'blue', 4, 2],
            ['x', 'y', 'color' => 'red', 'shape' => 'circle', 300],
            ['make' => 'Acura', 'type' => 'NSX']
        ]);

//        dd($collection->collapse());

        //check value
//        dd($collection->contains('color')); //flase

        //check key
//        dd($collection->contains('color', '')); //key

        $result = $collection->contains(function($key, $value){
            return ($key = 'asdf' or $value = 'circle');
        });

//        dd($result);

        $count = $collection->count();

//        dd($count);

        $want = collect(['Apple', 'Google', 'Twitter', 'Cisco', 'Dell', 'HP']);
        $delete = collect(['Apple', 'Google']);

        $deleted = $want->diff($delete);

//        dd($deleted);

        $collection = collect([1, 2, 3, 4, 5, 6, 7, 8, 9]);

        $collection->each(function($value){
            if($value > 3) return false;
//            echo $value + $value . '</br>';
        });

        $collection = collect([
            ['sunshine', 'blue sky', 'blue water'],
            ['apple pie', 'yellow', 'black roof'],
            [1,2,3],
            'random stuff',
            'not a number',
            ['apple crisp', 'jackolantern'],
        ]);

        $first = $collection->first();

//        dd($first);

        $first = $collection->first(function($value, $key){
            return is_string($value);
        });

//        dd($first);

        $collection = collect([
            'mobile' => 'iPhone',
            'grub' => ['restaurant' => 'Chipoltle', 'meal' => 'burrito'],
            ['editor' => ['vendor' => 'jetbrains', 'ide' => 'phpstorm']]
        ]);

        $flatten = $collection->flatten();

//        dd($flatten);

        $collection = collect([
            'mobile' => 'iPhone',
            'integer' => 10,
            'string' => 'all day',
            'another integer' => 20
        ]);

        $flip = $collection->flip();

//        dd($flip);

        $collection = collect([
            'mobile' => 'iPhone',
            'integer' => 10,
            'string' => 'all day',
            'another integer' => 20
        ]);

        $forget = $collection->forget('another integer');

//        dd($forget);

        $collection = collect([
            ['url' => 'google.com'],
            ['url' => 'facebook.com'],
            ['url' => 'amazon.com'],
            ['url' => 'youtube.com'],
            ['url' => 'yahoo.com'],
            ['url' => 'wikipedia.org'],
            ['url' => 'ebay.com'],
            ['url' => 'twitter.com'],
            ['url' => 'craigslist.com'],
            ['url' => 'reddit.com'],
            ['url' => 'netflix.com'],
            ['url' => 'linkedin.com'],
            ['url' => 'bing.com'],
            ['url' => 'pinterest.com'],
            ['url' => 'apple.com'],
            ['url' => 'instagram.com'],
            ['url' => 'msn.com'],
            ['url' => 'walmart.com'],
            ['url' => 'yelp.com'],
            ['url' => 'weather.com'],
            ['url' => 'zillow.com'],
            ['url' => 'wordpress.com'],
            ['url' => 'target.com'],
            ['url' => 'buzzfeed.com'],
            ['url' => 'microsoft.com'],
            ['url' => 'microsoft.com'],
            ['url' => 'microsoft.com'],
            ['url' => 'microsoft.com'],
        ]);

        $forPage = $collection->forPage(6, 5);

//        dd($forPage);

        $get = $forPage->get(25);

//        dd($get);

        $collection = collect([
            ['search' => 'google.com'],
            ['social' => 'facebook.com'],
            ['shopping' => 'amazon.com'],
            ['entertainment' => 'youtube.com'],
            ['entertainment' => 'yahoo.com'],
            ['entertainment' => 'yahoo.com'],
            ['entertainment' => 'yahoo.com'],
            ['info' => 'wikipedia.org'],
            ['shopping' => 'ebay.com'],
            ['social' => 'twitter.com'],
            ['info' => 'craigslist.com'],
            ['entertainment' => 'reddit.com'],
            ['entertainment' => 'netflix.com'],
            ['career' => 'linkedin.com'],
            ['search' => 'bing.com'],
            ['entertainment' => 'pinterest.com'],
            ['shopping' => 'apple.com'],
            ['social' => 'instagram.com'],
            ['info' => 'msn.com'],
            ['shopping' => 'walmart.com'],
            ['info' => 'yelp.com'],
            ['info' => 'weather.com'],
            ['shopping' => 'zillow.com'],
            ['blogging' => 'wordpress.com'],
            ['shopping' => 'target.com'],
            ['entertainment' => 'buzzfeed.com'],
            ['software' => 'microsoft.com'],
        ]);

        $groupBy = $collection->groupBy('entertainment');

//        dd($groupBy);

        $collection = collect([
            'search' => 'google.com',
            'social' => 'facebook.com',
            'shopping' => 'amazon.com',
            'entertainment' => 'youtube.com',
            'info' => 'wikipedia.org',
            'career' => 'linkedin.com',
            'blogging' => 'wordpress.com',
            'software' => 'microsoft.com'
        ]);

        $hasKey = $collection->has('software');

//        dd($hasKey);

        $collection = collect([
            ['weather' => 'sunshine', 'activity' => 'swimming'],
            ['weather' => 'cloudy', 'activity' => 'working'],
            ['weather' => 'snow', 'activity' => 'skiing'],
            ['weather' => 'rain', 'activity' => 'coding'],
        ]);

        $implode = $collection->implode('activity', ' **** ');

//        dd($implode);

        $collection1 = collect([1, 2, 3, 4, 5, 6]);

        $collection2 = collect([5, 6, 7, 8, 9, 10]);

        $intersect = $collection1->intersect($collection2);

//        dd($intersect);

        $intersect = $collection2->intersect($collection1);

//        dd($intersect);

        $collection1 = collect([1, 2, 3, 4, 5, 6]);

        $collection2 = collect([]);

//        dd($collection1->isEmpty());
        // false

//        dd($collection2->isEmpty());

        $collection = collect([
            ['url' => 'google.com'],
            ['url' => 'facebook.com'],
            ['url' => 'amazon.com'],
            ['url' => 'youtube.com'],
            ['url' => 'yahoo.com'],
            ['url' => 'wikipedia.org'],
            ['noturl' => 'wikipedia.org'],
            ['noturl2' => 'wikipedia2.org'],
            ['noturl3' => 'wikipedia3.org'],
        ]);

        $keyBy = $collection->keyBy('url');

//        dd($keyBy);

        $collection = collect([
            ['google' => 'alphabet', 4, 2],
            'four' => 4,
            1234,
            'name' => 'Jim',
            ['xray', 'redsox', 'color' => 'green', 'shape' => 'perfect circle', 500],
            ['make' => 'Acura', 'type' => 'NSX'],
            'weather' => 'sunny',
            'play' => 'videogames',
            'object' => (object)['soup' => 'french onion']
        ]);

        $keys = $collection->keys();

//        dd($collection->keys());

        $last = $collection->last();

//        dd($last);

        $collection1 = collect([
            ['url' => 'comcast.net'],
            ['url' => 'nfl.com'],
            ['url' => 'washingtonpost.com'],
            ['url' => 'homedepot.com'],
            ['url' => 'microsoftonline.com'],
            ['url' => 'microsoftonline.com'],
            ['url' => 'microsoftonline.com'],
            ['url' => 'microsoftonline.com'],
        ]);

        $collection2 = collect([
            ['url' => 'wikia.com'],
            ['url' => 'indeed.com'],
            ['url' => 'usps.com'],
            ['url' => 'capitalone.com'],
            ['url' => 'att.com'],
            ['url' => 'microsoftonline.com'],
            ['url' => 'microsoftonline.com'],
            ['url' => 'microsoftonline.com'],
        ]);

        $merge = $collection1->merge($collection2);

//        dd($merge);

        $collection = collect([
            ['url' => 'comcast.net', 'industry' => 'telecom'],
            ['url' => 'nfl.com', 'industry' => 'entertainment'],
            ['url' => 'washingtonpost.com', 'industry' => 'news'],
            ['url' => 'homedepot.com', 'industry' => 'homebuilders'],
            ['url' => 'microsoftonline.com', 'industry' => 'software'],
        ]);

        $pluck = $collection->pluck('industry');

//        dd($pluck);

        $collection = collect([
            ['url' => 'americanexpress.com'],
            ['url' => 'pandora.com'],
            ['url' => 'ask.com'],
            ['url' => 'groupon.com'],
            ['url' => 'hulu.com'],
        ]);

//        dd($collection->pop());

        $collection = collect([
            ['url' => 'ups.com'],
            ['url' => 'dropbox.com'],
            ['url' => 'verizonwireless.com'],
            ['url' => 'usatoday.com'],
            ['url' => 'answers.com'],
        ]);

//        dd($collection->prepend(['url' => 'vegibit.com']));

        $collection = collect([
            'url' => 'cnet.com', 'industry' => 'tech news', 'reviews' => true
        ]);

        $pull = $collection->pull('industry');

//        dd($pull);

//        dd($collection);

        $collection = collect([
            ['url' => 'forbes.com'],
            ['url' => 'stackoverflow.com'],
            ['url' => 'office.com'],
        ]);

//        dd($collection->push(['url' => 'adobe.com']));

        $collection = collect([
            ['url' => 'macys.com'],
            ['url' => 'cbssports.com'],
            ['url' => 'fedex.com'],
        ]);

        $put = $collection->put(1, ['was put' => 'clobbered']);

//        dd($put);

        $collection = collect([
            ['url' => 'slickdeals.net'],
            ['url' => 'mlb.com'],
            ['url' => 'amazonaws.com'],
            ['url' => 'twitch.tv'],
            ['url' => 'lowes.com'],
            ['url' => 'webmd.com'],
            ['url' => 'businessinsider.com'],
            ['url' => 'bleacherreport.com'],
            ['url' => 'salesforce.com'],
            ['url' => 'bbc.com'],
            ['url' => 'github.com'],
            ['url' => 'gap.com'],
        ]);

//        dd($collection->random());

        $collection = collect([
            1234, 3456, 987, 3456, 92347
        ]);

        $reduseRecurtion = $collection->reduce(function($carry, $item){
            return $carry + $item;
        });

//        dd($reduseRecurtion);

        $collection = collect([
            'http://wsj.com',
            'http://discovercard.com',
            'http://realtor.com',
            'http://theguardian.com',
            'http://newegg.com',
            'http://nbcnews.com'
        ])->reverse();

//        dd($collection);

        $collection = collect([
            'flickr.com',
            'taboola.com',
            'costco.com',
            'nordstrom.com',
            'ancestry.com',
            'stackexhange.com'
        ])->search('stackexhange.com');

//        dd($collection);

        $collection = collect([
            'Expedia.com' => 'Has fun commercials',
            'Soundcloud.com' => 'Cool music website.',
            'Intuit.com ' => 'Business software for all.',
            'Patch.com' => 'local news',
            'Trulia.com' => 'Search Real Estate',
            'Accuweather.com' => 'Get the forecast',
            'Staples.com' => 'buy some office supplies',
        ])->slice(3, 2, true);

//        dd($collection);

        $collection = collect([0, 4, 9, 22, 123, 432, 1, 5, 77 ])->sort();

//        dd($collection);

        $collection = collect([
            ['url' => 'Overstock.com', 'votes' => 15],
            ['url' => 'Fidelity.com', 'votes' => 5],
            ['url' => 'Vimeo.com', 'votes' => 22],
            ['url' => 'Glassdoor.com', 'votes' => 5],
            ['url' => 'Sears.com', 'votes' => 10],
            ['url' => 'Ign.com ', 'votes' => 31],
            ['url' => 'Cbs.com', 'votes' => 1],
        ])->sortBy('votes');

//        dd($collection);

        $collection = collect([
            ['url' => 'Overstock.com', 'votes' => 15],
            ['url' => 'Fidelity.com', 'votes' => 5],
            ['url' => 'Vimeo.com', 'votes' => 22],
            ['url' => 'Glassdoor.com', 'votes' => 5],
            ['url' => 'Sears.com', 'votes' => 10],
            ['url' => 'Ign.com ', 'votes' => 31],
            ['url' => 'Cbs.com', 'votes' => 1],
        ])->sortByDesc('votes');

//        dd($collection);

        $collection = collect([
            ['url' => 'Spotify.com'],
            ['url' => 'Feedly.com'],
            ['url' => 'Lifehacker.com'],
            ['url' => 'Bloomberg.com'],
            ['url' => 'Foodnetwork.com'],
            ['url' => 'T-mobile.com'],
        ]);

        $chunk = $collection->splice(3, 2, [['url' => 'Gizmodo.com'], ['url' => 'Woot.com']]);

//        var_dump($chunk);
//
//        dd($collection);

        $collection = collect([
            ['burger', 'cost' => 2.58],
            ['fries', 'cost' => 1.33],
            ['lemonade', 'cost' => 2.25],
            ['ice cream', 'cost' => 1.50]
        ])->sum('cost');

//        dd($collection);

        $collection = collect([
            ['burger', 'cost' => 2.58],
            ['fries', 'cost' => 1.33],
            ['lemonade', 'cost' => 2.25],
            ['ice cream', 'cost' => 1.50]
        ])->take(2);

//        dd($collection);

        $collection = collect([
            ['url' => 'google.com'],
            ['url' => 'facebook.com'],
            ['url' => 'amazon.com'],
            ['url' => 'youtube.com'],
            ['url' => 'twitter.com'],
            ['url' => 'craigslist.com'],
            ['url' => 'reddit.com'],
            ['url' => 'pinterest.com'],
            ['url' => 'apple.com'],
            ['url' => 'instagram.com'],
            ['url' => 'wordpress.com'],
            ['url' => 'target.com'],
            ['url' => 'buzzfeed.com'],
            ['url' => 'microsoft.com'],
        ]);

//        dd($collection->toArray());

        $collection = collect([
            ['url' => 'google.com'],
            ['url' => 'facebook.com'],
            ['url' => 'amazon.com'],
            ['url' => 'youtube.com'],
            ['url' => 'twitter.com'],
            ['url' => 'craigslist.com'],
            ['url' => 'reddit.com'],
            ['url' => 'pinterest.com'],
            ['url' => 'apple.com'],
            ['url' => 'instagram.com'],
            ['url' => 'wordpress.com'],
            ['url' => 'target.com'],
            ['url' => 'buzzfeed.com'],
            ['url' => 'microsoft.com'],
        ]);

//        dd($collection->toJson());

        $collection = collect([5, 10, 4, 15, 20]);

        $collection->transform(function ($item, $key) {
            return $item * 3;
        });

//        dd($collection);

        $collection = collect(['pizza', 'pizza', 'water', 'fruit juice', 'water', 7, 7, 7]);

        $unique = $collection->unique();

//        dd($unique);

        $collection = collect([
            '123' => 'google.com',
            '234' => 'amazon.com',
            '345' => 'yahoo.com',
            '456' => 'ebay.com',
            '567' => 'twitter.com',
            '678' => 'craigslist.com',
            '789' => 'netflix.com',
        ])->values();

//        dd($collection);

        $collection = collect([
            ['car' => 'Honda', 'mileage' => 2000],
            ['car' => 'Tesla', 'mileage' => 35000],
            ['car' => 'Subaru', 'mileage' => 15000],
            ['car' => 'asdf', 'mileage' => 15000],
            ['car' => 'Ford', 'mileage' => 100000],
            ['car' => 'Chevy', 'mileage' => 85000],
            ['car' => 'Kia', 'mileage' => 100250],
        ])->where('mileage', 15000);

        dd($collection);






//        $data['sites'] = $sites;
//
//        return view('general_playground.laravel_collections')
//            ->with('data', $data);
    }

}
