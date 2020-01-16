<template>
    <div class="d-flex flex-column align-items-center">
        <vp2-bootstrap-card v-for="card in 2"></vp2-bootstrap-card>
    </div>
</template>

<script>

    import BootstrapCard from '../vue_playground2/BootstrapCard.vue';

    export default {
        components: {BootstrapCard}
    }
</script>
