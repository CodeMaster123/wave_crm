leads_app.controller('NotificationModalController',function($scope, $http){
  $scope.create_notification = function(){
    $http({
      method: 'POST',
      url: '/notifications',
      params:{
        notification: $scope.current_notification
      }
    })
  }
})
