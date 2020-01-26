<template>
    <v-row justify="center">
        <v-btn text color="red" @click.stop="dialog = true">
            Delete
        </v-btn>

        <v-dialog v-model="dialog" max-width="400">
            <v-card>
                <v-card-title class="headline">Are u sure u want to do this?</v-card-title>

                <v-card-text>
                    Title:</br>
                    {{material.title}}
                </v-card-text>

                <v-card-actions>
                    <v-spacer></v-spacer>

                    <v-btn color="green darken-1" text @click="dialog = false">
                        NO!
                    </v-btn>

                    <v-btn color="red darken-1" text @click="dialog = false, deleteMaterial()" small>
                        Yes
                    </v-btn>
                </v-card-actions>
            </v-card>
        </v-dialog>
    </v-row>
</template>
<script>
    export default {

        props: ['material'],

        data() {
            return {
                  dialog: false,
            };
        },

        methods: {
            deleteMaterial: function(){
                axios.delete('/c_study/materials/' + this.material.id)
                    .then((response) => {
                        this.materials = response.data
                        this.$emit('deleteMaterial', this.material)
                    });
            }
        }
    }
</script>

