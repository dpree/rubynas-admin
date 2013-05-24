'use strict'

# Declare app level module which depends on filters, and services
RubynasAdmin = angular.module('rubynas-admin', [
  'ngCookies'
  'ngResource'
  'rubynas-admin.controllers'
  'rubynas-admin.directives'
  'rubynas-admin.filters'
  'rubynas-admin.services'
  'rubynas-admin.user'
  'rubynas-admin.group'
  'partials'
])

RubynasAdmin.config([
  '$routeProvider'
  '$locationProvider'

($routeProvider, $locationProvider, config) ->

  $routeProvider

    .when "/shared_folders",
      controller: SharedFolderListController,
      templateUrl: "/partials/shared_folders.index.html"
    .when('/todo', {templateUrl: '/partials/todo.html'})
    .when('/view1', {templateUrl: '/partials/partial1.html'})
    .when('/view2', {templateUrl: '/partials/partial2.html'})

    # Catch all
    .otherwise({redirectTo: '/todo'})

  # Without server side support html5 must be disabled.
  $locationProvider.html5Mode(false)
])
