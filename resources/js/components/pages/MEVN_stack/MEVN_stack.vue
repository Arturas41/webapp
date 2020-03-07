<template>
    <div>
        client page => new tab
    </div>
</template>
<script>

    const client_URL = "http://localhost:8080/";

    export default {

        data() {
            return {
                data: []
            };
        },

        created() {
            window.open(client_URL, '_blank');
        }
    }
</script>