accounts_app.controller('ContactModalController', function ($scope, $modalInstance, current_contact) {
  $scope.current_contact = current_contact;

  $scope.ok = function () {
    $modalInstance.close($scope.selected.item);
  };

  $scope.cancel = function () {
    $modalInstance.dismiss('cancel');
  };
})
