angular
  .module('accounts_app')
  .controller('ContactsController', Contacts);

Contacts.$inject = ['$scope', '$modal', '$routeParams', '$http', 'Restangular'];

function Contacts($scope,$modal, $routeParams, $http, Restangular){
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

  $scope.search = function(){
    $http({
      method: 'GET',
      url: 'contacts/search.json',
      params: {
        query: $scope.search_field
      }
    }).success(function(result){
      $scope.contacts = result;
    })
  }
}
