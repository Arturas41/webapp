<template>
    <div>
        <v-row justify="center">
            {{data.title}}
        </v-row>
        </br>
        </br>
        <v-row justify="center">
            <v-col cols="8">

                <v-card class="mx-auto" outlined>
                    <v-card-title>
                        Note
                    </v-card-title>
                    <v-card-text>
                                <div v-for="(text, index) in data.note.split('\n')" :key="index">
                                    {{ text }}
                                  </div>
                    </v-card-text>
                </v-card>

            </v-col>
            <v-col cols="4">


                <v-card class="mx-auto" outlined>
                    <v-card-title>
                        Actions
                    </v-card-title>
                    <v-card-text>
                        <v-card-actions>
                            <v-row justify="center">
                                <v-btn text color="primary">
                                    <a v-bind:href="data.reference" target="_blank">Learn more</a>
                                </v-btn>
                            </v-row>
                            <v-row justify="center">
                                <v-btn text color="primary">
                                    <router-link :to="{ name: 'c_study_materials_create', params: { id: data.id }}">Create</router-link>
                                </v-btn>
                                <v-btn text color="primary">
                                    <router-link :to="{ name: 'c_study_materials_update', params: { id: data.id }}">Update</router-link>
                                </v-btn>
                                <v-btn text color="red">
                                    <c_study-material-delete-dialog v-on:deleteMaterial="deleteMaterial" v-bind:material="data"></c_study-material-delete-dialog>
                                </v-btn>
                            </v-row>
                        </v-card-actions>
                    </v-card-text>
                </v-card>

                <v-card>
                    <v-card-title>
                        Tags
                    </v-card-title>
                    <v-card-text>
                        <v-chip v-for="tag in data.tags" v-bind:key="tag.id" class="ma-2" color="gray" label text-color="black" small>
                            {{tag.name}}
                        </v-chip>
                    </v-card-text>
                </v-card>

                <v-card class="mx-auto" outlined>
                    <v-list-item three-line>
                        <v-list-item-content>
                            <v-list-item-title class="headline mb-1">More details</v-list-item-title>
                            <v-list-item-subtitle>Created by:</v-list-item-subtitle>
                            <v-list-item-subtitle>{{data.user.name}}</v-list-item-subtitle>
                            <v-list-item-subtitle>Created at:</v-list-item-subtitle>
                            <v-list-item-subtitle>{{data.created_at}}</v-list-item-subtitle>  
                            <v-list-item-subtitle>Updated at:</v-list-item-subtitle>
                            <v-list-item-subtitle>{{data.updated_at}}</v-list-item-subtitle>
                        </v-list-item-content>
                    </v-list-item>
                </v-card>

            </v-col>
        </v-row>


    </div>
</template>
<script>
    export default {
 
        data() {
            return {
                data:{
                    id: 0,
                    note: '',
                    user: {
                        name: ''
                    }
                }
            };
        },
        
        beforeMount(){
            this.loadData()
        },

        watch:{
            '$route' (to, from){
                this.loadData()
            }
        },


        methods: {
            loadData: function(){
                if(this.$route.params.id){
                    axios.get('/c_study/materials/' + this.$route.params.id)
                        .then((response) => {
                            this.data = response.data;
                        }).catch((error) => {
                            this.$router.go(-1);
                            flash('Material not found', 'danger');
                        });
                }
            },
            deleteMaterial: function(material){
                this.$router.go(-1);
                flash('Material deleted', 'success');
            }
        },
    }
</script>