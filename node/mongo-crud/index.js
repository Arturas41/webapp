const mongoose = require('mongoose');
 
mongoose.connect('mongodb://127.0.0.1:27017/mongo-games', {useNewUrlParser: true,  useUnifiedTopology: true})
    .then(() => 'You are now connected to Mongo!')
    .catch(err => console.error('Something went wrong', err))
    
const gameSchema = new mongoose.Schema({
    title: {
        type: String, 
        required: true,
        minlength: 5,
        maxlength:10
    },
    publisher: String,
    tags: {
        type: [String],
        require: true,
        enum: ['rpg', 'action'],
        validate:{
            validator:function(v){
                return v.lenght > 1
            },
            message: 'lenght must be more then 1'
        }
    },
    date: {
        type: Date,
        default: Date.now
    },
    onSale: Boolean,
    price: {
        type: Number,
        required: function(){return this.onSale}
    }
});
	
const Game = mongoose.model('Game', gameSchema);//Game - collection name


async function saveGame() {
    const game = new Game({
        title: "asdf",
        publisher: "Nintendo",
        tags: ["adventure", "action"],
        onSale: true,
        //price: 59.99,
    });
    try{
        const result = await game.save();
        console.log(result);
    }catch(err){
        console.log(err.message)
    }
    
    
}
 
saveGame();

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
/*
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
*/
/*
async function deleteGame(id) {
    const result = await Game.deleteOne({ _id: id })
    console.log(result);
}
 
deleteGame('5e623ed1bed04f05100772da');
*/