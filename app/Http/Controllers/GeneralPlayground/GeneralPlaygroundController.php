<?php

namespace App\Http\Controllers\GeneralPlayground;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Carbon\Carbon;
use Illuminate\Support\Str;

class GeneralPlaygroundController extends Controller
{

    public function laravelStringHelpers(){

        $collection = collect();

        $data['helper'] = "Str::camel('this-is__a_--_string')";
        $data['result'] = Str::camel('this-is__a_--_string');
        $collection->push($data);

        $data['helper'] = "Str::endsWith('This is my name', 'name')";
        $data['result'] = Str::endsWith('This is my name', 'name');
        $collection->push($data);

        $data['helper'] = "Str::snake('fooBar')";
        $data['result'] = Str::snake('fooBar');
        $collection->push($data);

        $data['helper'] = "Str::limit('The quick brown fox jumps over the lazy dog', 20)";
        $data['result'] = Str::limit('The quick brown fox jumps over the lazy dog', 20);
        $collection->push($data);

        $data['helper'] = "Str::startsWith('This is my name', 'This')";
        $data['result'] = Str::startsWith('This is my name', 'This');
        $collection->push($data);

        $data['helper'] = "Str::contains('This is my name', 's my na')";
        $data['result'] = Str::contains('This is my name', 's my na');
        $collection->push($data);

        $data['helper'] = "Str::finish('this/string', '/')";
        $data['result'] = Str::finish('this/string', '/');
        $collection->push($data);

        $data['helper'] = "Str::is('*we*', 'Here we have a pattern')";
        $data['result'] = Str::is('*we*', 'Here we have a pattern');
        $collection->push($data);

        $data['helper'] = "Str::is('*pattern', 'Here we have a pattern')";
        $data['result'] = Str::is('*pattern', 'Here we have a pattern');
        $collection->push($data);

        $data['helper'] = "Str::is('Here*', 'Here we have a pattern')";
        $data['result'] = Str::is('Here*', 'Here we have a pattern');
        $collection->push($data);

        $data['helper'] = "Str::is('joker', 'Here we have a pattern')";
        $data['result'] = Str::is('joker', 'Here we have a pattern');
        $collection->push($data);

        $data['helper'] = "Str::plural('Truck')";
        $data['result'] = Str::plural('Truck');
        $collection->push($data);

        $data['helper'] = "Str::plural('House')";
        $data['result'] = Str::plural('House');
        $collection->push($data);

        $data['helper'] = "Str::singular('Houses')";
        $data['result'] = Str::singular('Houses');
        $collection->push($data);

        $data['helper'] = "Str::random(10)";
        $data['result'] = Str::random(10);
        $collection->push($data);

        $data['helper'] = "Str::slug('Soon this string will be sluggified')";
        $data['result'] = Str::slug('Soon this string will be sluggified');
        $collection->push($data);

        $data['helper'] = "Str::studly('foo_bar')";
        $data['result'] = Str::studly('foo_bar');
        $collection->push($data);

        $data['helper'] = "Str::title('a nice title uses the correct case')";
        $data['result'] = Str::title('a nice title uses the correct case');
        $collection->push($data);

        return $collection;

    }

