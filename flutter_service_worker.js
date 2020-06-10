'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/fonts/Calibri%20Regular.ttf": "5d7c31b284ddb01fc1cbae0edc9ec210",
"assets/assets/fonts/Calibri-Bold.ttf": "8c8905b9e5a727f74debd5a1519544fd",
"assets/assets/fonts/Calibri-Regular.ttf": "5d7c31b284ddb01fc1cbae0edc9ec210",
"assets/assets/images/web-support.png": "0f91d8140472d54f93e04f4eb4adcb30",
"assets/assets/images/dart-logo.png": "b1c9fbfe2bc72cdd66a848ebcc793856",
"assets/assets/images/flutter-logo.png": "d21f1eecaeaab081ba7efec1721c0712",
"assets/FontManifest.json": "ab0703b08a3ba80e0ab8257e4a7e99f6",
"assets/packages/open_iconic_flutter/assets/open-iconic.woff": "3cf97837524dd7445e9d1462e3c4afe2",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/AssetManifest.json": "efcfa26ac4f60647144f78a377e6fa2e",
"assets/LICENSE": "b47b1828f30de57fa968ad090214859c",
"main.dart.js": "25a790cb314d99bdec6acefc75d825e7",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "49e62fef96aab4f05592ebd67fba2e61",
"index.html": "f77800d125a2089218d653f295a25ceb",
"/": "f77800d125a2089218d653f295a25ceb",
"favicon.png": "5dcef449791fa27946b3d35ad8803796"
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
