<template>
    <div>
        <div class="card m-3" style="width: 25rem;">
            <div class="card-body">
                <h5 class="card-title">Number 3</h5>
                <p class="card-text">I'm number three!</p>
                <button @click="counter++" class="btn">Click!</button>
                <p class="card-text">Button has been clicked <b>{{ counter }}</b> times</p>
            </div>
        </div>
    </div>
</template>
 
<script>
    export default {
        data() {
            return {counter: 0}
        }, 

        deactivated() {
            console.log('Deactivated!')
        },
 
        activated() {
            console.log('Activated!')
        }
    }
</script>
 
<style scoped>
    div.card {
        color: #721c24;
        border: 4px solid #f5c6cb;
    }
</style>
