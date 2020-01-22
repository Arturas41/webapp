<template>
    <h1>Hi!
        <small class="text-muted">I am page 1!</small>
        <p>Dynamic val {{id}}</p>
    </h1>
</template>
 
<script>
    export default {
        data() {
            return {
                id: this.$route.params.id
            }
        }
    }
</script>