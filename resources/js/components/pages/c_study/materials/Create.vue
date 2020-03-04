<template>
    <div>
        <c_study-material-form v-bind:data=this.data v-bind:action=this.action></c_study-material-form>
    </div>
</template>
<script>
    export default {
 
        data() {
            return {
                data:{title:"", reference:"", note:"", tags:[], rating: 2.5,
                    priority: 3,
                    to_dos: []
                },
                action: 'create'
            };
        },
        
        beforeMount(){
            this.loadForm()
        },

        watch:{
            '$route' (to, from){
                this.loadForm()
            }
        },


        methods: {
            loadForm: function(){
                this.data.tags = [];
                this.data.title = '';
                this.data.reference = '';
                this.data.note = '';

                if(this.$route.params.id){
                    this.data.previous_material_id = this.$route.params.id;
                    axios.get('/c_study/materials/' + this.$route.params.id)
                        .then((response) => {
                            this.data.rating = response.data.rating.value;
                            this.data.priority = response.data.priority.value;
                            response.data.tags.forEach((element) => {
                                    this.data.tags.push(element.name)
                                }
                            );
                        }).catch((error) => {
                            this.$router.go(-1);
                            flash('Material not found', 'danger');
                        });
                }
            }
        },
    }
</script>