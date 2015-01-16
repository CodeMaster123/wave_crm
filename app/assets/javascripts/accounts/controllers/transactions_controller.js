accounts_app.controller('TransactionsController',function($scope,$routeParams, Restangular){
  $scope.transactions = function(){
    Restangular.one('accounts',$routeParams.id).all('transactions').getList().then(function(result){
      $scope.transactions = result;
    });
  }
})
