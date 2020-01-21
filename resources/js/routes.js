import PageOne from './components/vue_playground2/PageOne.vue';
import PageTwo from './components/vue_playground2/PageTwo.vue';

import Login from './components/pages/login/Login.vue';

import GamesList from './components/pages/games/List.vue';
import GamesCreate from './components/pages/games/Create.vue';
import GamesView from './components/pages/games/View.vue';

import GamesReviewsList from './components/pages/games/reviews/List.vue';
import GamesReview from './components/pages/games/reviews/View.vue';

 export const routes = [
     
     {path: '/login', component: Login, name: 'login'},
     //c_games routes
     {path: '/games', component: GamesList, name: 'games'},
     {path: '/games/create', component: GamesCreate, name: 'game_create'},
     {path: '/games/reviews', component: GamesReviewsList, name: 'game_reviews'},
     
     {path: '/games/reviews/:id', component: GamesReview, name: 'game_review'},
     {path: '/games/:id', component: GamesView, name: 'game'},
     
     

     
     //some test routes
    {path: '/page-one/:id', component: PageOne, name: 'one'},
    {path: '/page-two', component: PageTwo , name: 'two'},
    {path: '/props', component: PageTwo}
];

