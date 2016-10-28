$(document).ready(function(){
  $('.vintage-button').click(function (event){

    event.preventDefault();

    var $vintage = $('#tournaments');

    var request = $.ajax({
      type: 'GET',
      url: '/tournaments.json',
      content_type: 'application/json'
    });

    request.done(function(data) {
      var str = '';
      for (var i in data) {
        if (data[i].format === 'Vintage') {
          str += '<li>';
          str += "<a href='/tournaments/";
          str += data[i].id;
          str += "'>"
          str += data[i].name + ' - ' + data[i].date;
          str += '</a>'
          str += '</li>';
        }
      }
      $vintage.html(str);
    });
  });
});
