angular
  .module('leads_app')
  .controller('MeetingModalController', MeetingModal)

MeetingModal.$inject = ['$scope', '$modalInstance', '$http']

function MeetingModal($scope, $modalInstance, $http){
  $scope.create_meeting = function(){
    $http({
      method: 'POST',
      url: 'events',
      params: {
        event: $scope.current_meeting
      }
    }).success(function(){
      $modalInstance.dismiss('cancel');
    })
  }

  $scope.cancel = function(){
    $modalInstance.dismiss('cancel');
  }
}
