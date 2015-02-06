angular
  .module('accounts_app')
  .factory('Contact',Contact);

Contact.$inject = ['$http'];

function Contact($http){
  var Contact = {
    all: function(){
      return $http.get('contacts.json?type=client').then(function(result){
        result = _.map(result.data, function(contact){
          return [contact.first_name+' '+contact.last_name, contact.id]}
                      );
                      return result;
      })
    }
  }
  return Contact;
}
