var baraja = {},
    baraja2 = {},
    backCard = {};

function ganarMano() {
    deshabilitarJuego();
    baraja2.rotateCard();

    baraja.setWinner();

    setTimeout(function () {
        var wonCard = baraja2.remove();

        baraja.next();

        setTimeout(function () {
            baraja.addWonCard(wonCard, true);
            setTimeout(function () {
                mostrarCartasJugador2();
                habilitarJuego();
            }, 1500);
        }, 1500);
    }, 2000);
};

function perderMano() {
    deshabilitarJuego();
    baraja2.rotateCard();

    baraja2.setWinner();

    setTimeout(function () {
        var wonCard = baraja.remove();

        baraja2.next();

        setTimeout(function () {
            baraja2.addWonCard(wonCard, false);
            setTimeout(function () {
                mostrarCartasJugador2();
                deshabilitarJuego();
            }, 1500);
        }, 1500);
    }, 2000);
};

function mostrarCartasJugador2() {
    var cartas = baraja2.itemsCount;

    var notification = new NotificationFx({
        message: '<p>Cartas ' + baraja2.$playerName.text() + ': <strong>' + cartas + '</strong>.</p>',
        layout: 'growl',
        effect: 'genie',
        type: 'notice', // notice, warning or error,
        ttl: 6000,
        onClose: function () { return false; },
        onOpen: function () { return false; }
    });

    notification.show();
}

function cantar(atributo) {
    var idAtributo = $(atributo).attr('data-attribute-id');

    var idCarta = $(baraja.getFirstCard()).attr('data-card-id');

    juego.server.cantar(idAtributo, idCarta);
};

function deshabilitarJuego() {
    baraja.deshabilitarJuego();
};

function habilitarJuego(esJugadorUno) {
    baraja.habilitarJuego();
};

function ganarJuego() {
    $.blockUI({
        message: '<h1>Has ganado la partida ;)</h1>'
    });
};

function perderJuego() {
    $.blockUI({
        message: '<h1>Has perdido la partida :(</h1>'
    });
};