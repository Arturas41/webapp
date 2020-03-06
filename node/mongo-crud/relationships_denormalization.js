const mongoose = require('mongoose');
 
mongoose.connect('mongodb://localhost/mongo-games', {useNewUrlParser: true,  useUnifiedTopology: true})
    .then(() => console.log('Now connected to MongoDB!'))
    .catch(err => console.error('Something went wrong', err));
 

// Publisher Schema
const publisherSchema = new mongoose.Schema({
    companyName: String,
    firstParty: Boolean,
    website: String
})
 
// Publisher Model
const Publisher = mongoose.model('Publisher', publisherSchema);
 
// Game Schema
const gameSchema = new mongoose.Schema({
    title: String,
    publisher: publisherSchema
})

// Game Model
const Game = mongoose.model('Game', gameSchema);

async function createGame(title, publisher) {
    const game = new Game({
        title,
        publisher
    });
 
    const result = await game.save();
    console.log(result);
}
/*
async function updatePublisher(gameId) {
    const game = await Game.findById(gameId);
    game.publisher.companyName = 'Epic Games';
    game.publisher.website = 'https://epicgames.com/';
    game.save();
}
*/
async function updatePublisher(gameId) {
    const game = await Game.update({ _id: gameId }, {
        $set: {
            'publisher.companyName': 'Bethesda Softworks',
            'publisher.website': 'https://bethesda.net/'
        }
    });
}
 
//createGame('Rayman', new Publisher({ companyName: 'Ubisoft', firstParty: false, website: 'https://www.ubisoft.com/' }))
updatePublisher('5e625ea9252dd824984bcc1b');