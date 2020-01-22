<template>
    <div>
        <div class="row">UI List Element</div>

            <ol class="list-group">
                <li v-for="library in libraries" class="list-group-item"><a href="#">{{ library }}</a></li>
            </ol>

        <p>&nbsp;</p>

        <input class="form-control" type="text" placeholder="Type the library name here, then click the button below." v-model="newlibrary">
        <button class="btn btn-info" v-on:click="addLibrary">Click to add library</button>
        <button class="btn btn-danger" v-on:click="deleteLibraries">Click to delete all libraries</button>

        <p>&nbsp;</p>

        <div class="row">Vue Instance data object</div>
        {{ $data }}

        <button class="btn btn-info" v-on:click="myalertfunction">Alert click</button>
        <div class="row">UI List Element</div>

        <input type="text" class="form-control" v-model="filterkey">

        <table class="table table-hover">
            <thead>
            <tr>
                <th><a href="#" v-on:click="sortvia('id')">id</a></th>
                <th><a href="#" v-on:click="sortvia('framework')">framework</a></th>
            </tr>
            </thead>

            <tbody>
            <tr v-for="framework in frameworks">
                <td>{{ framework.id }}</td>
                <td>{{ framework.framework }}</td>
            </tr>
            </tbody>
        </table>
    </div>

</template>

<script>
    export default {
        data() {
            return {
                libraries: ['angular.js', 'd3', 'node', 'jquery'],
                newlibrary: '',
                sortparam: '',

                filterkey: '',

                order: 1,

                frameworks: [
                    {id: '001', framework: 'angular'},
                    {id: '002', framework: 'd3'},
                    {id: '003', framework: 'node'},
                    {id: '004', framework: 'jquery'},
                    {id: '005', framework: 'reveal.js'},
                    {id: '006', framework: 'impress.js'},
                    {id: '007', framework: 'backbone.js'},
                    {id: '008', framework: 'meteor.js'},
                    {id: '009', framework: 'express'},
                    {id: '010', framework: 'moment'},
                    {id: '011', framework: 'underscore'},
                    {id: '012', framework: 'gulp'},
                    {id: '013', framework: 'react'},
                    {id: '014', framework: 'ghost'},
                    {id: '015', framework: 'sweetalert'},
                    {id: '016', framework: 'select2'},
                ]
            }
        },
    //
        methods: {
            addLibrary() {
                this.libraries.push(this.newlibrary);

                this.newlibrary = '';
            },

            deleteLibraries(){
                this.libraries = [];
            },

            myalertfunction(){
                alert('you just clicked this');
            },

            sortvia(sortparam, order){
                this.order = this.order * -1;
                this.sortparam = sortparam;
            }
        },
    }

</script>
