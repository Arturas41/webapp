/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

require('./bootstrap');

window.Vue = require('vue');

/**
 * The following block of code may be used to automatically register your
 * Vue components. It will recursively scan this directory for the Vue
 * components and automatically register them with their "basename".
 *
 * Eg. ./components/ExampleComponent.vue -> <example-component></example-component>
 */

// const files = require.context('./', true, /\.vue$/i)
// files.keys().map(key => Vue.component(key.split('/').pop().split('.')[0], files(key).default))

Vue.component('example-component', require('./components/ExampleComponent.vue').default);
Vue.component('vue-playground', require('./components/VuePlayground.vue').default);
Vue.component('vue-playground2', require('./components/VuePlayground2.vue').default);

/**
 * Next, we will create a fresh Vue application instance and attach it to
 * the page. Then, you may begin adding components to this application
 * or customize the JavaScript scaffolding to fit your unique needs.
 */

const app = new Vue({
    el: '#app',
    // the data object,
    // todos is where we collect to do items
    // newTodo data binds to the form input
    // data: {
    //     todos: [
    //         { body: 'Eat a Sandwich', completed: false }
    //     ],
    //
    //     newTodo: ''
    // },
    // methods: {
    //     // function declarations
    //     addTodo: function (e) {
    //
    //         // prevent the HTML form from submitting to the server
    //         e.preventDefault();
    //
    //         this.todos.push({
    //             body: this.newTodo,
    //             completed: false
    //         });
    //
    //         // simply set the form input field to an empty string
    //         // after we add a todo item
    //         this.newTodo = '';
    //     }
    // }
});
