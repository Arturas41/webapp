<template>
    <div>
        <table>
            <tr>
                <th>Helper</th>
                <th>Result</th>
            </tr>
            <tr v-for="row in data">
                <td>{{row.helper}}</td>
                <td>{{row.result}}</td>
            </tr>
        </table>
    </div>
</template>

<script>
    export default {

        data() {
            return {
                data: []
            };
        },

        methods: {
            getData() {
                axios.get('/general_playground/laravel_string_helpers')
                    .then(({data}) => {
                        this.data = data;
                    });
            }
        },

        mounted:function(){
              this.getData();
        }

    }
</script>   