$(function () {
    $('#search-game').click(function () {
        if(!User.game)
            socket.emit('search game', User.name);
    });

    socket.on('game', function (game) {
        User.game = game;
        console.log(game);
    });

    socket.on('start', function () {
        console.log('Comienza la partida');
        if(window.location.pathname != '/jugar')
            window.location = '/jugar';
    });

    console.log(window.location);
});