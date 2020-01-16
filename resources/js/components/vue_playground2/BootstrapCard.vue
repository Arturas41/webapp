<template>
    <div>
        <div class="card" style="width: 18rem;">
            <div class="card-body">
                <h5 class="card-title" v-text="card_title"></h5>
                <p class="card-text" v-text="card_body"></p>
                <button @click="setTitle" class="btn btn-primary">Set Title</button>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        data() {
            return {
                card_title: 'Card Title',
                card_body: 'Card Body'
            }
        },
        
        methods: {
            setTitle(){
                this.card_title = 'New Title'
            }
        }
    }
</script>
