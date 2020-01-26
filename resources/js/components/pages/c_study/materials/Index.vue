<template>
    <div>

        <v-row class="mb-8" no-gutters >
            <v-col>
                <v-card class="pa-2" tile outlined >
                    filter
                </v-card>
            </v-col>
        </v-row>

        <v-row justify="center">
              <v-expansion-panels inset>
                    <v-expansion-panel v-for="material in materials" :key="material.id">
                          <v-expansion-panel-header>
                              <v-row no-gutters>
                                  <v-col cols="4">{{material.title}}</v-col>
                                  <v-col cols="8" class="text--secondary">
                                  </v-col>
                              </v-row>
                          </v-expansion-panel-header>
                          <v-expansion-panel-content>
                                <v-row no-gutters>

                                      <v-col cols="8">
                                          NOTES</br>NOTES</br>NOTES</br>NOTES</br>NOTES</br>NOTES</br>NOTES</br>NOTES</br>NOTES</br>
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
                                            Read
                                        </v-btn>
                                        <v-btn text color="primary">
                                            Update
                                        </v-btn>
                                        <v-btn text color="red">
                                              <c_study-material-delete-dialog v-on:deleteMaterial="deleteMaterial" v-bind:material="material"></c_study-material-delete-dialog>
                                        </v-btn>
                                </v-card-actions>
                          </v-expansion-panel-content>
                    </v-expansion-panel>
              </v-expansion-panels>
        </v-row>
  
    </div>
</template>
<script>
    export default {
 
        data() {
            return {
                materials: []
            };
        },

        methods: {
            deleteMaterial: function(material){
                let index = this.materials.indexOf(material);
                this.materials.splice(index, 1);
            }
        },

        beforeMount:function(){
            axios.get('/c_study/materials')
                .then((response) => {
                    this.materials = response.data
                });
        },
    }
</script>