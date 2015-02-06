angular
  .module('accounts_app')
  .controller('ContactModalController', ContactModal);

ContactModal.$inject = ['$scope', '$modalInstance', 'current_contact']

function ContactModal($scope, $modalInstance, current_contact) {
  $scope.current_contact = current_contact;

  $scope.ok = function () {
    $modalInstance.close($scope.selected.item);
  };

  $scope.cancel = function () {
    $modalInstance.dismiss('cancel');
  };
}
