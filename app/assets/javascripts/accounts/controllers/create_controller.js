accounts_app.controller('CreateController',function($scope, $routeParams, $http, $location, Contact){
  a = Contact.all()
  a.then(function(response){
    $scope.contacts = response;
  })
  $scope.create = function(account){
    data = JSON.stringify($scope.account)
    $http({
      method: 'POST',
      url: 'accounts.json',
      params: {
        account: $scope.account
      }
    }).success(function(){
      $location.path('/index');
    });
  }
})
