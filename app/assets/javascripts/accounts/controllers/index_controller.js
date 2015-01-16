accounts_app.controller('IndexController', function($scope, $routeParams, Restangular){
  path = 'accounts.json?type='+$routeParams.type;
  var Account = Restangular.allUrl('accounts',path);
  Account.getList().then(function(accounts){
    $scope.accounts = accounts
  });

  $scope.destroy_account = function(record_id,index){
    var Account = Restangular.one('accounts', record_id)
    Account.remove().then(function(){
      $scope.accounts.splice(index);
    })
  }
})
