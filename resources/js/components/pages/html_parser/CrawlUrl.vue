<template>
    <div>   

        <div class="form-group">
            <label for="url">URL</label>
            <input type="text"
                   id="url"
                   class="form-control"
                   v-model="url">
        </div>

        <div class="form-group">
            <label for="node">Node</label>
            <input type="text"
                   id="node"
                   class="form-control"
                   v-model="node">
        </div>
        
        <form-errors v-bind:form_errors="form_errors"></form-errors>

        <button class="btn btn-primary"
                @click.prevent="submitted">Submit!
        </button>

        <div v-for="node in nodes">
            {{node}}
        </div>

    </div>
</template>
<script>
    export default {
 
        data() {
            return {
                url: 'https://vegibit.com/php-simple-html-dom-parser-vs-friendsofphp-goutte/',
                node: 'p > a',
                nodes: [],
                form_errors: []
            };
        },

        methods: {
            submitted: function(){

                axios.post('/html_parser/crawl_url', {url: this.url, node:this.node})
                    .then(({data}) => {
                        this.nodes = data;
                        flash('Parsed', 'success');
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