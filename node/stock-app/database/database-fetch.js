const MongoClient = require('mongodb').MongoClient;
 
MongoClient.connect('mongodb://localhost:27017/StockApp', {
    useUnifiedTopology: true,
    useNewUrlParser: true
}, (err, client) => {
    if (err) {
        return console.log('Unable to connect to MongoDB');
    }
    console.log('Connected to MongoDB');
    const db = client.db('StockApp');
    /*
    db.collection('Stocks').find({
        inPortfolio: true
    }).toArray().then((docs) => {
        console.log('Stocks');
        console.log(JSON.stringify(docs, undefined, 2));
        client.close();
    }, (err) => {
        console.log('Unable to fetch stocks', err);
        client.close();
    });
    */
    db.collection('Stocks').find().count().then((count) => {
        console.log('Stocks count' + count);
        client.close();
    }, (err) => {
        console.log('Unable to fetch stocks', err);
        client.close();
    });

});