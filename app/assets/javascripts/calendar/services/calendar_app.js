angular
  .module('calendar_app', ['ngRoute', 'ng-rails-csrf', 'ui.bootstrap', 'ui.calendar'])
  .config(CalendarRoutes);

CalendarRoutes.$inject = ['$routeProvider']

function CalendarRoutes($routeProvider){
  $routeProvider
  .when('/index',{
    templateUrl: '/templates/calendar/calendar.html',
    controller: 'CalendarIndexController'
  })
}
