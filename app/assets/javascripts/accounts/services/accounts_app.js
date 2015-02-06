angular.module('accounts_app',['ngRoute', 'restangular', 'ng-rails-csrf', 'ui.bootstrap'])
.config(AccountRoutes);

AccountRoutes.$inject = ['$routeProvider', 'RestangularProvider']

function AccountRoutes($routeProvider, RestangularProvider){
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

  RestangularProvider.setRequestSuffix('.json');
}

