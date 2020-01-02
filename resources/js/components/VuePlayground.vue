<template>
    <div>
        <form @submit.prevent="addTodo">
            <div class="form-group">
                <input v-model="newTodo"
                       class="form-control"
                       placeholder="What do you want to do?">
            </div>
            <button class="btn btn-info">
                Add a Todo
            </button>
        </form>
        <div>
            <h1>Things to do</h1>
            <ol class="list-group">
                <li v-for="(item, key) in todos" class="list-group-item">
                        {{ item.body }}
                    <button @click="deleteTodo(todos,key)" class="btn btn-info"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
                </li>
            </ol>
        </div>
    </div>
</template>

<script>
    export default {
        data() {
            return {
                todos: [
                    { body: 'Eat a Sandwich', completed: false }
                ],

                newTodo: ''
            }
        },

        methods: {
            addTodo(e) {

                // prevent the HTML form from submitting to the server
                e.preventDefault();

                this.todos.push({
                    body: this.newTodo,
                    completed: false
                });

                // simply set the form input field to an empty string
                // after we add a todo item
                this.newTodo = '';
            },

            deleteTodo(todos,key){
                this.todos.splice(key, 1);
            }
        },
    }

</script>
