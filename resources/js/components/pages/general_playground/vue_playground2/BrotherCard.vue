<template>
    <div>
        <div class="card m-3" style="width: 15rem;">
            <div class="card-body">
                <h5 class="card-title" v-text="thecardtitle"></h5>
                <p class="card-text">I'm a <b>brother</b>.</p>
                <button @click="messageSister" class="btn btn-primary">Message Sister</button>
                <div v-if="messageson" class="mt-3 alert alert-secondary" v-html="messageson"></div>
                <div v-if="fromsister" class="mt-3 alert alert-secondary" v-html="fromsister"></div>
            </div>
        </div>
    </div>
</template>
 
<script>
    export default {
        props: ['messageson'],
 
        data() {
            return {
                thecardtitle: 'Child Component!',
                fromsister: ""
            }
        },
 
        methods: {
            messageSister() {
                //this.$emit('brothersaid', 'Mom said do your homework!');
                this.$eventBus.$emit('brothersaid', 'From brother');
            }
        },

        created() {
            this.$eventBus.$on('sistersaid', (message) => {
                this.fromsister = message;
            });
        }
    }
</script>
 
<style scoped>
    div.card {
        color: #004085;
        border: 4px solid #b8daff;
    }
</style>