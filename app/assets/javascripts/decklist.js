$(document).ready(function(){
  $('.deck').click(function (event){

    event.preventDefault();
    debugger;
    var $content = $('#deck-content')
    $.ajax({
      type: 'GET',
      url: event.target.href + '.json',
      success: deckList = function(data){
        var str = '';
        str += '<li>Player: ' + data.player + '</li>';
        str += '<li>Archetype: ' + data.archetype + '</li>';
        for(var i in data.cards) {
          card = data.cards[i];
          str += '<li>' + card.number_played + ' ' + card.name + '</li>';
        }
        $content.html(str);
      }
    });
  });
});
