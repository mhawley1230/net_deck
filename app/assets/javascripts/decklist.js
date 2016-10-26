$(document).ready(function(){
  $('.deck').click(function (event){

    event.preventDefault();

    var $content = $('#deck-content')
    $.ajax({
      type: 'GET',
      url: event.target.href + '.json',
      success: deckList = function(data){
        debugger;
        var str = '';
        str += '<li>' + data.name + '</li>';
        str += '<li>Player: ' + data.player + '</li>';
        str += '<li>Archetype: ' + data.archetype + '</li>';
        str += 'Main Deck';
        for(var i in data.main) {
          card = data.main[i];
          str += '<li>' + card.number_played + ' ' + card.name + '</li>';
        }
        str += '\n';
        str += 'Sideboard';
        for(var i in data.side) {
          card = data.main[i];
          str += '<li>' + card.number_played + ' ' + card.name + '</li>';
        }
        $content.html(str);
      }
    });
  });
});
