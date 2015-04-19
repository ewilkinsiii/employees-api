(function () {
  "use strict";

  angular.module("app").controller("peopleCtrl", function($scope, $http) {
    
    $scope.fetchData = function(){
      $http.get("/api/v1/employees.json").then(function(response){
        $scope.employees = response.data;
      });
    };

    $scope.addEmployee = function(newName, newTitle){
      var employee = {
        name:newName,
        title: newTitle
      };

      $http.post('/api/v1/employees.json', employee).then(function(response){
        $scope.employees.push(employee);
        $scope.newEmployeeName = "";
        $scope.newEmployeeTitle = "";
        $scope.errors = null;
       }, function(error){
        $scope.errors = error.data.errors;
      });
    };

    $scope.toggleTitleVisible = function(employee){
      
     employee.titleVisible = !employee.titleVisible;
    };

    $scope.descending = true;

    $scope.changeOrder = function(attribute){
      $scope.orderByAttribute = attribute;
      $scope.descending = !$scope.descending;
    };

   window.scope = $scope;
  });
})();                 