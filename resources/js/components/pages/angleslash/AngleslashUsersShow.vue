<template>
    <div>   
        <p>User name: {{user.name}}</p>
        <p>Created Subs:</p>
        <p v-for="sub in subs">{{sub.name}}</p>
        <p>Created posts:</p>
        <p v-for="post in posts">{{post.title}}</p>
    </div>
</template>
<script>
    export default {
 
        data() {
            return {
                user: '',
                subs: [],
                posts: []
            };
        },

        mounted:function(){
            axios.get('/angleslash/users/' + this.$router.history.current.params.username)
                .then((response) => {
                    this.user = response.data.user;
                    this.subs = response.data.subs;
                    this.posts = response.data.posts;
                });
        },
    }
</script>