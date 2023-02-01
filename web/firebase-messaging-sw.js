importScripts("https://www.gstatic.com/firebasejs/8.10.0/firebase-app.js");
importScripts("https://www.gstatic.com/firebasejs/8.10.0/firebase-messaging.js");

firebase.initializeApp({
    apiKey: 'AIzaSyBSUKNw2Ykh-hhjPy4MsFJMWVMd1ghuYGI',
    appId: '1:670924580558:web:78430f9283c9b5b275529f',
    messagingSenderId: '670924580558',
    projectId: 'secret-fire',
    authDomain: 'secret-fire.firebaseapp.com',
    storageBucket: 'secret-fire.appspot.com',
    measurementId: 'G-6H8ZSW5P86',
});

const messaging = firebase.messaging();

// Optional:
messaging.onBackgroundMessage((message) => {
    console.log("onBackgroundMessage", message);
});