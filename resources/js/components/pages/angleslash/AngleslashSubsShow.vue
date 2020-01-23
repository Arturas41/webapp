<template>
    <div>   
        <p>Sub name: {{sub.name}}</p>
        <p>Posts:</p>
        <p v-for="post in posts">{{post.title}}</p>
    </div>
</template>
<script>
    export default {
 
        data() {
            return {
                sub: '',
                posts: []
            };
        },

        mounted:function(){
            axios.get('/angleslash/subs/' + this.$router.history.current.params.id)
                .then((response) => {
                    this.sub = response.data.sub;
                    this.posts = response.data.posts;
                });
        },
    }
</script>