$(document).ready(function(){
  $('.deck').click(function (event){

    event.preventDefault();

    var $content = $('#deck-content')
    $.ajax({
      type: 'GET',
      url: event.target.href + '.json',
      success: deckList = function(data){
        var str = '';
        str += '<li>' + data.deck.name + '</li>';
        str += '<li>Player: ' + data.deck.player + '</li>';
        str += 'Main Deck';
        for(var i in data.deck.main) {
          card = data.deck.main[i];
          str += "<li id='card-link'>" + card.number_played + ' ';
          str += "<a href='/cards/" + card.id + "'>";
          str += card.name + '</a></li>';
        }
        str += '\n';
        str += 'Sideboard';
        for(var i in data.deck.side) {
          card = data.deck.side[i];
          str += '<li>' + card.number_played + ' ';
          str += "<a href='/cards/" + card.id + "'>";
          str += card.name + '</a></li>';
        }
        $content.html(str);
      }
    });
  });
});
