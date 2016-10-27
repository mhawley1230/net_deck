$(document).ready(function(){
  $('.standard-button').click(function (event){

    event.preventDefault();
    debugger;
    var $standard = $('.tournaments')
    $.ajax({
      type: 'GET',
      url: '/tournaments.json',
      success: format = function(data){
        debugger;
        var str = '';
        debugger;
        if (data.format === 'Standard') {
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
