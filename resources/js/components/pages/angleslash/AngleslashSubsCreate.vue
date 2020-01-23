<template>
    <div>   

        <div class="form-group">
            <label>Sub name</label>
            <input type="text"
                   id="name"
                   class="form-control"
                   v-model="name">
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
                name: '',
                form_errors: []
            };
        },

        methods: {
            submitted: function(){

                axios.post('/angleslash/subs', {name: this.name})
                    .then(({data}) => {
                        flash('Sub saved');
                        this.form_errors = [];
                    })
                    .catch((error) => {
                        this.form_errors = error.response.data.errors;
                    });
            }
        },
    }
</script>