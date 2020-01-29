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
                form_errors: []
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
        },
    }
</script>