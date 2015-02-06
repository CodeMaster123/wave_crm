angular
  .module('accounts_app')
  .controller('TransactionsController', Transactions);

Transactions.$inject = ['$scope', '$routeParams', 'Restangular'];

function Transactions($scope, $routeParams, Restangular){
  $scope.transactions = function(){
    Restangular.one('accounts',$routeParams.id).all('transactions').getList().then(function(result){
      $scope.transactions = result;
    });
  }
}
