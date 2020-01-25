<template>
    <div>
        DELETE SINGLE MATERIAL-{{id}}
    </div>
</template>
<script>
    export default {

        data() {
            return {
                id: 0
            };
        },

        methods: {
            
        },

        mounted:function(){
            this.id = this.$route.params.id;
        },
        watch: {
            $route(to, from) {
                this.id = to.params.id;
            },
        }
    }
</script>