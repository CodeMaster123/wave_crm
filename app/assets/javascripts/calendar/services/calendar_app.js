var calendar_app = angular.module('calendar_app', ['ngRoute', 'ng-rails-csrf', 'ui.bootstrap', 'ui.calendar']);
calendar_app.config(function($routeProvider){
  $routeProvider
  .when('/calendar',{
    templateUrl: '/templates/calendar/calendar.html',
    controller: 'CalendarIndexController'
  })
})
