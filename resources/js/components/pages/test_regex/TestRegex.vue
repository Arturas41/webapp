<template>
    <div>   

        <div class="form-group">
            <label for="url">Subject</label>
            <textarea type="text" id="url" class="form-control" v-model="subject"></textarea>

        </div>

        <div class="form-group">
            <label for="pattern">Pattern</label>
            <input type="text"
                   id="pattern"
                   class="form-control"
                   v-model="pattern">
        </div>
        
        <form-errors v-bind:form_errors="form_errors"></form-errors>

        <button class="btn btn-primary"
                @click.prevent="submitted">Submit!
        </button>

        <div v-for="match in matches">
            {{match}}
        </div>

    </div>
</template>
<script>
    export default {
 
        data() {
            return {
                subject: 'Do you know what 1 + 1 equal to? {we will soon find out}[haha].',
                pattern: '(?<={)[a-z]{2}',
                matches: [],
                form_errors: []
            };
        },

        methods: {
            submitted: function(){

                axios.post('/test_regex/test_regex', {subject: this.subject, pattern:this.pattern})
                    .then(({data}) => {
                        this.matches = data;
                        flash('Tested', 'success');
                        this.form_errors = [];
                    })
                    .catch((error) => {
                        this.form_errors = error.response.data.errors;
                    });
            }
        },

        mounted:function(){
              
        },
    }
</script>