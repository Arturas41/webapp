@extends('layouts/app')

@section('content')

    <script>
        var firstObject = {};

        var firstObject = {
            color : 'blue',
            holiday : 'Christmas',
            day : 25
        };

        var game = {
            name: 'Minecraft',
            price: 29.99,
            arrival: {
                day: 'Thursday',
                date: 'December 17th, 2015',
                devloper: 'Mojang'
            },
            info: {
                platform: 'Wii U',
                company: 'Nintendo',
                devloper: 'Mojang'
            }
        };

        var name = game.name;
        var price = game.price;
        var arrivalday = game.arrival.day;
        var arrivaldate = game.arrival.date;
        var platform = game.info.platform;
        var company = game.info.company;
        var developer = game.info.developer || 'asdf123';
        var message = name + ' by ' + developer + ' is available for the ' + company +
            ' ' + platform + ' as of ' + arrivalday + ' ' + arrivaldate +
            ' for the low price of ' + price;
        // console.log(message)

        crockford = {};

        crockford.fact = 'On the first day, Crockford created JSON and it was good, on the second day he rested.';

        crockford.preach = function () {
            var message = this.fact;
            // console.log(message)
        };

        crockford.preach();

        function randomfact() {
            var message = 'Everytime you create a global variable, Douglas Crockford roadhouse kicks an intern';
            if (this == '[object Window]') {
                message += ' ( this is equal to <b>[object Window]</b> )';
                // console.log(message)
            }
        }

        //  function invocation
        randomfact()

        var House = function (windows, color) {
            this.windows = windows;
            this.color = color;
        };

        House.prototype.getwindows = function () {
            return this.windows;
        };

        House.prototype.getcolor = function () {
            return this.color;
        };

        house1 = new House(10, 'red');
        house2 = new House(12, 'grey');

        // console.log('House two has ' + house2.getwindows() + ' Windows and is ' + house2.getcolor() + ' in color.');

        var car = {
            make: 'Subaru',
            model: 'WRX'
        };
        var truck = {
            make: 'Nissan',
            model: 'Titan'
        };

        function describe(info) {
            return info + ' ' + this.make + ' ' + this.model;
        }

        // console.log(describe.apply(truck, [2015]) + ' ( <code>this</code> bound to <code>truck</code> )<br> ' + describe.apply(car, [2016]) + ' ( <code>this</code> bound to <code>car</code>) ');

        var sum = function () {
            var i, sum = 0;
            for (i = 0; i < arguments.length; i += 1) {
                sum += arguments[i];
            }
            return sum;
        };

        // console.log(sum(1,2,3,4,5,6,7,8,9));

        var adder = function (one, two) {
            if (typeof one !== 'number' || typeof two !== 'number') {
                throw {
                    name: 'TypeError',
                    message: 'adder() needs numbers'
                }
            }
            return one + two;
        };

        var tryadding = function () {
            try {
                adder("four");
            } catch (e) {
                var message = (e.name + ': ' + e.message);
                // console.log(message)
            }
        };

        tryadding();

        var recurred = '';
        var hanoi = function (disc, source, temporary, destination) {
            if (disc > 0) {
                hanoi(disc - 1, source, destination, temporary);
                recurred += 'Move disc ' + disc + ' from ' + source + ' to ' + destination + '<br>';
                hanoi(disc - 1, temporary, source, destination);
            }
        };

        hanoi(4, 'Soure', 'Temporary', 'Destination');
        // console.log(recurred);



        var fact = 'Doug Crockford can go back in time like superman, as he did with ES4 to make ES5.';
        function roundhouse() {
            var fact = 'Douglas Crockford doesnt sleep, he waits to be triggered.';

            function jslint(fact) {
                fact = 'If you execute "typeof Crockford" your browser will return "awesome"';
                amazing = 'At the end of every prototype chain is Doug Crockford.';
            }

            jslint();
        }

        roundhouse();

        // console.log(fact);        // Doug Crockford can go back in time like superman, as he did with ES4 to make ES5.
        // console.log(amazing);     // At the end of every prototype chain is Doug Crockford.
        // jslint();    // ReferenceError: jslint is not defined


        function crockford1() {
            var fact = "Douglas Crockford variable scopes are his fists";

            function nunchucks() {
                // console.log(fact);
            }

            swing(nunchucks);
        }

        function swing(nunchucks) {
            nunchucks();  // "Douglas Crockford variable scopes are his fists"
        }

        crockford1();


        function callbackfunction() {
            // alert('<span class="text-primary">However I come from <code>callbackfunction()</code>!</span>');
        }

        function firstfunction(message, callbackfunction) {
            // alert(message);
            callbackfunction();
        }

        firstfunction('<span class="text-danger">I come from <code>firstfunction()</code>!</span><br>', callbackfunction);


        var module = (function factory_asdf() {

            var privateobject = {fact: "Douglas Crockford can have full conversations using only javascript's reserved words."};

            return {
                preach: function () {
                    // console.log(privateobject.fact);
                }
            };
        })();

        module.preach();

        var myarray = [
            'Lucky Number 7', function () {
            }, anobject = {make: 'Porche', model: '911 Turbo'}, 767, true,
            false, [], null, undefined, NaN
        ];

        // console.log(myarray.length);
        // console.log(typeof myarray[0]);
        // console.log(myarray[0]);
        // console.log(typeof myarray[1]);
        // console.log(myarray[1]);
        // console.log(typeof myarray[2]);
        // console.log(myarray[2]);
        // console.log(typeof myarray[3]);
        // console.log(myarray[3]);
        // console.log(typeof myarray[4]);
        // console.log(myarray[4]);
        // console.log(typeof myarray[5]);
        // console.log(myarray[5]);
        // console.log(typeof myarray[6]);
        // console.log(myarray[6]);
        // console.log(typeof myarray[7]);
        // console.log(myarray[7]);
        // console.log(typeof myarray[8]);
        // console.log(myarray[8]);
        // console.log(typeof myarray[9]);
        // console.log(myarray[9]);

        var characters = ['Darth Vader', 'Yoda', 'Boba Fett'];
        var total = characters.push('Luke Skywalker', 'Han Solo');

        // console.log(characters); // ["Darth Vader", "Yoda", "Boba Fett", "Luke Skywalker", "Han Solo"]
        // console.log(total);      // 5

        var starwars = ['Episode 4: A New Hope',
            'Episode 5: The Empire Strikes Back',
            'Episode 6: Return of the Jedi',
            'Episode 1: The Phantom Menace',
            'Episode 2: Attack of the Clones',
            'Episode 3: Revenge of the Sith',
            'Episode 7: The Force Awakens'];

        // console.log(starwars.indexOf('Episode 7: The Force Awakens'));           // 6
        // console.log(starwars.indexOf('Episode 3: Revenge of the Sith'));          // 5
        // console.log(starwars.indexOf('Episode 2: Attack of the Clones', 3));     // 4
        // console.log(starwars.indexOf('Episode 1: The Phantom Menace', -4));   // 3

        var locatedat = [];
        var enemies = ['Kylo Ren', 'Darth Vader', 'Storm Trooper', 'General Hux', 'Emperor Palpatine', 'Storm Trooper'];
        var enemy = 'Storm Trooper';
        var enemylocation = enemies.indexOf(enemy);
        while (enemylocation != -1) {
            locatedat.push(enemylocation);
            enemylocation = enemies.indexOf(enemy, enemylocation + 1);
        }
        // console.log(locatedat); //  2, 5

        var vaderparts = ['helmet', 'left arm', 'right arm', 'left leg', 'right leg'];
        var chopped = vaderparts.slice(2,3);

        // console.log(chopped); // right arm

        var spacecraft = ['X Wing', 'Death Star', 'Millenium Falcon', 'Jedi Interceptor'];
        var allspacecraft = spacecraft.toString();

        // console.log(allspacecraft);
        //  X Wing,Death Star,Millenium Falcon,Jedi Interceptor

        var summer = [10, 20, 30, 40, 50, 60, 70, 80].
            filter(function niceweather(temperature) {
                return temperature >= 70;
            });
        // console.log(summer);  //  70, 80

        var spacecraft = [
            {name: 'Tie Fighter', speed: 200000},
            {name: 'Super Star Destroyer', speed: 300000},
            {name: 'Death Star', speed: 400000},
            {name: 'T65 X Wing Star fighter', speed: 500000},
            {name: 'T47 Air (snow) Speeder', speed: 600000},
            {name: '74-Z Speeder Bike', speed: 700000},
            {name: 'Millenium Falcon', speed: 800000}
        ];

        function filterBySpeed(spacecraft) {
            return spacecraft.speed > 450000;
        }

        var fleet = spacecraft.filter(filterBySpeed);

        fleet.forEach(function (craft) {
            // console.log(craft.name);
        });

        var wisdom = ['Do. Or do not. There is no try', 'Luminous beings are we…not this crude matter', 'Wars not make one great', 'Judge me by my size, do you?', 'Truly wonderful, the mind of a child is'];
        var wisdom = wisdom.join(' <=***=> ');
        // console.log(wisdom);
        //  Do. Or do not. There is no try <=***=> Luminous beings are we…not this crude matter <=***=> Wars not make one great <=***=> Judge me by my size, do you? <=***=> Truly wonderful, the mind of a child is

        var numbers = [2, 4, 6];

        numbers.original = [];

        numbers.forEach(function (element, index, numbers) {
            numbers[index] *= 2;
            numbers.original.push(element);
        });

        function listNumbers(element, index) {
            // console.log('index' + index + ' has element ' + element);
        }

        numbers.original.forEach(listNumbers);
        numbers.forEach(listNumbers);

        var legoStarWarsGames = ['Empire Vs Rebels', 'Ultimate Rebel', 'The Quest for R2-D2'];
        var legoStarWarsSets = [10188, 75111, 75110, 75109];

        var gamesAndSets = legoStarWarsGames.concat(legoStarWarsSets);

        // console.log(gamesAndSets);
        //  ["Empire Vs Rebels", "Ultimate Rebel", "The Quest for R2-D2", 10188, 75111, 75110, 75109]

        var starwars = ['star wars', 'the phantom menace', 'the force awakens'];
        var swModified = starwars.map(function (element) {
            return element.toUpperCase();
        });

        // console.log(swModified);
        //   ["STAR WARS", "THE PHANTOM MENACE", "THE FORCE AWAKENS"]

        var str = 'The Clone Wars';
        var arr = Array.prototype.map.call(str, function (el) {
            return el;
        });
        // console.log(nums)
        // console.log(str); // The Clone Wars
        // console.log(arr); //  ["T", "h", "e", " ", "C", "l", "o", "n", "e", " ", "W", "a", "r", "s"]

        var nums = [1, 10, 2, 21, 33, 04, 12, 09, 300];
        nums.sort(numsasexpected);

        function numsasexpected(one, two) {
            // console.log(one);
            // console.log(two);
            return one - two;
        }

        // console.log(nums);
        //   [1, 2, 4, 9, 10, 12, 21, 33, 300]

        var oldstring = 'AAPL is a great company with awesome products';
        var newstring = oldstring.replace(/aapl/i, 'Apple');
        // console.log(newstring);
        //  Apple is a great company with awesome products


        //prototype+module pattern 
        var Car = function(color, brand){
            this.color = color;
            this.brand = brand;
        }

        Car.prototype = function () {
            //privates
            var engangemotor = function () {
                    return 1;
                },
                applythrottle = function (mode) {
                    if (engangemotor() == 1) {
                        return 'Moving forward via ' + mode + ' mode.';
                    }

                },
                applybrakes = function (percent) {
                    return 'Applying brakes at ' + percent + ' percent.';
                };
            //publics
            return {
                applythrottle:applythrottle,
                applybrakes:applybrakes
            }

        }();

        // car = new Car('Red ', ' ASDF');
        // console.log(car.color + car.brand + car.applythrottle('Pedal Assist'));
        // console.log(car.applybrakes(50));
        //
        // car2 = new Car('Blue', 'ASDF123');
        // console.log(car2.color + car2.brand + car2.applythrottle('Throttle Only'));
        // console.log(car2.applybrakes(75));

    </script>
@endsection
