<template>
    <div>
        <div v-for="review in reviews" class="col-12 mb-3">
            <div class="card">
                <div class="card-block">
 
                    <p class="card-text">{{ review.user.name }} left a <router-link :to="{ name: 'game_review', params: { id: review.id }}">review</router-link>
                        for <a
                            <router-link :to="{ name: 'game', params: { id: review.id }}">
                                {{ review.game.title }}
                            </router-link>
                        </a> {{review.created_at}}
                    </p>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
    export default {
 
        data() {
            return {
                reviews: []
            };
        },

        methods: {
            getGameReviews() {
                axios.get('/games/reviews/')
                    .then(({data}) => {
                        this.reviews = data;
                    });
            }
        },

        mounted:function(){
            this.getGameReviews();
        },
    }
</script>