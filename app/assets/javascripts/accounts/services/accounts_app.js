var accounts_app = angular.module('accounts_app',['ngRoute', 'restangular', 'ng-rails-csrf', 'ui.bootstrap']);
accounts_app.config(function($routeProvider){
  $routeProvider
  .when('/index',{
    templateUrl: '/templates/accounts/index.html',
    controller: 'IndexController'
  })
  .when('/new',{
    templateUrl: '/templates/accounts/new.html',
    controller: 'CreateController'
  })
  .when('/:id',{
    templateUrl: 'templates/accounts/show.html',
    controller: 'ShowController'
  })
  .otherwise({
    redirectTo: '/index'
  })
}).config(function(RestangularProvider){
  RestangularProvider.setRequestSuffix('.json');
})
