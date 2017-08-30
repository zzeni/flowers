/* global angular */
angular.module("fblog").config([ '$stateProvider', '$urlRouterProvider', function ($stateProvider, $urlRouterProvider) {
  $stateProvider
    .state('home', {
      url: '/home',
      templateUrl: 'templates/home.html'
//      component: 'homeComponent',
    });

  $stateProvider
    .state('flowers', {
      url: "/flowers",
      redirectTo: 'flowers.index'
    })
    .state('flowers.index', {
      url: "/index",
      component: "flowersIndex"
    })
    .state('flowers.show', {
      url: "/:id",
      component: "flowersShow",
      resolve: {
        id: function ($transition$) {
          return $transition$.params().id;
        }
      }
    });

  $urlRouterProvider.otherwise('home');
}]);
