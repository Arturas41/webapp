<template>
    <div>
        <div v-for="(reply, index) in items" v-bind:key="reply.id">
            <reply :data="reply" @deleted="remove(index)"></reply>
        </div>
        <paginator :dataSet="dataSet" @changed="fetch"></paginator>
        <new-reply :endpoint="endpoint" @created="add"></new-reply>
    </div>
</template>

<script>
    import Reply from './Reply.vue';
    import NewReply from './NewReply.vue';
    import collection from '../mixins/collection';
 
    export default {
        components: {Reply, NewReply},

        mixins: [collection],
 
        data() {
            return {
                dataSet: false,
                //items: [],
                endpoint: location.pathname + '/replies'
            }
        },
        //its like constructor
        created() {
            this.fetch();
        },

        methods: {
            fetch(page) {
                axios.get(this.url(page))
                    .then(this.refresh);
            },

        url(page) {
            if (!page) {
                let query = location.search.match(/page=(\d+)/);
                page = query ? query[1] : 1;
            }
            return `${location.pathname}/replies?page=${page}`;
        },

            refresh({data}) {
                this.dataSet = data;
                this.items = data.data;
            },

            //add(reply) {
            //    this.items.push(reply);

            //    this.$emit('added');
            //},

            //remove(index) {
            //    this.items.splice(index, 1);
 
            //    this.$emit('removed');
 
            //    flash('Reply was deleted!');
            //}
        }
    }
</script>