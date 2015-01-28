leads_app.controller('MeetingModalController', function($scope, $http){
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
})
