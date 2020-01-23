<template>
    <div>   
        <p>Posts:</p>

            <div v-for="post in data">
                <p>
                    <a :href=post.url>{{post.title}}</a>
                </p>
                <p>
                    Submited:{{post.created_at}} by 
                    <router-link :to="{ name: 'angleslash_users_show', params: { username: post.user.name }}">{{ post.user.name }}</router-link> to
                    <router-link :to="{ name: 'angleslash_subs_show', params: { id: post.sub.id }}">{{ post.sub.name }}</router-link>
                </p>
            </div>
        </p>    </div>
</template>
<script>
    export default {
 
        data() {
            return {
                data: []
            };
        },

        mounted:function(){
            axios.get('/angleslash/posts')
                .then((response) => {
                    this.data = response.data
                });
        },
    }
</script>