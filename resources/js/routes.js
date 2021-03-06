import Login from './components/pages/auth/Login.vue';
import Register from './components/pages/auth/Register.vue';
import Logout from './components/pages/auth/Logout.vue';

import HighlightYourCode from './components/pages/general_playground/HighlightYourCode.vue';
import DouglasCrockfordJS from './components/pages/general_playground/DouglasCrockfordJS.vue';
import LaravelStringHelpers from './components/pages/general_playground/LaravelStringHelpers.vue';
import LaravelCarbon from './components/pages/general_playground/LaravelCarbon.vue';
import VuePlayground from './components/pages/general_playground/VuePlayground.vue';
import VuePlayground3 from './components/pages/general_playground/VuePlayground3.vue';
import VuePlayground2 from './components/pages/general_playground/vue_playground2/Main.vue';

import GamesList from './components/pages/games/List.vue';
import GamesCreate from './components/pages/games/Create.vue';
import GamesView from './components/pages/games/View.vue';
import GamesReviewsList from './components/pages/games/reviews/List.vue';
import GamesReview from './components/pages/games/reviews/View.vue';

import CrawlUrl from './components/pages/html_parser/CrawlUrl.vue';

import TestRegex from './components/pages/test_regex/TestRegex.vue';

import AngleslashPosts from './components/pages/angleslash/AngleslashPosts.vue';
import AngleslashPostsCreate from './components/pages/angleslash/AngleslashPostsCreate.vue';
import AngleslashSubsCreate from './components/pages/angleslash/AngleslashSubsCreate.vue';
import AngleslashSubsShow from './components/pages/angleslash/AngleslashSubsShow.vue';
import AngleslashUsersShow from './components/pages/angleslash/AngleslashUsersShow.vue';

import CStudyMaterials from './components/pages/c_study/materials/Index.vue';
import CStudyMaterialsCreate from './components/pages/c_study/materials/Create.vue';
import CStudyMaterialsRead from './components/pages/c_study/materials/Read.vue';
import CStudyMaterialsUpdate from './components/pages/c_study/materials/Update.vue';
import CStudyMaterialsDelete from './components/pages/c_study/materials/Delete.vue';

import MEVN_stack from './components/pages/MEVN_stack/MEVN_stack.vue';

 export const routes = [
     
    //auth
    {path: '/login', component: Login, name: 'login'},
    {path: '/register', component: Register, name: 'register'},
    {path: '/logout', component: Logout, name: 'logout'},   
    
    //playground
    {path: '/general_playground/highlight_your_code', component: HighlightYourCode, name: 'highlight_your_code'},
    {path: '/general_playground/javascript_douglas_crockford', component: DouglasCrockfordJS, name: 'douglas_crockford_js'},
    {path: '/general_playground/laravel_string_helpers', component: LaravelStringHelpers, name: 'laravel_string_helpers'},
    {path: '/general_playground/laravel_carbon', component: LaravelCarbon, name: 'laravel_carbon'},
    {path: '/general_playground/vue_playground', component: VuePlayground, name: 'vue_playground'},
    {path: '/general_playground/vue_playground3', component: VuePlayground3, name: 'vue_playground3'},
    {path: '/general_playground/vue_playground2', component: VuePlayground2, name: 'vue_playground2'},
    
    //c_games routes
    {path: '/games', component: GamesList, name: 'games'},
    {path: '/games/create', component: GamesCreate, name: 'game_create'},
    {path: '/games/reviews', component: GamesReviewsList, name: 'game_reviews'},
    {path: '/games/reviews/:id', component: GamesReview, name: 'game_review'},
    {path: '/games/:id', component: GamesView, name: 'game'},
     
    //html parser
    {path: '/crawl_url', component: CrawlUrl, name: 'crawl_url'},
    
    //test regex
    {path: '/test_regex', component: TestRegex, name: 'test_regex'},
    
    //anglerslash
    {path: '/angleslash/posts', component: AngleslashPosts, name: 'angleslash_posts'},
    {path: '/angleslash/posts/create', component: AngleslashPostsCreate, name: 'angleslash_post_create'},
    {path: '/angleslash/subs/create', component: AngleslashSubsCreate, name: 'angleslash_subs_create'},
    {path: '/angleslash/subs/:id', component: AngleslashSubsShow, name: 'angleslash_subs_show'},
    {path: '/angleslash/users/:username', component: AngleslashUsersShow, name: 'angleslash_users_show'},
    
    //c_study
    {path: '/c_study/materials', component: CStudyMaterials, name: 'c_study_materials'},
    {path: '/c_study/materials/create/:id', component: CStudyMaterialsCreate, name: 'c_study_materials_create'},
    {path: '/c_study/materials/create', component: CStudyMaterialsCreate, name: 'c_study_materials_create'},
    {path: '/c_study/materials/read/:id', component: CStudyMaterialsRead, name: 'c_study_materials_read'},
    {path: '/c_study/materials/update/:id', component: CStudyMaterialsUpdate, name: 'c_study_materials_update'},
    {path: '/c_study/materials/delete/:id', component: CStudyMaterialsDelete, name: 'c_study_materials_delete'},
     
    {path: '/MEVN_stack/MEVN_stack', component: MEVN_stack, name: 'MEVN_stack'},
];

