import PageOne from './components/vue_playground2/PageOne.vue';
import PageTwo from './components/vue_playground2/PageTwo.vue';

import Login from './components/pages/auth/Login.vue';
import Register from './components/pages/auth/Register.vue';
import Logout from './components/pages/auth/Logout.vue';

import GamesList from './components/pages/games/List.vue';
import GamesCreate from './components/pages/games/Create.vue';
import GamesView from './components/pages/games/View.vue';

import GamesReviewsList from './components/pages/games/reviews/List.vue';
import GamesReview from './components/pages/games/reviews/View.vue';

import DouglasCrockfordJS from './components/pages/general_playground/DouglasCrockfordJS.vue';
import LaravelStringHelpers from './components/pages/general_playground/LaravelStringHelpers.vue';
import LaravelCarbon from './components/pages/general_playground/LaravelCarbon.vue';

 export const routes = [
     
     //playground
     
     {path: '/general_playground/javascript_douglas_crockford', component: DouglasCrockfordJS, name: 'douglas_crockford_js'},
     {path: '/general_playground/laravel_string_helpers', component: LaravelStringHelpers, name: 'laravel_string_helpers'},
     {path: '/general_playground/laravel_carbon', component: LaravelCarbon, name: 'laravel_carbon'},
     
     {path: '/login', component: Login, name: 'login'},
     {path: '/register', component: Register, name: 'register'},
     {path: '/logout', component: Logout, name: 'logout'},   
     
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

