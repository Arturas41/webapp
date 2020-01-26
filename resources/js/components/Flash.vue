<template>
    <div v-bind:class=this.class role="alert" v-show="show">
        {{ body }}
    </div>
</template>
 
<script>
    export default {
        props: ['message', 'type'],
 
        data() {
            return {
                body: '',
                class: '',
                show: false,
            }
        },
 
        created() {
            if (this.message) {
                this.flash(this.message, this.type);
            }
 
            window.events.$on('flash', (message,type) => {
                this.flash(message,type);
            })
        },
 
        methods: {
            flash(message,type) {
                this.body = message;
                this.class = "alert alert-" + type;
                this.show = true;
                this.hide();
            },
 
            hide() {
                setTimeout(() => {
                    this.show = false;
                }, 4000);
            }
        }
    }
</script>