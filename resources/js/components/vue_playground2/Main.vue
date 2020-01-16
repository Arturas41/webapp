<template>
    <div class="d-flex flex-column align-items-center">
        <vp2-bootstrap-card></vp2-bootstrap-card>
        <vp2-parent-card></vp2-parent-card>
        <vp2-parent-card2></vp2-parent-card2>
        <vp2-slots-example>
            <h1 slot="title">{{ slotMarkup }}</h1>
            <h5 slot="subtitle">The Sub Title Passed In</h5>
        </vp2-slots-example>
    </div>
</template>

<script>

    import BootstrapCard from '../vue_playground2/BootstrapCard.vue';
    import SlotsExample from '../vue_playground2/SlotsExample.vue';

    export default {
        components: {BootstrapCard, SlotsExample},

        data(){
            return{
                slotMarkup: 'THE REAL DEAL!'
            }
        }
    }
</script>
