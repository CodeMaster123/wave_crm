accounts_app.controller('CreateContactController',function($scope, $http, $routeParams){
  $scope.create_contact = function(){
    $http({
      method: 'POST',
      url: 'accounts/1/contacts.json',
      params: {
        contact: $scope.current_contact
      }
    }).success(function(){
      $modalInstance.dismiss('cancel');
    })
  }
})
