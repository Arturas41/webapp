<template>
    <div>

        <v-row class="mb-8" no-gutters >
            <v-col>
                <v-card class="pa-2" tile outlined >
                    filter: 
                    #/c_study/materials?tags=ben_eater,youtube&priorities=1,2,3,4,5&page=3&per_page=5&created_at_to=2020-03-01&created_at_from=2020-02-01
                </v-card>
            </v-col>
        </v-row>

        <v-row justify="center">
              <v-expansion-panels inset>
                    <v-expansion-panel v-for="material in materials" :key="material.id">
                          <v-expansion-panel-header v-bind:class="priorityColor(material.priority.value)">
                              <v-row no-gutters>
                                  <v-col cols="4">{{material.title}}</v-col>
                                  <v-col cols="8" class="text--secondary">
                                  </v-col>
                              </v-row>
                          </v-expansion-panel-header>
                          <v-expansion-panel-content></br>
                                <v-row no-gutters>

                                      <v-col cols="8">
                                          <div v-if="material.note == null">
                                          </div>
                                          <div v-else v-for="(text, index) in material.note.split('\n')" :key="index">
                                              {{ text }}
                                          </div>
                                      </v-col>
                                      <v-divider vertical class="mx-4"></v-divider>
                                      <v-col cols="3">
                                          <a v-bind:href="material.reference" target="_blank">Learn more</a>
                                      </v-col>
                                </v-row>
                                <v-row no-gutters>
                                        <v-chip v-for="tag in material.tags" v-bind:key="tag.id" class="ma-2" color="gray" label text-color="black" small>
                                            <!-- <v-icon left>mdi-label</v-icon> -->
                                            {{tag.name}}
                                        </v-chip>
                                </v-row>

                                <v-card-actions>
                                        <v-spacer></v-spacer>
                                        <v-btn text color="primary">
                                            <router-link :to="{ name: 'c_study_materials_create', params: { id: material.id }}">Create</router-link>
                                        </v-btn>
                                        <v-btn text color="primary">
                                            <router-link :to="{ name: 'c_study_materials_read', params: { id: material.id }}">Read</router-link>
                                        </v-btn>
                                        <v-btn text color="primary">
                                            <router-link :to="{ name: 'c_study_materials_update', params: { id: material.id }}">Update</router-link>
                                        </v-btn>
                                        <v-btn text color="red">
                                              <c_study-material-delete-dialog v-on:deleteMaterial="deleteMaterial" v-bind:material="material"></c_study-material-delete-dialog>
                                        </v-btn>
                                </v-card-actions>
                          </v-expansion-panel-content>
                    </v-expansion-panel>
                    
              </v-expansion-panels>

                <paginator :dataSet="dataSet" @changed="fetch"></paginator>

        </v-row>
  
    </div>
</template>
<script>
    export default {
 
        data() {
            return {
                materials: [],
                dataSet: []
            };
        },

        methods: {

            fetch(){
                axios.get(this.url())
                    .then((response) => {
                        this.materials = response.data.data
                        this.dataSet = response.data;
                    });
            },

            url(){
                let hash = location.hash;
                hash = hash.substring(1);
                return hash;
            },

            deleteMaterial: function(material){
                let index = this.materials.indexOf(material);
                this.materials.splice(index, 1);
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

        created() {
            this.fetch();
        },
 
    }
</script>