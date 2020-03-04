<template>
    <ul class="pagination" v-if="shouldPaginate">
        <li v-show="prevUrl">
            <a href="#" aria-label="Previous" rel="prev" @click.prevent="page--">
                <span aria-hidden="true">&laquo; Previous</span>
            </a>
        </li>
        <li v-show="nextUrl">
            <a href="#" aria-label="Next" rel="next" @click.prevent="page++">
                <span aria-hidden="true">Next &raquo;</span>
            </a>
        </li>
    </ul>
</template>
 
<script>
    export default {
        props: ['dataSet'],
 
        data() {
            return {
                page: 1,
                prevUrl: false,
                nextUrl: false
            }
        },

        watch: {
            dataSet() {
                this.page = this.dataSet.current_page;
                this.prevUrl = this.dataSet.prev_page_url;
                this.nextUrl = this.dataSet.next_page_url;
            },
            page() {
                this.updateUrl();
                this.broadcast();
            }
        },

        computed: {
            shouldPaginate() {
                return !!this.prevUrl || !!this.nextUrl;
            }
        },

        methods: {
            broadcast() {
                return this.$emit('changed');
            },
 
            updateUrl() {
                let hash = location.hash;
                hash = hash.substring(1);
                this.$router.push({ path: hash, query: { page: this.page }}).catch(err => {})
            }
        }
    }
</script>