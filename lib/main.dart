import 'package:csinetagan/firebase_options.dart';
import 'package:csinetagan/pages/bantuan_page.dart';
import 'package:csinetagan/pages/list_chatting_page.dart';
import 'package:csinetagan/pages/sign_in_page.dart';
import 'package:csinetagan/pages/splash_screen.dart';
import 'package:d_session/d_session.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffEFEFF0),
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: FutureBuilder(
        future: DSession.getUser(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          }
          if (snapshot.data == null) return const SplashScreen();
          return const ListChattingPage();
        },
      ),
      routes: {
        '/signin': (context) => const SignInPage(),
        '/list-chatting-page': (context) => const ListChattingPage(),
        '/bantuan': (context) {
          Map data = ModalRoute.of(context)!.settings.arguments as Map;
          String uid = data['uid'];
          String userName = data['userName'];
          return BantuanPage(
            uid: uid,
            userName: userName,
          );
        },
      },
    );
  }
}
