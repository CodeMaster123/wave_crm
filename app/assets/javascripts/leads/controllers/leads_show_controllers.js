leads_app.controller('LeadsShowController', function($scope, $http, $routeParams){
  $scope.init = function(){
    lead = $http({
      method: 'GET',
      url: '/leads/'+$routeParams.id+'.json'
    }).success(function(result){
      $scope.lead = result.lead;
      $scope.products = result.products;
      $scope.call_logs =result.call_logs;
      $scope.previous_meetings = result.previous_meetings;
      $scope.future_meetings = result.future_meetings;
      $scope.notifications = result.notifications;
    })
  }
  $scope.init();
})
