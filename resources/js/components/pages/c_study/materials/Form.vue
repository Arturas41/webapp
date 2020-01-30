<template>
    <div>
        <v-form ref="form">
            <v-text-field v-model="data.title" :counter="255" label="Title"></v-text-field>
            <v-text-field v-model="data.reference" :counter="2048" label="Reference"></v-text-field>

            <v-textarea
              label="Note"
              auto-grow
              v-model="data.note"
            ></v-textarea>

            <v-select
                v-model="data.priority"
                item-text="text"
                item-value="value"
                :items="priorities"

                menu-props="auto"
                label="Priority"
                hide-details
            ></v-select>

  

                    <v-list-item three-line>
                        <v-list-item-content>
                            <v-list-item-title class="headline mb-1">
                                <span class="grey--text text--darken-1 caption mr-2">
                                    To Do
                                    <v-btn small color="success" @click.stop="to_do_dialog_form = true;to_do_dialog_form_index = false;">
                                        Add
                                    </v-btn>
                                </span>
                            </v-list-item-title>
                            <v-list-item-subtitle v-if="!data.to_dos.length">-</v-list-item-subtitle>
                            <v-list-item-subtitle v-for="(to_do, index) in data.to_dos" :key="index">
                                <div v-bind:class="priorityColor(to_do.priority.value)">
                                    <v-row>
                                        <v-col cols="8" class="text-left">{{index+1}} - {{to_do.name}}</v-col>
                                        <v-col cols="4" class="text-right">
                                            <v-btn small color="success" 
                                                @click.stop="to_do_dialog_form = true;
                                                to_do_dialog_form_index = index;
                                                to_do_dialog.name = to_do.name;
                                                to_do_dialog.priority.value = to_do.priority.value;"
                                            >
                                                Update
                                            </v-btn>
                                            <v-btn small color="red" @click.stop="to_do_dialog_form_delete = true;to_do_dialog_form_index = index;">
                                                Delete
                                            </v-btn>
                                        </v-col>
                                    </v-row>
                                </div>

                            </v-list-item-subtitle>
                        </v-list-item-content>
                    </v-list-item>

            <v-row justify="center">
                <v-dialog v-model="to_do_dialog_form" max-width="290">
                    <v-card>
                        <v-card-title class="headline">To do list item</v-card-title>
                        <v-card-text>
                            <v-text-field v-model="to_do_dialog.name" label="Name"></v-text-field>
                            <v-select
                                v-model="to_do_dialog.priority.value"
                                item-text="text"
                                item-value="value"
                                :items="priorities"
                                menu-props="auto"
                                label="Priority"
                                hide-details
                            ></v-select>
                        </v-card-text>
                        <v-card-actions>
                            <v-btn v-if="this.to_do_dialog_form_index!==false" color="green darken-1" text @click="to_do_dialog_form = false;updateToDo()">
                                  Update
                            </v-btn>
                            <v-btn v-else color="green darken-1" text @click="to_do_dialog_form = false;addToDo()">
                                  Add
                            </v-btn>
                        </v-card-actions>
                    </v-card>
                </v-dialog>
            </v-row>
            <v-row justify="center">
                <v-dialog v-model="to_do_dialog_form_delete" max-width="290">
                    <v-card>
                        <v-card-title class="headline">To do list item</v-card-title>
                            Are u sure?
                        </v-card-text>
                        <v-card-actions>
                            <v-btn color="red" text @click="to_do_dialog_form_delete = false;deleteToDo()">
                                  Yes
                            </v-btn>
                        </v-card-actions>
                    </v-card>
                </v-dialog>
            </v-row>

            <v-combobox multiple v-model="data.tags" label="Tags"  append-icon chips deletable-chips class="tag-input" persistent-hint>
            </v-combobox>

            <span class="grey--text text--darken-1 caption mr-2">
                Rating ({{ data.rating }})
            </span>
            <v-rating
                v-model="data.rating"
                color="yellow accent-4"
                dense
                half-increments
                hover
                size="18"
            ></v-rating>

            <form-errors v-bind:form_errors="form_errors"></form-errors>

            <v-btn color="success" class="mr-4" @click="submitCreate" v-if="this.action == 'create'">
                Create
            </v-btn>

            <v-btn color="success" class="mr-4" @click="submitUpdate" v-if="this.action == 'update'">
                Update
            </v-btn>
        </v-form>
    </div>
</template>
<script>
    export default {
 
        props: ['data', 'action'],

        data() {
            return {
                to_do_dialog_form: false,
                to_do_dialog_form_delete: false,
                to_do_dialog_form_index: false,
                to_do_dialog: {
                    name: '',
                    priority: {value: 3}
                },
                form_errors: [],
                //needs to be global
                priorities: [
                    {
                        value: 0,
                        text: '-'
                    },
                    {
                        value: 1,
                        text: 'Very Low'
                    },
                    {
                        value: 2,
                        text: 'Low'
                    },
                    {
                        value: 3,
                        text: 'Moderate'
                    },
                    {
                        value: 4,
                        text: 'High'
                    },
                    {
                        value: 5,
                        text: 'Very high'
                    },
                ],
            };
        },

        methods: {
            submitCreate () {
                axios.post('/c_study/materials/', this.data)
                    .then((response) => {
                        this.$router.push({name: 'c_study_materials_read', params:{id: response.data.id}}) 
                        flash('Material created', 'success');
                    }).catch((error) => {
                        this.form_errors = error.response.data.errors;
                    });
                },
            submitUpdate () {
                axios.patch('/c_study/materials/' + this.$route.params.id, this.data)
                    .then((response) => {
                        this.$router.push({name: 'c_study_materials_read', params:{id: response.data.id}}) 
                        flash('Material updated', 'success');
                    }).catch((error) => {
                        this.form_errors = error.response.data.errors;
                    });
                },
            addToDo: function(){
                let deepClone = JSON.parse(JSON.stringify(this.to_do_dialog));
                this.data.to_dos.push(deepClone);
                this.to_do_dialog.name = '';
                this.to_do_dialog.priority.value = 3;
            },
            updateToDo: function(){
                let deepCloneName = JSON.parse(JSON.stringify(this.to_do_dialog.name));
                let deepClonePriorityValue = JSON.parse(JSON.stringify(this.to_do_dialog.priority.value));
                this.data.to_dos[this.to_do_dialog_form_index].name = deepCloneName;
                this.data.to_dos[this.to_do_dialog_form_index].priority.value = deepClonePriorityValue;
                this.to_do_dialog.name = '';
                this.to_do_dialog.priority.value = 3;
            },
            deleteToDo: function(){
                this.data.to_dos.splice(this.to_do_dialog_form_index, 1);
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