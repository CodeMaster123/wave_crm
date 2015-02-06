angular
  .module('leads_app')
  .controller('NotificationModalController', NotificationModal)

NotificationModal.$inject = ['$scope', '$modalInstance', '$http'];

function NotificationModal($scope, $modalInstance, $http){
  $scope.create_notification = function(){
    $http({
      method: 'POST',
      url: '/notifications',
      params:{
        notification: $scope.current_notification
      }
    }).success(function(){
      $modalInstance.dismiss('cancel');
    })
  }

  $scope.cancel = function(){
    $modalInstance.dismiss('cancel');
  }
}
