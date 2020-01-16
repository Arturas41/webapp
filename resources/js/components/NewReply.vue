<template>
    <div>
        <div v-if="signedIn">
            <div class="form-group">
                <textarea 
                    name="body" 
                    id="body" class="form-control"
                    placeholder="What do you think?" 
                    rows="5" 
                    required 
                    v-model="body">
                </textarea>
            </div>
            <button 
                type="submit" 
                class="btn btn-default" 
                @click="addReply"
            >Post</button>
        </div>
        <p class="text-center" v-else>
            Please <a href="/login">login</a> to respond.
        </p>
    </div>
</template>
<script>

    import 'jquery.caret';
    import 'at.js';

    export default {    
        props: ['endpoint'],

        data() {
            return {
                body: ''
            }
        },

         computed: {
            signedIn() {
                return window.App.signedIn;
            }
        },

        mounted() {
            jQuery('#body').atwho({
                at: "@",
                delay: 750,
                callbacks: {
                    remoteFilter: function (query, callback) {
                        $.getJSON("/api/users", {name: query}, function (usernames) {
                            callback(usernames)
                        });
                    }
                }
            });
        },

        methods: {
            addReply() {
                axios.post(this.endpoint, {body: this.body})
                    .then(({data}) => {
                        this.body = '';
 
                        flash('New reply added!');
 
                        this.$emit('created', data);
                    });
            }
        }
    }
</script>