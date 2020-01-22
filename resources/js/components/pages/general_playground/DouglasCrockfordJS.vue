<template>
    <div>
        <div v-for="message in messages">{{message}}</br></br></div>
    </div>
</template>

<script>
    export default {

        data() {
            return {
                messages: []
            };
        },

        methods: {},
       

        mounted:function(){
            
            var vue = this;

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
            vue.messages.push(message);

            var crockford = {};

            crockford.fact = 'On the first day, Crockford created JSON and it was good, on the second day he rested.';

            crockford.preach = function () {
                vue.messages.push(this.fact)
            };
            crockford.preach();

            var House = function(){};
            
            House.prototype.getwindows = function () {
                return this.windows;
            };

            House.prototype.getcolor = function () {
                return this.color;
            };

            let house1 = new House(10, 'red');
            let house2 = new House(12, 'grey');

            vue.messages.push('House two has ' + house2.getwindows() + ' Windows and is ' + house2.getcolor() + ' in color.');


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

            vue.messages.push(describe.apply(truck, ['INFO'])  + describe.apply(car, [2016]));
            
            var sum = function () {
                var i, sum = 0;
                for (i = 0; i < arguments.length; i += 1) {
                    sum += arguments[i];
                }
                return sum;
            };

            vue.messages.push(sum(1,2,3,4,5,6,7,8,9));

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
                    vue.messages.push(e.name + ': ' + e.message);
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
            vue.messages.push(recurred);


            var fact = 'Doug Crockford can go back in time like superman, as he did with ES4 to make ES5.';
            function roundhouse() {
                var fact = 'Douglas Crockford doesnt sleep, he waits to be triggered.';

                function jslint(fact) {
                    fact = 'If you execute "typeof Crockford" your browser will return "awesome"';
                    var amazing = 'At the end of every prototype chain is Doug Crockford.';
                }

                jslint();
            }

            roundhouse();

            vue.messages.push(fact);

            function crockford1() {
                var fact = "Douglas Crockford variable scopes are his fists";

                function nunchucks() {
                    vue.messages.push(fact);
                }

                swing(nunchucks);
            }

            function swing(nunchucks) {
                nunchucks();  // "Douglas Crockford variable scopes are his fists"
            }

            crockford1();

            function callbackfunction() {
                vue.messages.push('However I come from callbackfunction()');
            }

            function firstfunction(message, callbackfunction) {
                vue.messages.push(message);
                callbackfunction();
            }

            firstfunction('I come from firstfunction()', callbackfunction);


            var module = (function factory_asdf() {

                var privateobject = {fact: "Douglas Crockford can have full conversations using only javascript's reserved words."};

                return {
                    preach: function () {
                        vue.messages.push(privateobject.fact);
                    }
                };
            })();

            module.preach();


            var myarray = [
                'Lucky Number 7', function () {
                }, {make: 'Porche', model: '911 Turbo'}, 767, true,
                false, [], null, undefined, NaN
            ];

            myarray.forEach(function(element){
                vue.messages.push(typeof element);
                vue.messages.push(element);
            })

            var characters = ['Darth Vader', 'Yoda', 'Boba Fett'];
            var total = characters.push('Luke Skywalker', 'Han Solo');

            vue.messages.push(characters);
            vue.messages.push(total);

            var starwars = ['Episode 4: A New Hope',
                'Episode 5: The Empire Strikes Back',
                'Episode 6: Return of the Jedi',
                'Episode 1: The Phantom Menace',
                'Episode 2: Attack of the Clones',
                'Episode 3: Revenge of the Sith',
                'Episode 7: The Force Awakens'];

            vue.messages.push(starwars.indexOf('Episode 7: The Force Awakens'));           // 6
            vue.messages.push(starwars.indexOf('Episode 3: Revenge of the Sith'));          // 5
            vue.messages.push(starwars.indexOf('Episode 2: Attack of the Clones', 3));     // 4
            vue.messages.push(starwars.indexOf('Episode 1: The Phantom Menace', -4));   // 3

            var locatedat = [];
            var enemies = ['Kylo Ren', 'Darth Vader', 'Storm Trooper', 'General Hux', 'Emperor Palpatine', 'Storm Trooper'];
            var enemy = 'Storm Trooper';
            var enemylocation = enemies.indexOf(enemy);
            while (enemylocation != -1) {
                locatedat.push(enemylocation);
                enemylocation = enemies.indexOf(enemy, enemylocation + 1);
            }
            vue.messages.push(locatedat); //  [2, 5]

            var vaderparts = ['helmet', 'left arm', 'right arm', 'left leg', 'right leg'];
            var chopped = vaderparts.slice(2,3);

            vue.messages.push(chopped); // right arm

            var spacecraft = ['X Wing', 'Death Star', 'Millenium Falcon', 'Jedi Interceptor'];
            var allspacecraft = spacecraft.toString();

            vue.messages.push(allspacecraft);
            //  X Wing,Death Star,Millenium Falcon,Jedi Interceptor

            var summer = [10, 20, 30, 40, 50, 60, 70, 80].
                filter(function niceweather(temperature) {
                    return temperature >= 70;
                });
            vue.messages.push(summer);  //  70, 80


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
                vue.messages.push(craft.name);
            });

            var wisdom = ['Do. Or do not. There is no try', 'Luminous beings are we…not this crude matter', 'Wars not make one great', 'Judge me by my size, do you?', 'Truly wonderful, the mind of a child is'];
            var wisdom = wisdom.join(' <=***=> ');
            vue.messages.push(wisdom);
            //  Do. Or do not. There is no try <=***=> Luminous beings are we…not this crude matter <=***=> Wars not make one great <=***=> Judge me by my size, do you? <=***=> Truly wonderful, the mind of a child is

            var numbers = [2, 4, 6];

            numbers.original = [];

            numbers.forEach(function (element, index, numbers) {
                numbers[index] *= 2;
                numbers.original.push(element);
            });

            function listNumbers(element, index) {
                vue.messages.push('index' + index + ' has element ' + element);
            }

            numbers.original.forEach(listNumbers);
            numbers.forEach(listNumbers);

            var legoStarWarsGames = ['Empire Vs Rebels', 'Ultimate Rebel', 'The Quest for R2-D2'];
            var legoStarWarsSets = [10188, 75111, 75110, 75109];

            var gamesAndSets = legoStarWarsGames.concat(legoStarWarsSets);

            vue.messages.push(gamesAndSets);
            //  ["Empire Vs Rebels", "Ultimate Rebel", "The Quest for R2-D2", 10188, 75111, 75110, 75109]

            var starwars = ['star wars', 'the phantom menace', 'the force awakens'];
            var swModified = starwars.map(function (element) {
                return element.toUpperCase();
            });

            vue.messages.push(swModified);
            //   ["STAR WARS", "THE PHANTOM MENACE", "THE FORCE AWAKENS"]

            var str = 'The Clone Wars';
            var arr = Array.prototype.map.call(str, function (el) {
                return el;
            });

            vue.messages.push(str); // The Clone Wars
            vue.messages.push(arr); //  ["T", "h", "e", " ", "C", "l", "o", "n", "e", " ", "W", "a", "r", "s"]

            function numsasexpected(one, two) {
                vue.messages.push(one);
                vue.messages.push(two);
                return one - two;
            }
           

            var oldstring = 'AAPL is a great company with awesome products';
            var newstring = oldstring.replace(/aapl/i, 'Apple');
            vue.messages.push(newstring);
            //  Apple is a great company with awesome products


            var Car = function(){};

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

            car = new Car();
            vue.messages.push(car.applythrottle('Pedal Assist'));
            vue.messages.push(car.applybrakes(50));

        },

    }
</script>   