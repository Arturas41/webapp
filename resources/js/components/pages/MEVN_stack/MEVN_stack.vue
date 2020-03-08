<template>
    <div>
        Mongo DB:
        </br>
        "C:\Program Files\MongoDB\Server\4.2\bin\mongod.exe" --dbpath="c:\data\db"
        </br>
        Server side:
        </br>
        ....\MEVN-Tutorial>node index.js
        </br>
        Client side:
        </br>
        ....\MEVN-Tutorial>cd client
        </br>
        ....\MEVN-Tutorial\client>npm run serve
    </div>
</template>
<script>

    const client_URL = "http://localhost:8080/";

    export default {

        data() {
            return {
                data: []
            };
        },

        created() {
            window.open(client_URL, '_blank');
        }
    }
</script>