    public function carbon(){

        $collection = collect();

        $data['carbon'] = "new Carbon";
        $data['result'] = new Carbon;
        $collection->push($data);
        
        $data['carbon'] = "Carbon::today()";
        $data['result'] = Carbon::today();
        $collection->push($data);

        $data['carbon'] = "Carbon::tomorrow()";
        $data['result'] = Carbon::tomorrow();
        $collection->push($data);

        $data['carbon'] = "Carbon::yesterday()";
        $data['result'] = Carbon::yesterday();
        $collection->push($data);

        $data['carbon'] = "Carbon::create(1999, 12, 31, 23, 59, 59)";
        $data['result'] = Carbon::create(1999, 12, 31, 23, 59, 59);
        $collection->push($data);

        $data['carbon'] = "Carbon::createFromDate(1999, 12, 31)";
        $data['result'] = Carbon::createFromDate(1999, 12, 31);
        $collection->push($data);

        $data['carbon'] = "Carbon::createFromTime(13, 35, 55)";
        $data['result'] = Carbon::createFromTime(13, 35, 55);
        $collection->push($data);

        $data['carbon'] = "Carbon::createFromTimestamp(0)";
        $data['result'] = Carbon::createFromTimestamp(0);
        $collection->push($data);

        $data['carbon'] = "Carbon::createFromTimestamp(1447271429)";
        $data['result'] = Carbon::createFromTimestamp(1447271429);
        $collection->push($data);

        $data['carbon'] = "new Carbon('November 5th 2013')";
        $data['result'] = new Carbon('November 5th 2013');
        $collection->push($data);

        $data['carbon'] = "new Carbon('5th November 2013')";
        $data['result'] = new Carbon('5th November 2013');
        $collection->push($data);

        $data['carbon'] = "new Carbon('20131105')";
        $data['result'] = new Carbon('20131105');
        $collection->push($data);

        $data['carbon'] = "new Carbon('2013/11/5')";
        $data['result'] = new Carbon('2013/11/5');
        $collection->push($data);

        $data['carbon'] = "new Carbon('13-11-05')";
        $data['result'] = new Carbon('13-11-05');
        $collection->push($data);

        $data['carbon'] = "new Carbon('2013-11-05')";
        $data['result'] = new Carbon('2013-11-05');
        $collection->push($data);

        $data['carbon'] = "new Carbon('-3 days')";
        $data['result'] = new Carbon('-3 days');
        $collection->push($data);

        $data['carbon'] = "new Carbon('-4 weeks')";
        $data['result'] = new Carbon('-4 weeks');
        $collection->push($data);

        $data['carbon'] = "new Carbon('+2 days 9 hours')";
        $data['result'] = new Carbon('+2 days 9 hours');
        $collection->push($data);

        $data['carbon'] = "new Carbon('+3 weeks 4 days')";
        $data['result'] = new Carbon('+3 weeks 4 days');
        $collection->push($data);

        $data['carbon'] = "new Carbon('+3 years 1 months 1 day 5 hours 33 minutes 25 seconds')";
        $data['result'] = new Carbon('+3 years 1 months 1 day 5 hours 33 minutes 25 seconds');
        $collection->push($data);

        $data['carbon'] = "new Carbon('-3 days')";
        $data['result'] = new Carbon('-3 days');
        $collection->push($data);

        $data['carbon'] = "(new Carbon('-3 days'))->toDateString()";
        $data['result'] = (new Carbon('-3 days'))->toDateString();
        $collection->push($data);

        $data['carbon'] = "(new Carbon('+5 days'))->toDateTimeString()";
        $data['result'] = (new Carbon('+5 days'))->toDateTimeString();
        $collection->push($data);

        $data['carbon'] = "(new Carbon('tomorrow'))->toAtomString()";
        $data['result'] = (new Carbon('tomorrow'))->toAtomString();
        $collection->push($data);

        $data['carbon'] = "(new Carbon('next week'))->toCookieString()";
        $data['result'] = (new Carbon('next week'))->toCookieString();
        $collection->push($data);

        $data['carbon'] = "(new Carbon('now'))->toDayDateTimeString()";
        $data['result'] = (new Carbon('now'))->toDayDateTimeString();
        $collection->push($data);

        $data['carbon'] = "(new Carbon('now'))->toFormattedDateString()";
        $data['result'] = (new Carbon('now'))->toFormattedDateString();
        $collection->push($data);

        $data['carbon'] = "(new Carbon('now'))->toIso8601String()";
        $data['result'] = (new Carbon('now'))->toIso8601String();
        $collection->push($data);

        $data['carbon'] = "(new Carbon('now'))->toRfc850String()";
        $data['result'] = (new Carbon('now'))->toRfc850String();
        $collection->push($data);

        $data['carbon'] = "(new Carbon('now'))->toRfc1036String()";
        $data['result'] = (new Carbon('now'))->toRfc1036String();
        $collection->push($data);

        $data['carbon'] = "(new Carbon('now'))->toRfc1123String()";
        $data['result'] = (new Carbon('now'))->toRfc1123String();
        $collection->push($data);

        $data['carbon'] = "(new Carbon('now'))->toRfc2822String()";
        $data['result'] = (new Carbon('now'))->toRfc2822String();
        $collection->push($data);

        $data['carbon'] = "(new Carbon('now'))->toRfc3339String()";
        $data['result'] = (new Carbon('now'))->toRfc3339String();
        $collection->push($data);

        $data['carbon'] = "(new Carbon('now'))->toRssString()";
        $data['result'] = (new Carbon('now'))->toRssString();
        $collection->push($data);

        $data['carbon'] = "(new Carbon('now'))->toTimeString()";
        $data['result'] = (new Carbon('now'))->toTimeString();
        $collection->push($data);

        $data['carbon'] = "(new Carbon('now'))->toW3cString()";
        $data['result'] = (new Carbon('now'))->toW3cString();
        $collection->push($data);

        $data['carbon'] = "(new Carbon('now'))->format('l')";
        $data['result'] = (new Carbon('now'))->format('l');
        $collection->push($data);

        $data['carbon'] = "(new Carbon('now'))->format('l jS \of F Y h:i:s A')";
        $data['result'] = (new Carbon('now'))->format('l jS \of F Y h:i:s A');
        $collection->push($data);

        $data['carbon'] = "(new Carbon('now'))->format(DATE_RFC2822)";
        $data['result'] = (new Carbon('now'))->format(DATE_RFC2822);
        $collection->push($data);

        $data['carbon'] = "(new Carbon('now'))->format(DATE_ATOM)";
        $data['result'] = (new Carbon('now'))->format(DATE_ATOM);
        $collection->push($data);

        $data['carbon'] = "(new Carbon('now'))->format('l \t\h\e jS')";
        $data['result'] = (new Carbon('now'))->format('l \t\h\e jS');
        $collection->push($data);

        $data['carbon'] = "(new Carbon('now'))->format('F j, Y, g:i a')";
        $data['result'] = (new Carbon('now'))->format('F j, Y, g:i a');
        $collection->push($data);

        $data['carbon'] = "(new Carbon('now'))->format('m.d.y')";
        $data['result'] = (new Carbon('now'))->format('m.d.y');
        $collection->push($data);

        $data['carbon'] = "(new Carbon('now'))->format('j, n, Y')";
        $data['result'] = (new Carbon('now'))->format('j, n, Y');
        $collection->push($data);

        $data['carbon'] = "(new Carbon('now'))->format('Ymd')";
        $data['result'] = (new Carbon('now'))->format('Ymd');
        $collection->push($data);

        $data['carbon'] = "(new Carbon('now'))->format('\i\t \i\s \t\h\e jS \d\a\y.')";
        $data['result'] = (new Carbon('now'))->format('\i\t \i\s \t\h\e jS \d\a\y.');
        $collection->push($data);

        $data['carbon'] = "(new Carbon('now'))->format('D M j G:i:s T Y')";
        $data['result'] = (new Carbon('now'))->format('D M j G:i:s T Y');
        $collection->push($data);

        $data['carbon'] = "(new Carbon('now'))->format('H:m:s \m \i\s\ \m\o\n\t\h')";
        $data['result'] = (new Carbon('now'))->format('H:m:s \m \i\s\ \m\o\n\t\h');
        $collection->push($data);

        $data['carbon'] = "(new Carbon('now'))->format('H:i:s')";
        $data['result'] = (new Carbon('now'))->format('H:i:s');
        $collection->push($data);

        $data['carbon'] = "(new Carbon('now'))->format('Y-m-d H:i:s')";
        $data['result'] = (new Carbon('now'))->format('Y-m-d H:i:s');
        $collection->push($data);

        $data['carbon'] = "(new Carbon('-5 days'))->diffForHumans()";
        $data['result'] = (new Carbon('-5 days'))->diffForHumans();
        $collection->push($data);

        $data['carbon'] = "(new Carbon('+2 hours'))->diffForHumans()";
        $data['result'] = (new Carbon('+2 hours'))->diffForHumans();
        $collection->push($data);

        $data['carbon'] = "(new Carbon('-33 minutes'))->diffForHumans()";
        $data['result'] = (new Carbon('-33 minutes'))->diffForHumans();
        $collection->push($data);

        $data['carbon'] = "(new Carbon('-55 seconds'))->diffForHumans()";
        $data['result'] = (new Carbon('-55 seconds'))->diffForHumans();
        $collection->push($data);

        $data['carbon'] = "(new Carbon('now'))->year";
        $data['result'] = (new Carbon('now'))->year;
        $collection->push($data);

        $data['carbon'] = "(new Carbon('now'))->yearIso";
        $data['result'] = (new Carbon('now'))->yearIso;
        $collection->push($data);

        $data['carbon'] = "(new Carbon('now'))->month";
        $data['result'] = (new Carbon('now'))->month;
        $collection->push($data);

        $data['carbon'] = "(new Carbon('now'))->day";
        $data['result'] = (new Carbon('now'))->day;
        $collection->push($data);

        $data['carbon'] = "(new Carbon('now'))->hour";
        $data['result'] = (new Carbon('now'))->hour;
        $collection->push($data);

        $data['carbon'] = "(new Carbon('now'))->minute";
        $data['result'] = (new Carbon('now'))->minute;
        $collection->push($data);

        $data['carbon'] = "(new Carbon('now'))->second";
        $data['result'] = (new Carbon('now'))->second;
        $collection->push($data);

        $data['carbon'] = "(new Carbon('now'))->micro";
        $data['result'] = (new Carbon('now'))->micro;
        $collection->push($data);

        $data['carbon'] = "(new Carbon('now'))->dayOfWeek";
        $data['result'] = (new Carbon('now'))->dayOfWeek;
        $collection->push($data);

        $data['carbon'] = "(new Carbon('now'))->dayOfYear";
        $data['result'] = (new Carbon('now'))->dayOfYear;
        $collection->push($data);

        $data['carbon'] = "(new Carbon('now'))->weekOfYear";
        $data['result'] = (new Carbon('now'))->weekOfYear;
        $collection->push($data);

        $data['carbon'] = "(new Carbon('now'))->daysInMonth";
        $data['result'] = (new Carbon('now'))->daysInMonth;
        $collection->push($data);

        $data['carbon'] = "(new Carbon('now'))->timestamp";
        $data['result'] = (new Carbon('now'))->timestamp;
        $collection->push($data);

        $data['carbon'] = "Carbon::now('America/New_York')";
        $data['result'] = Carbon::now('America/New_York');
        $collection->push($data);

        $data['carbon'] = "Carbon::createFromDate(2010, 5, 14, 'America/Chicago')";
        $data['result'] = Carbon::createFromDate(2010, 5, 14, 'America/Chicago');
        $collection->push($data);

        $data['carbon'] = "Carbon::createFromDate(2010, 5, 14, 'America/Chicago')->subDays(10)";
        $data['result'] = Carbon::createFromDate(2010, 5, 14, 'America/Chicago')->subDays(10);
        $collection->push($data);

        $data['carbon'] = "Carbon::createFromDate(2010, 5, 14, 'America/Chicago')->addDays(50)";
        $data['result'] = Carbon::createFromDate(2010, 5, 14, 'America/Chicago')->addDays(50);
        $collection->push($data);

        $data['carbon'] = "Carbon::now()->endOfWeek()->toDayDateTimeString()";
        $data['result'] = Carbon::now()->endOfWeek()->toDayDateTimeString();
        $collection->push($data);

        $data['carbon'] = "Carbon::now()->startOfMonth()->toDayDateTimeString()";
        $data['result'] = Carbon::now()->startOfMonth()->toDayDateTimeString();
        $collection->push($data);

        $data['carbon'] = "Carbon::now()->startOfYear()->toDayDateTimeString()";
        $data['result'] = Carbon::now()->startOfYear()->toDayDateTimeString();
        $collection->push($data);

        $data['carbon'] = "Carbon::now()->next()->toCookieString()";
        $data['result'] = Carbon::now()->next()->toCookieString();
        $collection->push($data);

        $data['carbon'] = "Carbon::now()->previous()->toCookieString()";
        $data['result'] = Carbon::now()->previous()->toCookieString();
        $collection->push($data);

        $data['carbon'] = "Carbon::now()->format('l')";
        $data['result'] = Carbon::now()->format('l');
        $collection->push($data);

        $data['carbon'] = "Carbon::now()->addDay()";
        $data['result'] = Carbon::now()->addDay();
        $collection->push($data);

        return $collection;
    }

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
