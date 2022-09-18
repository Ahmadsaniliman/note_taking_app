import 'package:flutter/material.dart';
import 'package:note_taking_app/routes/route.dart';
import 'package:note_taking_app/ui/CreateAccount/create_aacount.dart';
import 'package:note_taking_app/ui/CreateAccount/forgot_password.dart';
import 'package:note_taking_app/ui/CreateAccount/login_account.dart';
import 'package:note_taking_app/ui/CreateAccount/verify_email.dart';
import 'package:note_taking_app/ui/Home/home.dart';
import 'package:note_taking_app/ui/Note/note.dart';
import 'package:note_taking_app/ui/Note/recent_note.dart';
import 'package:note_taking_app/ui/Premium/premium.dart';
import 'package:note_taking_app/ui/profile/profile.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Note Taking App',
      theme: ThemeData(),
      home: const HomePage(),
      routes: {
        createAccountRoute: (context) => const CreateAccountView(),
        premiumViewRoute: (context) => const PremiumSubscriptionView(),
        noteViewRoute: (context) => const NoteView(),
        recentViewRoute: (context) => const RecentNoteView(),
        profileViewRoute: (context) => const ProfileView(),
        loginViewRoute: (context) => const LoginView(),
        verifyEmailViewRoute: (context) => const VerifyEmailView(),
        forgotPasswordViewRoute: (context) => const ForgotPasswordView(),
      },
    );
  }
}
