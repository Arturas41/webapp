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
import VuePlayground from './components/pages/general_playground/VuePlayground.vue';
import VuePlayground3 from './components/pages/general_playground/VuePlayground3.vue';
import VuePlayground2 from './components/pages/general_playground/vue_playground2/Main.vue';

 export const routes = [
     
     //playground
     
     {path: '/general_playground/javascript_douglas_crockford', component: DouglasCrockfordJS, name: 'douglas_crockford_js'},
     {path: '/general_playground/laravel_string_helpers', component: LaravelStringHelpers, name: 'laravel_string_helpers'},
     {path: '/general_playground/laravel_carbon', component: LaravelCarbon, name: 'laravel_carbon'},
     {path: '/general_playground/vue_playground', component: VuePlayground, name: 'vue_playground'},
     {path: '/general_playground/vue_playground3', component: VuePlayground3, name: 'vue_playground3'},
     {path: '/general_playground/vue_playground2', component: VuePlayground2, name: 'vue_playground2'},
     
     {path: '/login', component: Login, name: 'login'},
     {path: '/register', component: Register, name: 'register'},
     {path: '/logout', component: Logout, name: 'logout'},   
     
     //c_games routes
     {path: '/games', component: GamesList, name: 'games'},
     {path: '/games/create', component: GamesCreate, name: 'game_create'},
     {path: '/games/reviews', component: GamesReviewsList, name: 'game_reviews'},
     
     {path: '/games/reviews/:id', component: GamesReview, name: 'game_review'},
     {path: '/games/:id', component: GamesView, name: 'game'},
     
];

