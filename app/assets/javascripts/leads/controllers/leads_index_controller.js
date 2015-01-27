leads_app.controller('LeadsIndexController',function($scope, Restangular, $routeParams){
  $scope.init = function(){
    Leads = Restangular.all('leads')
    Leads.getList().then(function(leads){
      $scope.leads = leads
    })
  }

  $scope.init();
})
