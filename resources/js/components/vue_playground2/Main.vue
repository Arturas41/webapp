<template>
    <div class="d-flex flex-column align-items-center">
        <vp2-bootstrap-card></vp2-bootstrap-card>
        <vp2-parent-card></vp2-parent-card>
        <vp2-parent-card2></vp2-parent-card2>
        <vp2-slots-example>
            <h1 slot="title">{{ slotMarkup }}</h1>
            <h5 slot="subtitle">The Sub Title Passed In</h5>
            <h1>slot</h1>
        </vp2-slots-example>
        <div class="d-flex justify-content-center">
            <div @click="selectedComponent = 'One'" class="p-2 m-2 btn btn-primary">One</div>
            <div @click="selectedComponent = 'Two'" class="p-2 m-2 btn btn-primary">Two</div>
            <div @click="selectedComponent = 'Three'" class="p-2 m-2 btn btn-primary">Three</div>
        </div>
        <div class="d-flex justify-content-center">
            <keep-alive>
                <component :is="selectedComponent"></component>
            </keep-alive>
        </div>
    </div>
</template>

<script>

    import BootstrapCard from '../vue_playground2/BootstrapCard.vue';
    import SlotsExample from '../vue_playground2/SlotsExample.vue';
    import One from '../vue_playground2/OneComponent.vue';
    import Two from '../vue_playground2/TwoComponent.vue';
    import Three from '../vue_playground2/ThreeComponent.vue';

    export default {
        components: {BootstrapCard, SlotsExample, One, Two, Three},

        data(){
            return{
                slotMarkup: 'THE REAL DEAL!',
                selectedComponent: 'One' 
            }
        }
    }
</script>
