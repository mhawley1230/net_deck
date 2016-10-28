$(document).ready(function(){
  $('.standard-button').click(function (event){

    event.preventDefault();

    var $format = $('#tournaments');

    var request = $.ajax({
      type: 'GET',
      url: '/tournaments.json',
      content_type: 'application/json'
    });

    request.done(function(data) {
      var str = '';
      for (var i in data) {
        if (data[i].format === 'Standard') {
          str += '<li>';
          str += "<a href='/tournaments/";
          str += data[i].id;
          str += "'>"
          str += data[i].name + ' - ' + data[i].date;
          str += '</a>'
          str += '</li>';
        }
      }
      $format.html(str);
    });
  });
});
