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
                        <div v-if="data.note == null">
                        </div>
                        <div v-else v-for="(text, index) in data.note.split('\n')" :key="index">
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
                                    <router-link :to="{ name: 'c_study_materials'}">List</router-link>
                                </v-btn>
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

                <v-card class="mx-auto" outlined>
                    <v-card-title>
                        Priority
                    </v-card-title>
                    <v-card-text  v-bind:class="priorityColor(data.priority.value)">
                        <p class="pt-8">{{priorityText(data.priority.value)}}</p>
                    </v-card-text>
                </v-card>

                <v-card class="mx-auto" outlined>
                    <v-list-item three-line>
                        <v-list-item-content>
                            <v-list-item-title class="headline mb-1">To Do</v-list-item-title>
                            <v-list-item-subtitle v-if="!data.to_dos.length">-</v-list-item-subtitle>
                            <v-list-item-subtitle v-for="(to_do, index) in data.to_dos" :key="index">
                                <p v-bind:class="priorityColor(to_do.priority.value)">{{to_do.name}}</p>
                            </v-list-item-subtitle>
                        </v-list-item-content>
                    </v-list-item>
                </v-card>

                <v-card class="mx-auto" outlined>
                    <v-list-item three-line>
                        <v-list-item-content>
                            <v-list-item-title class="headline mb-1">Previous materials</v-list-item-title>
                            <v-list-item-subtitle v-if="!data.previous_materials.length">-</v-list-item-subtitle>
                            <v-list-item-subtitle v-for="(previous_material, index) in data.previous_materials" :key="index">
                                <router-link :to="{ name: 'c_study_materials_read', params: { id: previous_material.id }}">{{previous_material.title}}</router-link>
                            </v-list-item-subtitle>
                        </v-list-item-content>
                    </v-list-item>
                </v-card>

                <v-card class="mx-auto" outlined>
                    <v-list-item three-line>
                        <v-list-item-content>
                            <v-list-item-title class="headline mb-1">Next materials</v-list-item-title>
                            <v-list-item-subtitle v-if="!data.next_materials.length">-</v-list-item-subtitle>
                            <v-list-item-subtitle v-for="(next_material, index) in data.next_materials" :key="index">
                                <router-link :to="{ name: 'c_study_materials_read', params: { id: next_material.id }}">{{next_material.title}}</router-link>
                            </v-list-item-subtitle>
                        </v-list-item-content>
                    </v-list-item>
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

                <v-card>
                    <v-card-title>
                        Rating ({{ data.rating.value }})
                    </v-card-title>
                    <v-card-text>
                        <v-rating
                            v-model="data.rating.value"
                            color="yellow accent-4"
                            dense
                            half-increments
                            hover
                            size="18"
                            readonly
                        ></v-rating>
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
                    },
                    rating: {
                        value: 0
                    },
                    priority: {
                        value: 3
                    },
                    to_dos: []
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
            },
            //needs to be global
            priorityText: function(value){
                let text = '-';
                switch(value) {
                    case 1:
                        text = 'Very low';
                        break;
                    case 2:
                        text = 'Low';
                        break;
                    case 3:
                        text = 'Moderate';
                        break;
                    case 4:
                        text = 'High';
                        break;
                    case 5:
                        text = 'Very high';
                        break;
                    default:
                        text = '-';
                }
                return text;
            },
            //needs to be global
            priorityColor: function(value){
                let color = '';
                switch(value) {
                    case 1:
                        color = 'light-green lighten-4';
                        break;
                    case 2:
                        color = 'light-green lighten-1';
                        break;
                    case 3:
                        color = 'lime lighten-2';
                        break;
                    case 4:
                        color = 'red lighten-3';
                        break;
                    case 5:
                        color = 'red lighten-1';
                        break;
                    default:
                        color = '';
                }
                return color;
            }
        },
    }
</script>