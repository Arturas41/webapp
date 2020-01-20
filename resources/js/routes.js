import PageOne from './components/vue_playground2/PageOne.vue';
import PageTwo from './components/vue_playground2/PageTwo.vue';

 export const routes = [
     
     {path: '/games', component: PageOne, name: 'one'},
     {path: '/games/create', component: PageOne, name: 'one'},
     {path: '/games/reviews', component: PageOne, name: 'one'},
     
     
    {path: '/page-one/:id', component: PageOne, name: 'one'},
    {path: '/page-two', component: PageTwo , name: 'two'},
    {path: '/props', component: PageTwo}
];

