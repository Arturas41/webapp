<template>
    <div class="row">
        <div class="col-8">
            <div v-for="game in games" class="col-12 mb-3">
                <div class="card">
                    <div class="card-block">
                        <h3 class="card-title">
                            <router-link :to="{ name: 'game', params: { id: game.id }}">{{ game.title }}</router-link>
                        </h3>
                        <p class="card-text">Published by {{ game.publisher }}</p>
                        <p class="small">Game submitted by user {{ game.user.name }}</p>
                    </div>
                </div>

            </div>
        </div>
        <div class="col-4">
            <table class="table table-sm table-hover">
                    <thead class="thead">
                    <tr>
                        <th>User Name</th>
                        <th>Games Submitted</th>
                    </tr>
                    </thead>
                    <tbody>
                        <tr v-for="active_users in active_users">
                            <td>{{ active_users.name }}</td>
                            <td>{{ active_users.submitted_games }}</td>
                        </tr>
                    </tbody>
            </table>
        </div>
    </div>
</template>
<script>
    export default {
 
        data() {
            return {
                games: [],
                active_users: []
            };
        },

        methods: {
            getGames() {
                axios.get('/games/games')
                    .then(({data}) => {
                        this.games = data.games;
                        this.active_users = data.activeusers;
                    });
            }
        },

        mounted:function(){
              this.getGames();
        },
    }
</script>