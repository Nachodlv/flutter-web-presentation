'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "efcfa26ac4f60647144f78a377e6fa2e",
"assets/assets/fonts/Calibri-Bold.ttf": "8c8905b9e5a727f74debd5a1519544fd",
"assets/assets/fonts/Calibri-Regular.ttf": "5d7c31b284ddb01fc1cbae0edc9ec210",
"assets/assets/images/dart-logo.png": "b1c9fbfe2bc72cdd66a848ebcc793856",
"assets/assets/images/flutter-logo.png": "d21f1eecaeaab081ba7efec1721c0712",
"assets/assets/images/web-support.png": "0f91d8140472d54f93e04f4eb4adcb30",
"assets/FontManifest.json": "ab0703b08a3ba80e0ab8257e4a7e99f6",
"assets/fonts/Calibri%20Regular.ttf": "5d7c31b284ddb01fc1cbae0edc9ec210",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/LICENSE": "4f1234eb1135ef4b06a21658899a4be9",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/packages/open_iconic_flutter/assets/open-iconic.woff": "3cf97837524dd7445e9d1462e3c4afe2",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "20953c67f1b62f5104a07b076055fd5c",
"/": "20953c67f1b62f5104a07b076055fd5c",
"main.dart.js": "25a790cb314d99bdec6acefc75d825e7",
"manifest.json": "cc6e5beb8e22af644f7f58d400509149"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
