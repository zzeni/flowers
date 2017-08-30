/* globals angular */
(function () {
  var app = angular.module('fblog', ['ui.router']);
  var API_URL = "http://localhost:3000";

  function onError(response, ctrl) {
    ctrl.hasError = true;
    ctrl.error = response.data;
  }

  app.component("flowersIndex", {
    bindings: {},
    templateUrl: "templates/flowers/index.html",
    controller: function ($http) {
      var self = this;

      this.$onInit = function() {
        $http.get(API_URL + '/flowers.json', { headers: { 'Access-Control-Allow-Origin': '*' }}).then(
          function (response) {
            self.flowers = response.data;
          },
          function (response) {
            onError(response, self);
          }
        );
      };
    }
  });

  app.component("flowersShow", {
    bindings: {
      id: '<'
    },
    templateUrl: "templates/flowers/show.html",
    controller: function ($http) {
      var self = this;

      this.$onInit = function() {
        $http.get(API_URL + '/flowers/' + self.id + '.json').then(
          function (response) {
            self.flower = response.data;

            $http.get(API_URL + '/flowers/' + self.id + '/comments.json').then(
              function (response) {
                self.comments = response.data;
              },
              function (response) {
                onError(response, self);
              }
            );
          },
          function (response) {
            onError(response, self);
          }
        );
      };
    }
  });

})();
