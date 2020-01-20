<template>
    <b-navbar>
        <template slot="brand">
            <b-navbar-item href="/">
                <img
                    src="/images/navbar/logo.jpg"
                >
            </b-navbar-item>
        </template>
        <template slot="start">
            <b-navbar-item href="#">
                Home
            </b-navbar-item>
            <b-navbar-item href="#">
                Documentation
            </b-navbar-item>


            <b-navbar-dropdown label="Info">

                <b-navbar-item href="#">
                    Contact1
                </b-navbar-item>
                <b-navbar-item href="#">
                    Contact2
                </b-navbar-item>
                <b-navbar-item href="#">
                    Contact3
                </b-navbar-item>

            </b-navbar-dropdown>
        </template>

        <template slot="end">
            <b-navbar-item tag="div">
                <div class="buttons">
                    <a class="button is-primary">
                        <strong>Sign up</strong>
                    </a>
                    <a class="button is-light">
                        Log in
                    </a>
                </div>
            </b-navbar-item>
        </template>
    </b-navbar>
</template>

<script>
    
    import Navbar from './Navbar.vue';

    export default {
        components: {Navbar},
    }
</script>
