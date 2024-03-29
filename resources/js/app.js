/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

require('./bootstrap');

import { routes } from "./routes.js";
import VueRouter from 'vue-router';

import 'bootstrap/dist/css/bootstrap.css';

import Buefy from 'buefy';
import 'buefy/dist/buefy.css';

import Vuetify from 'vuetify';
import 'vuetify/dist/vuetify.min.css';

import fontawesome from '@fortawesome/fontawesome';
import fas from '@fortawesome/fontawesome-free-solid';
fontawesome.library.add(fas);

import '@mdi/font/css/materialdesignicons.min.css';

import VueSidebarMenu from 'vue-sidebar-menu';

window.Vue = require('vue');

window.events = new Vue();
 
window.flash = function (message, type) {
    window.events.$emit('flash', message, type)
};

window.Vue.prototype.authorize = function (handler) {
    let user = window.App.user;
 
    return user ? handler(user) : false;
};

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
Vue.component('flash', require('./components/Flash.vue').default);
Vue.component('paginator', require('./components/Paginator.vue').default);
Vue.component('reply', require('./components/Reply.vue').default);
Vue.component('new-reply', require('./components/NewReply.vue').default);
Vue.component('thread-view', require('./components/pages/Thread.vue').default);
Vue.component('user-notifications', require('./components/UserNotifications.vue').default);
Vue.component('avatar-form', require('./components/AvatarForm.vue').default);

Vue.component('vp2-bootstrap-card', require('./components/pages/general_playground/vue_playground2/BootstrapCard.vue').default);
Vue.component('vp2-parent-card', require('./components/pages/general_playground/vue_playground2/ParentCard.vue').default);
Vue.component('vp2-parent-card2', require('./components/pages/general_playground/vue_playground2/ParentCard2.vue').default);
Vue.component('vp2-slots-example', require('./components/pages/general_playground/vue_playground2/SlotsExample.vue').default);
Vue.component('vp2-form', require('./components/pages/general_playground/vue_playground2/Form.vue').default);

Vue.component('sidebar-menu', require('./components/layout/sidebar/SidebarMenu.vue').default);
Vue.component('sidebar', require('./components/layout/sidebar/Sidebar.vue').default);

Vue.component('form-errors', require('./components/pages/partials/FormErrors.vue').default);

Vue.component('c_study-material-delete-dialog', require('./components/pages/c_study/materials/Delete.vue').default);
Vue.component('c_study-material-form', require('./components/pages/c_study/materials/Form.vue').default);

Vue.use(VueRouter);
Vue.use(Buefy);
Vue.use(Vuetify);
Vue.use(VueSidebarMenu);

const router = new VueRouter({routes});

Vue.prototype.$eventBus = new Vue();

const app = new Vue({
    el: '#app',
    router,
    vuetify: new Vuetify(),
});





