$(document).ready(function() {

  // #### Breakfast/Dinner Menu ####
  $('.menu_request').on('click', 'input', function(e){
    e.preventDefault();
    var myUrl = $(this).parent().attr('action');
    var myData = $(this).attr('id')
    var myThis = $(this)

    var request = $.ajax({
      url: myUrl,
      type: 'POST',
      data: {meal: myData}
    })
    .done(function(response){
      myThis.siblings('.single_menu').replaceWith(response);
    })
    .fail(function(response){
      console.log("oops, something went wrong")
    })
  });


  // #### Button Fade in and Out ####
  $('.menu_request input').hover(function () {
    $(this).css('opacity', 1);
  }, function() {
    $(this).css('opacity', 0.4);
  });

  // #### Query Menu ####
  $('.menu_query').on('click', '.menu_button', function(e){

    e.preventDefault();
    var myUrl = $(this).parent().attr('action');
    var myData = $('#text_query').val();
    var myThis = $(this);

    var request = $.ajax({
      url: myUrl,
      type: 'POST',
      data: {query: myData}
    })
    .done(function(response){
      $('#text_query').val('');
      $('.queries').replaceWith(response);
    })
    .fail(function(response){
      console.log("oops, something went wrong")
    })
  });


  // #### Generate Comments & Post ####
  $('.comments').on('click', '.comment-button', function(e){

    e.preventDefault();
    var myUrl = $(this).parent().attr('action');
    var userName = $('#name').val();
    var userComment = $('#comment').val();
    var myThis = $(this);

    var request = $.ajax({
      url: myUrl,
      type: 'POST',
      data: {name: userName, comment: userComment}
    })
    .done(function(response){
      $('#name').val('');
      $('#comment').val('');
      $('.comments-container').append(response);
    })
    .fail(function(response){
      console.log("oops, something went wrong")
    })
  });


  // #### Google Maps Directions ####
  $('.get-route').on('click', '.directions-button', function(e){
    e.preventDefault();
    var begin = $('#location').val();
    $('#location').val('');
    var podnahs = new google.maps.LatLng(45.562865, -122.648256);
    var transportationMethod = $('.active').attr('alt')

    function calcRoute() {
      var start = begin;
      var end = podnahs;
      var request = {
        origin:start,
        destination:end,
        travelMode: google.maps.TravelMode[transportationMethod]
      };
      directionsService.route(request, function(result, status) {
        if (status == google.maps.DirectionsStatus.OK) {
          directionsDisplay.setDirections(result);
        }
      });
    }

    //#### Google Matrix - Time/Miles ####
    var service = new google.maps.DistanceMatrixService();
    service.getDistanceMatrix(
    {
      origins: [begin],
      destinations: [podnahs],
      travelMode: google.maps.TravelMode[transportationMethod],
      unitSystem: google.maps.UnitSystem.IMPERIAL
    }, callback);


    calcRoute();
  })

  // #### Walk, Drive, Bike icons ####
  $('.icon-container').on('click', 'img', function(e){
    e.preventDefault();
    $('.icon-container img').removeClass('active').addClass('inactive')
    $(this).removeClass('inactive').addClass('active')
  })



  // #### Accordion Functionality ####
  $( "#accordion" ).accordion({
    collapsible: true
  });


  // #### Expand Comments Field on Click ####
  $('textarea').on('click', function(){
    $(this).css('padding-bottom', '100px');
  })


  // #### Google Map Visual ####
  var directionsDisplay;
  var directionsService = new google.maps.DirectionsService();
  var map;

  function initialize() {
    directionsDisplay = new google.maps.DirectionsRenderer();
    var podnahs = new google.maps.LatLng(45.562865, -122.648256);
    var mapOptions = {
      zoom:12,
      center: podnahs
  }
  map = new google.maps.Map(document.getElementById("map"), mapOptions);
  directionsDisplay.setMap(map);

  var markerOptions = {
    position: new google.maps.LatLng(45.562865, -122.648256)
  };
  var marker = new google.maps.Marker(markerOptions);
  marker.setMap(map);
  }

  function callback(response, status) {
    var distance = response.rows[0].elements[0].distance.text;
    var time = response.rows[0].elements[0].duration.text;
    $('p.get-route').replaceWith('<p class="get-route">Time: '+ time + ' Distance: ' + distance + '</p>')
  }



  initialize();

});



