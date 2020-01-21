<template>
    <div>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-8">
                        <div class="card">
                            <div class="card-header">Register</div>

                            <div class="card-body">

                                    <div class="form-group row">
                                        <label for="name" class="col-md-4 col-form-label text-md-right">Name</label>
                                        <div class="col-md-6">
                                            <input v-model="name" id="name" type="text" class="form-control">
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label for="email" class="col-md-4 col-form-label text-md-right">E-Mail Address</label>
                                        <div class="col-md-6">
                                            <input v-model="email" id="email" type="email" class="form-control" name="email" >
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label for="password" class="col-md-4 col-form-label text-md-right">Password</label>
                                        <div class="col-md-6">
                                            <input v-model="password" id="password" type="password" class="form-control" name="password">
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label for="password" class="col-md-4 col-form-label text-md-right">Password Confirm</label>
                                        <div class="col-md-6">
                                            <input v-model="password_confirmation" id="password_confirmation" type="password" class="form-control" name="password_confirmation">
                                        </div>
                                    </div>

                                    <form-errors v-bind:form_errors="form_errors"></form-errors>

                                    <div class="form-group row">
                                        <div class="offset-sm-3 col-sm-9">
                                            <button type="submit" class="btn btn-primary" @click.submit="submit">Register</button>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </div>
</template>

<script>
    export default {
 
        data() {
            return {
                name: '',
                email: '',
                password: '',
                password_confirmation: '',
                form_errors: []
            };
        },

        beforeMount(){
           this.authenticate()
        },

        methods: {
            submit() {
                axios.post('/register', {name: this.name, email: this.email, password: this.password, password_confirmation: this.password_confirmation})
                    .then((response) => {
                        location.reload();
                    })
                    .catch((error) => {
                        this.form_errors = error.response.data.errors;

                    });
            },
            authenticate(){
                if(window.App.signedIn){
                    this.$router.go(-1);
                }
            }
        }
    }
</script>   