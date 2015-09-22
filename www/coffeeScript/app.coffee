window.starter = angular.module('starter', ['ionic',  'starter.services'])
  .run ($ionicPlatform)->
    $ionicPlatform.ready ()->
      if (window.cordova && window.cordova.plugins && window.cordova.plugins.Keyboard)
        cordova.plugins.Keyboard.hideKeyboardAccessoryBar(true);
        cordova.plugins.Keyboard.disableScroll(true);

      if (window.StatusBar)
        StatusBar.styleLightContent()
  .config ($stateProvider, $urlRouterProvider)->
    $stateProvider
      .state 'tab', {
        url: '/tab',
        abstract: true,
        templateUrl: 'templates/tabs.html'
      }
      .state('tab.dash', {
        url: '/dash',
        views: {
          'tab-dash': {
            templateUrl: 'templates/tab-dash.html',
            controller: 'DashCtrl'
          }
        }
      })
      .state('tab.chats', {
        url: '/chats',
        views: {
          'tab-chats': {
            templateUrl: 'templates/tab-chats.html',
            controller: 'ChatsCtrl'
          }
        }
      })
      .state('tab.chat-detail', {
        url: '/chats/:chatId',
        views: {
          'tab-chats': {
            templateUrl: 'templates/chat-detail.html',
            controller: 'ChatDetailCtrl'
          }
        }
      })
      .state('tab.contacts', {
        url: '/contacts',
        views: {
          'tab-contacts': {
            templateUrl: 'templates/tab-contacts.html',
            controller: 'ContactsCtrl'
          }
        }
      })
      .state('tab.account', {
        url: '/account',
        views: {
          'tab-account': {
            templateUrl: 'templates/tab-account.html',
            controller: 'AccountCtrl'
          }
        }
      })
    $urlRouterProvider.otherwise('/tab/dash')
