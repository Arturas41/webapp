<template>
    <div>

        <div class="card" style="width: 270px;margin: 5px">
            <img class="card-img-top" :src="game.image.replace('public','/storage')" alt="Card image cap">
            <div class="card-block">
                <h3 class="card-title">{{ game.title }}</h3>
                <p class="card-text">{{ game.title }} is published by {{ game.publisher }}</p>
                <p class="small">Game submitted by user {{ game.user.name }}</p>
                <router-link :to="{ name: 'games'}">
                    List all games
                </router-link>
            </div>
        </div>

        <hr>

        <div class="reviews">
            <h4>What Gamers Are Saying</h4>
            <ul class="list-group">
                <li v-for="review in reviews" class="list-group-item">{{ review.body }}
                    <hr>
                        <router-link :to="{ name: 'game_reviews', params: { id: review.id }}">
                            <small class="text-primary">posted {{review.created_at}} by
                                user {{ review.user.name }}
                            </small>
                        </router-link>
                </li>
            </ul>
        </div>


        <div v-if="signedIn">
            <div class="addreview">
                <div class="card-block">
                    <div class="form-group">
                        <textarea v-model="review_textarea" name="body" class="form-control" placeholder="Add a review!"></textarea>
                    </div>

                    <div class="form-group row">
                        <div class="offset-sm-1 col-sm-9">
                            <button type="submit" class="btn btn-primary" @click.submitReview="submitReview">Submit Review</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div v-else>
                        <router-link :to="{ name: 'login'}">
                                Please login to reply
                        </router-link>
        </div>
    






    </div>
</template>
<script>
    export default {
 
        data() {
            return {
                game: [],
                reviews: [],
                review_textarea: '',
                signedIn: ''
            };
        },

        methods: {
            getGame() {
                axios.get('/games/games/' + this.$router.history.current.params.id)
                    .then(({data}) => {
                        this.game = data.game;
                        this.reviews = data.reviews;
                    });
            },
            submitReview(){
                axios.post('/games/games/' + this.$router.history.current.params.id + '/reviews', {body: this.review_textarea})
                    .then((response) => {
                        flash('Review Added')
                        this.reviews.unshift(response.data);
                        this.review_textarea = ''
                    });
            },
            authenticate(){
                this.signedIn = window.App.signedIn;
            }
        },

        mounted:function(){
            this.getGame();
        },

        beforeMount(){
           this.authenticate()
        },
        

    }
</script>