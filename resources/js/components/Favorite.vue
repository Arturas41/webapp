<template>
    <button type="submit" :class="classes" @click="toggle">
        <span class="glyphicon glyphicon-heart"></span>
        <span v-text="count"></span>
    </button>
</template>
 
<script>
    export default {
        props: ['reply'],

        data() {
            return {
                count: this.reply.favoritesCount,
                active: this.reply.isFavorited,
            }
        },
 
        computed: {
            classes() {
                return ['btn', this.active ? 'btn-primary' : 'btn-default'];
            }
        },

        methods: {
            toggle() {  
                if (this.active) {
                    axios.delete('/c_forum/replies/' + this.reply.id + '/favorites');
                    this.active = false;
                    this.count--;
                } else {
                    axios.post('/c_forum/replies/' + this.reply.id + '/favorites');
                    this.active = true;
                    this.count++;
                }
            }
        }
    }
</script>