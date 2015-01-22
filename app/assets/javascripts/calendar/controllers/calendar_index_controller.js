calendar_app.controller('CalendarIndexController', function($scope){
  var date = new Date();
  var d = date.getDate();
  var m = date.getMonth();
  var y = date.getFullYear();


  $scope.eventSources = [{
  events: [
  {title: 'event1', start: '2015-01-11'},
  {title: 'event2', start: '2015-01-05', end: '2015-01-07'},
  {title: 'event3', start: '2015-01-09T12:30:00', allDay: false},
  {title: 'All Day Event',start: new Date(y, m, 1)},
  {title: 'Long Event',start: new Date(y, m, d - 5),end: new Date(y, m, d - 2)},
  {title: 'Repeating Event',start: new Date(y, m, d - 3, 16, 0),allDay: false},
  {title: 'Repeating Event',start: new Date(y, m, d + 4, 16, 0),allDay: false},
  {title: 'Birthday Party',start: new Date(y, m, d + 1, 19, 0),end: new Date(y, m, d + 1, 22, 30),allDay: false},
  ]
  }];

  $scope.click = function(date, asd,asdf){
    console.log('Clicked');
  }

  $scope.alertOnDrop = function(){
    console.log('Clicked');
  }

  $scope.uiConfig = {
    calendar:{
      height: 450,
      editable: true,
      header:{
        left: 'today',
        center: 'prev, title,next',
        right: ''
      },
      eventClick: $scope.click,
      eventDrop: $scope.alertOnDrop,
      eventResize: $scope.alertOnResize,
      eventRender: $scope.eventRender
    }
  };



})
