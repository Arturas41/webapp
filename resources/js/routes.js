import PageOne from './components/vue_playground2/PageOne.vue';
import PageTwo from './components/vue_playground2/PageTwo.vue';

 export const routes = [
    {path: '/page-one/:id', component: PageOne, name: 'one'},
    {path: '/page-two', component: PageTwo , name: 'two'}
];