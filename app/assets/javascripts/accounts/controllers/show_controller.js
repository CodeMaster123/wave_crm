angular
  .module('accounts_app')
  .controller('ShowController', Show);

Show.$inject = ['$scope', '$http', '$routeParams', 'Restangular'];

function Show($scope, $http, $routeParams, Restangular){
  $scope.account = function(){
    Restangular.one('accounts',$routeParams.id).get().then(function(result){
      $scope.account = result;
    })
  }
}
