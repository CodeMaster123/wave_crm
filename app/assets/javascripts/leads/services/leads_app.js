var leads_app = angular.module('leads_app',['ngRoute', 'restangular', 'ng-rails-csrf', 'ui.bootstrap'])
leads_app.config(function($routeProvider){
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
})
