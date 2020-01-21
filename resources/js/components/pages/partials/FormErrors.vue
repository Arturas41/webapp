<template>
    <div>
        <div v-if="show_erors" class="form-group">
            <div class="alert alert-danger">
                <ul>
                    <li v-for="form_error in form_errors">
                        {{form_error[0]}}
                    </li>
                </ul>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
 
        props: ['form_errors'],

        data() {
            return {
                show_erors: false
            };
        },

        methods: {
            formErrorsExists(){
                return this.form_errors.lenght;
            }
        },
        
        watch: {
            form_errors: function(newVal, oldVal){
                if(newVal.lenght != 0){
                    this.show_erors = true
                }else{
                    this.show_erors = false
                }
            }
        }

    }
</script>   