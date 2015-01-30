leads_app.controller('CallLogModalController', function($scope, $modalInstance, $http, $routeParams){
  $scope.create_call_log = function(){
    $scope.current_call_log.call_duration= parseInt($scope.call_duration_minutes)*60 + parseInt($scope.call_duration_seconds);
    $http({
      method: 'POST',
      url: '/leads/'+$routeParams.id+'/call_logs',
      params: {
        call_log: $scope.current_call_log
      }
    }).success(function(){
      $modalInstance.dismiss('cancel');
    })
  }

  $scope.cancel = function(){
    $modalInstance.dismiss('cancel');
  }
})
