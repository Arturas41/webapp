<template>
    <div>
        <div class="col-12 mb-3">
            <div class="card">
                <div class="card-block">
                    <h3 class="card-title">{{ review.body }}</h3>
                        <p class="small">a review of {{ review.game.title }}
                            <router-link :to="{ name: 'game', params: { id: review.game.id }}">
                                {{ review.game.title }}
                            </router-link>
                            submitted by 
                            {{ review.user.name }} 
                            created at
                            {{review.created_at}}
                        </p>
                    <router-link :to="{ name: 'game_reviews'}">List all Reviews</router-link>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
    export default {
 
        data() {
            return {
                review: {
                    game: {
                        title: '',
                        id: 0
                    },
                    user: {
                        name: ''
                    }
                }
            };
        },

        methods: {
            getGameReview() {
                axios.get('/games/reviews/' + this.$router.history.current.params.id)
                    .then(({data}) => {
                        this.review = data;
                    });
            }
        },

        mounted:function(){
            this.getGameReview();
        },

    }
</script>
