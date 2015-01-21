accounts_app.controller('IndexController', function($scope, $routeParams, $http, Restangular){
  $scope.init = function(){
    path = 'accounts.json?type='+$routeParams.type;
    var Account = Restangular.allUrl('accounts',path);
    Account.getList().then(function(accounts){
      $scope.accounts = accounts
    })
  }

  $scope.destroy_account = function(record_id,index){
    decision = confirm("Are you sure?");
    if(decision){
      var Account = Restangular.one('accounts', record_id)
      Account.remove().then(function(){
        $scope.accounts.splice(index);
      })
    }
  }

  $scope.search = function(){
    $http({
      method: 'GET',
      url: 'accounts/search.json',
      params: {
        query: $scope.search_field
      }
    }).success(function(result){
      $scope.accounts = result;
    })
  }


  $scope.init();
})
