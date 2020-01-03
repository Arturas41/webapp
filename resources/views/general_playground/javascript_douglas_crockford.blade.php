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

    </script>
@endsection
