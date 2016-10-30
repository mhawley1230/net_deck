$(document).ready(function(){
  $('#deck-content').click(function (event){
    event.preventDefault();

    var $content = $('#card-img')
    $.ajax({
      type: 'GET',
      url: event.target.href + '.json',
      success: cardImg = function(data){
        var str = '';
        str += "<img src='" + data.card.img_url + "'";
        str += "alt='" + data.card.name + "'>";
        $content.html(str);
      }
    });
  });
});
