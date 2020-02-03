<template>
    <div>
        <p v-html="this.data"></p>
    </div>
</template>

<script>
    export default {

        data() {
            return {
                data: []
            };
        },

        methods: {
            getData() {
                axios.get(this.$route.fullPath)
                    .then(({data}) => {
                        this.data = data;
                    });
            }
        },

        mounted:function(){
              this.getData();
        },
        watch:{
            '$route' (to, from){
                this.getData();
            }
        },
    }
</script>   