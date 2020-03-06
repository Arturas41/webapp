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
    db.collection('Stocks').deleteMany({
        inPortfolio: false
    }).then((result) => {
        console.log(result);
        client.close();
    });

});