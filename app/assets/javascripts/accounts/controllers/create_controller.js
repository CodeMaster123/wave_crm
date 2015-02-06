angular
  .module('accounts_app')
  .controller('CreateController', Create);

Create.$inject = ['$scope', '$routeParams', '$http', '$location', 'Contact'];

function Create($scope, $routeParams, $http, $location, Contact){
  $scope.init = function(){
    a = Contact.all()
    a.then(function(response){
      $scope.contacts = response;
    })
  }

  $scope.create = function(account){
    data = JSON.stringify($scope.account)
    $http({
      method: 'POST',
      url: 'accounts.json',
      params: {
        account: $scope.account
      }
    }).success(function(){
      $location.url('/index?type=existing_accounts');
    });
  }

  $scope.init();
}
