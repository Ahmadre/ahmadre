'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "index.html": "c63f0121219668a497c691c6925d8e30",
"/": "c63f0121219668a497c691c6925d8e30",
".firebase/hosting.cHVibGlj.cache": "a21e9908f17ee0ae74c7bb29742c8088",
"main.dart.js": "1a12aa5d0f6fde5801f470891888d922",
"favicon.png": "17d296b1b9a1560532864767515ca115",
"public/index.html": "c63f0121219668a497c691c6925d8e30",
"public/main.dart.js": "57d98caf20a2945e8db1ac229860f2dc",
"public/favicon.png": "17d296b1b9a1560532864767515ca115",
"public/icons/Icon-192.png": "def2799f5f1ebde7c488d93f3556e48c",
"public/icons/Icon-512.png": "d7c0bc17b44f5d37410adf3c3406f4f1",
"public/manifest.json": "53e4e133bc22f6c72e57d1d8534e21a5",
"public/assets/LICENSE": "9cfb38772b8852ba091b687cac6c7d09",
"public/assets/AssetManifest.json": "c2b648e3928c110014498beba1339ab0",
"public/assets/FontManifest.json": "65408137691d55578fe384c9097f4e68",
"public/assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"public/assets/packages/flutter_iconpicker/fonts/fa-solid-900.ttf": "0ea892e09437fcaa050b2b15c53173b7",
"public/assets/packages/flutter_iconpicker/fonts/outline_material.ttf": "6b94994fffd9868330d830fcb18a6026",
"public/assets/packages/flutter_iconpicker/fonts/LineAwesomeIcons.ttf": "4d42f5f0c62a8f51e876c14575354a6e",
"public/assets/packages/flutter_iconpicker/fonts/fa-regular-400.ttf": "d51b09f7b8345b41dd3b2201f653c62b",
"public/assets/packages/flutter_iconpicker/fonts/fa-brands-400.ttf": "51d23d1c30deda6f34673e0d5600fd38",
"public/assets/packages/line_awesome_icons/assets/fonts/icon_font.ttf": "4d42f5f0c62a8f51e876c14575354a6e",
"public/assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "2aa350bd2aeab88b601a593f793734c0",
"public/assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "2bca5ec802e40d3f4b60343e346cedde",
"public/assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "5a37ae808cf9f652198acde612b5328d",
"public/assets/packages/outline_material_icons/lib/outline_material_icons.ttf": "6b94994fffd9868330d830fcb18a6026",
"public/assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"public/assets/assets/internationalization/de.json": "99914b932bd37a50b983c5e7c90ae93b",
"public/assets/assets/internationalization/en.json": "99914b932bd37a50b983c5e7c90ae93b",
"public/assets/assets/images/logo_only_black_on_white.jpg": "7eb616b686e367956ddb8f25d62456d8",
"public/assets/assets/images/logo_only_transparent.png": "308347184434c7c6658112e842a8ea5e",
"public/assets/assets/images/logo_white_background.jpg": "8113a2fb6f1a00b1b0df60b811d1f98a",
"public/assets/assets/images/dark_logo_transparent_background.png": "49c29f0954b42c88ce9df8efeb113f29",
"public/assets/assets/images/white_logo_transparent_background.png": "6851abc0111ba49ee5af1d9dc802f395",
"public/assets/assets/images/home_background.jpg": "f2b3ec1d5365a7b56e8918b5e0ace7e2",
"public/assets/assets/images/white_logo_color_background.jpg": "b78657f9c9c0700115e6f3045d66eb47",
"public/assets/assets/images/white_logo_dark_background.jpg": "c20393c8a9c8a3b2d84a4e3649814e5c",
"public/assets/assets/images/logo_transparent_background.png": "69b792e5ece74bcdcd29f4f4685023ac",
"public/assets/assets/images/logo_only_white_transparent.png": "2b25989942250f9ca2a815d1b8e93467",
"public/assets/assets/images/atem_logo.png": "2cc5c4768461cfe2f9d3c043a2b02e15",
"public/assets/assets/images/logo.svg": "232ed92e76558585c1a251948d1fcee4",
"public/assets/assets/images/dark_logo_white_background.jpg": "00e0e88f7469fe7a569501be2a6892f0",
"public/assets/assets/icons/en.png": "81bce31d4058768d043f99519de6f0d4",
"public/assets/assets/icons/de.png": "8bbe1959d1b9dbd2fbe378070100041b",
"icons/Icon-192.png": "def2799f5f1ebde7c488d93f3556e48c",
"icons/Icon-512.png": "d7c0bc17b44f5d37410adf3c3406f4f1",
"manifest.json": "357601cb1001165149edf31069793a94",
"firebase.json": "ceb3227e948a2fffb08892a8749cf74e",
"assets/LICENSE": "9cfb38772b8852ba091b687cac6c7d09",
"assets/AssetManifest.json": "c2b648e3928c110014498beba1339ab0",
"assets/FontManifest.json": "65408137691d55578fe384c9097f4e68",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/packages/flutter_iconpicker/fonts/fa-solid-900.ttf": "0ea892e09437fcaa050b2b15c53173b7",
"assets/packages/flutter_iconpicker/fonts/outline_material.ttf": "6b94994fffd9868330d830fcb18a6026",
"assets/packages/flutter_iconpicker/fonts/LineAwesomeIcons.ttf": "4d42f5f0c62a8f51e876c14575354a6e",
"assets/packages/flutter_iconpicker/fonts/fa-regular-400.ttf": "d51b09f7b8345b41dd3b2201f653c62b",
"assets/packages/flutter_iconpicker/fonts/fa-brands-400.ttf": "51d23d1c30deda6f34673e0d5600fd38",
"assets/packages/line_awesome_icons/assets/fonts/icon_font.ttf": "4d42f5f0c62a8f51e876c14575354a6e",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "2aa350bd2aeab88b601a593f793734c0",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "2bca5ec802e40d3f4b60343e346cedde",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "5a37ae808cf9f652198acde612b5328d",
"assets/packages/outline_material_icons/lib/outline_material_icons.ttf": "6b94994fffd9868330d830fcb18a6026",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/assets/internationalization/de.json": "99914b932bd37a50b983c5e7c90ae93b",
"assets/assets/internationalization/en.json": "99914b932bd37a50b983c5e7c90ae93b",
"assets/assets/images/logo_only_black_on_white.jpg": "7eb616b686e367956ddb8f25d62456d8",
"assets/assets/images/logo_only_transparent.png": "308347184434c7c6658112e842a8ea5e",
"assets/assets/images/logo_white_background.jpg": "8113a2fb6f1a00b1b0df60b811d1f98a",
"assets/assets/images/dark_logo_transparent_background.png": "49c29f0954b42c88ce9df8efeb113f29",
"assets/assets/images/white_logo_transparent_background.png": "6851abc0111ba49ee5af1d9dc802f395",
"assets/assets/images/home_background.jpg": "f2b3ec1d5365a7b56e8918b5e0ace7e2",
"assets/assets/images/white_logo_color_background.jpg": "b78657f9c9c0700115e6f3045d66eb47",
"assets/assets/images/white_logo_dark_background.jpg": "c20393c8a9c8a3b2d84a4e3649814e5c",
"assets/assets/images/logo_transparent_background.png": "69b792e5ece74bcdcd29f4f4685023ac",
"assets/assets/images/logo_only_white_transparent.png": "2b25989942250f9ca2a815d1b8e93467",
"assets/assets/images/atem_logo.png": "2cc5c4768461cfe2f9d3c043a2b02e15",
"assets/assets/images/logo.svg": "232ed92e76558585c1a251948d1fcee4",
"assets/assets/images/dark_logo_white_background.jpg": "00e0e88f7469fe7a569501be2a6892f0",
"assets/assets/icons/en.png": "81bce31d4058768d043f99519de6f0d4",
"assets/assets/icons/de.png": "8bbe1959d1b9dbd2fbe378070100041b"
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
