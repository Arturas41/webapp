const mongoose = require('mongoose');
 
mongoose.connect('mongodb://127.0.0.1:27017/mongo-games', {useNewUrlParser: true,  useUnifiedTopology: true})
    .then(() => 'You are now connected to Mongo!')
    .catch(err => console.error('Something went wrong', err))
    
const gameSchema = new mongoose.Schema({
    title: String,
    publisher: String,
    tags: [String],
    date: {
        type: Date,
        default: Date.now
    },
    onSale: Boolean,
    price: Number
});
	
const Game = mongoose.model('Game', gameSchema);//Game - collection name

/*
async function saveGame() {
    const game = new Game({
        title: "The Legend of Zelda: Breath of the Wild",
        publisher: "Nintendo",
        tags: ["adventure", "action"],
        onSale: false,
        price: 59.99,
    });
 
    const result = await game.save();
    console.log(result);
}
 
saveGame();
*/
/*
async function getGames() {
    const games = await Game.find();
    console.log(games);
}
 
getGames();
*/
/*
async function getGames() {
    const games = await 
    Game.find({
        
    }).or(
      [{ publisher: 'Nintendo' }, { onSale: true }]  
    ).and(
        [{price: { $in: [59.99,1,2]}}]
    ).sort({
        price:1
    }).select({
        title: 1,
        price: 1
    });
    console.log(games);
}
 
getGames();
*/
async function updateGame(id) {
    const result = await Game.updateOne({ _id: id }, {
        $set: {
            title: 'A Link Between Worlds',
            price: 55
        }
    });
    console.log(result);
}
 
updateGame('5e623ed1bed04f05100772da');

/*
async function deleteGame(id) {
    const result = await Game.deleteOne({ _id: id })
    console.log(result);
}
 
deleteGame('5e623ed1bed04f05100772da');
*/