accounts_app.controller('ContactsController',function($scope,$modal, $routeParams, Restangular){
  $scope.contacts = function(){
    Restangular.one('accounts', $routeParams.id).all('contacts').getList().then(function(result){
      $scope.contacts = result;
    });
  }

  $scope.open = function(contact){
    var modalInstance = $modal.open({
      templateUrl: 'templates/accounts/contact_modal.html',
      controller: 'ContactModalController',
      resolve: {
        current_contact: function(){
          return contact;
        }
      }
    })
  }
})
