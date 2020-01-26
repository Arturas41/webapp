<template>
    <div>   

        <div class="form-group">
            <label>Title</label>
            <input type="text"
                   id="title"
                   class="form-control"
                   v-model="title">
        </div>

        <div class="form-group">
            <label>URL</label>
            <input type="text"
                   id="url"
                   class="form-control"
                   v-model="url">
        </div>

        <div class="form-group">
            <label>Sub</label>
            <input type="text"
                   id="sub"
                   class="form-control"
                   v-model="sub">
        </div>
        
        <form-errors v-bind:form_errors="form_errors"></form-errors>

        <button class="btn btn-primary"
                @click.prevent="submitted">Submit!
        </button>

    </div>
</template>
<script>
    export default {
 
        data() {
            return {
                title: '',
                url: '',
                sub: '',
                form_errors: []
            };
        },

        methods: {
            submitted: function(){
                axios.post('/angleslash/posts', { title: this.title, url: this.url, sub: this.sub })
                    .then(({data}) => {
                        flash('Post saved', 'success');
                        this.form_errors = [];
                    })
                    .catch((error) => {
                        this.form_errors = error.response.data.errors;
                    });
            }
        },
    }
</script>