angular
  .module('leads_app')
  .controller('LeadsIndexController',LeadsIndex)

LeadsIndex.$inject = ['$scope', 'Restangular', '$routeParams', '$location'];

function LeadsIndex($scope, Restangular, $routeParams, $location){
  $scope.init = function(){
    Leads = Restangular.all('leads')
    Leads.getList().then(function(leads){
      $scope.leads = leads;
      if($scope.temp_lead==undefined)
        $scope.status_filter();
    })
  }

  $scope.status_filter = function(lead_status){
    $scope.temp_leads = _.filter($scope.leads, function(lead){
      return lead.lead_status == lead_status
    })
  }

  $scope.init();
}
