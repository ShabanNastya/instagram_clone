import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/main.dart';

const firebaseConfig = {
  'apiKey': "AIzaSyAkFI7Gno0h2rTT2zQbaGrPIcrl2FO320A",
  'authDomain': "feed-chat-80bd6.firebaseapp.com",
  'projectId': "feed-chat-80bd6",
  'storageBucket': "feed-chat-80bd6.appspot.com",
  'messagingSenderId': "649987328931",
  'appId': "1:649987328931:web:c3ad116fca4b24a96e6816",
  'measurementId': "G-MVNS5D312D"
};

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions.fromMap(firebaseConfig),
  );
  await initDependencies();
  runApp(
    DevicePreview(
      builder: (BuildContext context) {
        return MyAppProvider();
      },
    ),
  );
}
