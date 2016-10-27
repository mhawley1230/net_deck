$(document).ready(function(){
  $('.vintage-button').click(function (event){

    event.preventDefault();

    var $standard = $('.tournaments')
    $.ajax({
      type: 'GET',
      url: '/tournaments.json',
      success: format = function(data){
        var str = '';
        debugger;
        if (data.format === 'Vintage') {
          debugger;
          for (var [i] in data) {
            debugger;
            str += data.name + '-' + data.date;
            debugger;
          }
        }
        $standard.html(str);
      }
    });
  });
});
