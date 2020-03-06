module.exports.absolute = function (number) {
    if (number > 0) return number;
    if (number < 0) return -number;
    return 0;
}

module.exports.hello = function (name) {
    return 'Hello ' + name + '!';
}

module.exports.getTickers = function () {
    return ['AAPL', 'MSFT', 'NFLX'];
}

module.exports.getGame = function (gameId) {
    return {
        id: gameId,
        price: 10
    };
}

module.exports.createUser = function (username) {
    if (!username) throw new Error('Username is required.');
 
    return {
        id: new Date().getTime(),
        username: username
    }
}