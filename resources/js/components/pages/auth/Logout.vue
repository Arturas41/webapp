<template>
    <div></div>
</template>

<script>
    export default {

        beforeMount(){
           axios.get('/logout')
                .then((response) => {
                    location.replace("/")
                });
        }

    }
</script>   