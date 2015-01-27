accounts_app.controller('ShowController',function($scope, $http,$routeParams, Restangular){
  $scope.account = function(){
    Restangular.one('accounts',$routeParams.id).get().then(function(result){
      $scope.account = result;
    })
  }
})
