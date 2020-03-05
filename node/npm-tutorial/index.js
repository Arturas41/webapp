const _ = require('underscore');
 
let people = [{
            name: 'Jim',
            mustache: true
        },
        {
            name: 'Glenn',
            mustache: true
        },
        {
            name: 'Brian',
            mustache: true
        },
        {
            name: 'George',
            mustache: ''
        }
    ],
 
    hasCropDuster = (value) => {
        return (value.mustache !== '');
    };
 
console.log('Do all people have a mustache?');
console.log(_.every(people, hasCropDuster));