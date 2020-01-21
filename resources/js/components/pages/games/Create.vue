<template>
    <div>
        <div class="form-group row">
            <label for="titleid" class="col-sm-3 col-form-label">Game Title</label>
            <div class="col-sm-9">
                <input type="text"
                       id="titleid"
                       class="form-control"
                       v-model="gameData.title" required>
            </div>
        </div>
        <div class="form-group row">
            <label for="publisherid" class="col-sm-3 col-form-label">Game Publisher</label>
            <div class="col-sm-9">
                <input type="text"
                       id="publisherid"
                       class="form-control"
                       v-model="gameData.publisher" required>
            </div>
        </div>
        <div class="form-group row">
            <label for="releasedate" class="col-sm-3 col-form-label">Release Date</label>
            <div class="col-sm-9">
                <section>
                    <b-datepicker v-model="gameData.releasedateid"
                        :show-week-number="showWeekNumber"
                        :date-formatter="dateFormatter"
                        placeholder="Click to select..."
                        icon="calendar-today"
                    >
                    </b-datepicker>
                </section>
            </div>
        </div>
        <div class="form-group row">
            <label for="gameimageid" class="col-sm-3 col-form-label">Game Image</label>
            <div class="col-sm-9">
                <input v-on:change="onFileChange" name="image" type="file" id="gameimageid" class="custom-file-input">
                <span style="margin-left: 15px; width: 480px;" class="custom-file-control"></span>
            </div>
        </div>

            <div v-if="show_errors" class="form-group">
                <div class="alert alert-danger">
                    <ul>
                        <li v-for="(form_error, key) in form_errors">{{ form_error}}</li>
                    </ul>
                </div>
            </div>
 
        <div class="form-group row">
            <div class="offset-sm-3 col-sm-9">
                <button type="submit" class="btn btn-primary" @click.submit="submit">Submit Game</button>
            </div>
        </div>


    </div>
</template>
<script>
    export default {
 
        data() {
            return {
                gameData: {
                    title: '',
                    publisher: '',
                    releasedate: new Date(),
                    image: ''
                },
                showWeekNumber: false,
                selectedFile: null,
                form_errors: '',
                show_errors: false
            };
        },

        beforeMount(){
           this.authenticate()
        },

        methods: {
            submit() {

                const formData = new FormData()
                formData.append('title', this.gameData.title);
                formData.append('publisher', this.gameData.publisher);
                formData.append('releasedate', this.gameData.releasedate);
                if(this.selectedFile){
                    formData.append('image', this.selectedFile, this.selectedFile.name)
                }

                axios.post('/games/games/', formData)
                    .then((response) => {
                        flash('Game Added')
                        this.show_errors = false;
                        this.$router.push({name: 'games'});

                    })
                    .catch((error) => {
                        this.form_errors = error.response.data.errors;
                        this.show_errors = true;
                    });
            },
            dateFormatter(dt){
                let date = dt.toISOString().split('T')[0];
                this.gameData.releasedate = date;
                return dt.toISOString().split('T')[0];
            },
            onFileChange(event) {
                this.selectedFile = event.target.files[0]
            },
            authenticate(){
                if(!window.App.signedIn){
                    window.location.href = "/login";
                    //this.$router.push({name: 'login'});
                }
            }
        }
    }
</script>      
