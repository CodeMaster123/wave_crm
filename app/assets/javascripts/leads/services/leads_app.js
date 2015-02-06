angular
  .module('leads_app',['ngRoute', 'restangular', 'ng-rails-csrf', 'ui.bootstrap', 'validation', 'validation.rule', 'angular.filter'])
  .config(LeadsRoutes);

LeadsRoutes.$inject = ['$routeProvider']

function LeadsRoutes($routeProvider){
  $routeProvider
  .when('/',{
    templateUrl: '/templates/leads/index.html',
    controller: 'LeadsIndexController'
  })
  .when('/index',{
    templateUrl: '/templates/leads/index.html',
    controller: 'LeadsIndexController'
  })
  .when('/:id', {
    templateUrl: '/templates/leads/show.html',
    controller: 'LeadsShowController'
  })
}
