'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "fe2521d3af974283da666dafc7c30886",
"assets/AssetManifest.bin.json": "1b3bc9976d5596c8a6db49d5462a81dc",
"assets/AssetManifest.json": "9ef798e947f51fbffc26fe10f838decc",
"assets/assets/image/avatar/Me.jpg": "504ee87ca41bbc75acbc5dceefb17b4a",
"assets/assets/image/avatar/Zlo.jpg": "fed2d7b4cfd287b6bb0a9fc5753c775b",
"assets/assets/image/project/Preview_DominoCircovelCircoDomino.jpg": "d75c653a353bdad90b17022fd4003681",
"assets/assets/image/project/Preview_ExitExist.jpg": "8a2a489a8ec20e7a27e51cfd78e0afbf",
"assets/assets/image/project/Preview_QuasarisCo.jpg": "457dcbf6284b72c2d07b9042e9e923a4",
"assets/assets/image/project/Preview_ROOTS.jpg": "7936793a11f89db34765a0635dd43aa7",
"assets/assets/image/project/Screenshot_DominoCircovelCircoDomino_0.jpg": "84bad31e68b24944544f567f39d3f6dc",
"assets/assets/image/project/Screenshot_DominoCircovelCircoDomino_1.jpg": "f267aa3156dbd99ed7621d017521a791",
"assets/assets/image/project/Screenshot_DominoCircovelCircoDomino_2.jpg": "8dcd845099098d65021376f0f68708f4",
"assets/assets/image/project/Screenshot_DominoCircovelCircoDomino_3.jpg": "c8d853b7bec961cc776cd28c5a39f872",
"assets/assets/image/project/Screenshot_DominoCircovelCircoDomino_4.jpg": "2891cc288662e89c2b8c552671edfa07",
"assets/assets/image/project/Screenshot_ExitExist_0.jpg": "f3433401b6807bc3e03679e855c5c65b",
"assets/assets/image/project/Screenshot_ExitExist_1.jpg": "92f00686057b4f921aa833ca95768ee0",
"assets/assets/image/project/Screenshot_ExitExist_2.jpg": "a92d25c5b0cc5b5c79e3835ae7c93517",
"assets/assets/image/project/Screenshot_QuasarisCo_0.jpg": "c6d3f6d1290a1ef844d3acb0c821a085",
"assets/assets/image/project/Screenshot_QuasarisCo_1.jpg": "301a1bad52a2734e9e87f5bd48bf2e4e",
"assets/assets/image/project/Screenshot_QuasarisCo_2.jpg": "aea351a4577d224d214e1ec4818076de",
"assets/assets/image/project/Screenshot_QuasarisCo_3.jpg": "2a6409e50470424cb92c11816eaedc17",
"assets/assets/image/project/Screenshot_ROOTS_0.jpg": "d00e946035f7a61353bdfc1194468770",
"assets/assets/image/project/Screenshot_ROOTS_1.jpg": "9142ead186e42864a25c09b8e7080597",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "12ce341ae90c985ee244bab5611cd341",
"assets/NOTICES": "7f673730900047942f728fe9f06d3f75",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "728b2d477d9b8c14593d4f9b82b484f3",
"canvaskit/canvaskit.js.symbols": "bdcd3835edf8586b6d6edfce8749fb77",
"canvaskit/canvaskit.wasm": "7a3f4ae7d65fc1de6a6e7ddd3224bc93",
"canvaskit/chromium/canvaskit.js": "8191e843020c832c9cf8852a4b909d4c",
"canvaskit/chromium/canvaskit.js.symbols": "b61b5f4673c9698029fa0a746a9ad581",
"canvaskit/chromium/canvaskit.wasm": "f504de372e31c8031018a9ec0a9ef5f0",
"canvaskit/skwasm.js": "ea559890a088fe28b4ddf70e17e60052",
"canvaskit/skwasm.js.symbols": "e72c79950c8a8483d826a7f0560573a1",
"canvaskit/skwasm.wasm": "39dd80367a4e71582d234948adc521c0",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "83d881c1dbb6d6bcd6b42e274605b69c",
"flutter_bootstrap.js": "f82e14e46a594047f61d3393ecee049e",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "3e46a422eb292cbfb362e99272de6c05",
"/": "3e46a422eb292cbfb362e99272de6c05",
"main.dart.js": "2a1e645e599cf3e0777b8f1087c5965a",
"manifest.json": "51d77700a2b690a1471328d51b31907f",
"version.json": "9c9c5d072af6709ed54a9b91bd433401"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
