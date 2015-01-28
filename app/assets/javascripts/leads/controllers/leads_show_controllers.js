leads_app.controller('LeadsShowController', function($scope, $http, $routeParams, $modal){
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

  $scope.notification_form = function(){
    var notification_modal = $modal.open({
      templateUrl: '/templates/leads/new_notification_modal.html',
      controller: 'NotificationModalController'
    })
  }

  $scope.call_log_form = function(){
    var call_log_modal = $modal.open({
      templateUrl: '/templates/leads/call_log_modal.html',
      controller: 'CallLogModalController'
    })
  }

  $scope.meeting_form = function(){
      var meeting_modal = $modal.open({
          templateUrl: '/templates/leads/new_meeting_modal.html',
          controller: 'MeetingModalController'
      })
  }


  $scope.init();
})
