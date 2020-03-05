console.log('Running app.js');

const fs = require('fs');
const _ = require('lodash');
const yargs = require('yargs');

const todos = require('./todos.js');


const argv = yargs.argv;

var command = argv._[0];
console.log('Running Command: ', command);

if(command === 'addTodo'){
    todos.addTodo(argv.title);
}else if (command === 'deleteTodo') {
    var todoDeleted = todos.deleteTodo(argv.title);
    var message = todoDeleted ? 'Todo was deleted' : 'Todo not found';
    console.log(message);
}else if (command === 'readTodo') {
    var todo = todos.readTodo(argv.title);
    if (todo) {
        console.log('Great! The todo was found.');
        todos.logTodo(todo);
    } else {
        console.log('Whoops! The todo was not found.');
    }
}else if (command === 'listTodos') {
    var allTodos = todos.listTodos();
    console.log('Printing ' +allTodos.length + ' todo(s).');
    allTodos.forEach((todo) => todos.logTodo(todo));
}else{
    console.log('Invalid command.');
}
//console.log(todos.addTodo());
//fs.appendFile('file.txt', 'Writing to filesystem!',(error) => {
//   console.log(error); 
//});
//console.log('Data has been written to file.txt');