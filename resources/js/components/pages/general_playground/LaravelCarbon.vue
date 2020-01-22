<template>
    <div>
        <table>
            <tr>
                <th>Carbon</th>
                <th>Result</th>
            </tr>
            <tr v-for="row in data">
                <td>{{row.carbon}}</td>
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
                axios.get('/general_playground/carbon')
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