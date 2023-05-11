import 'package:flutter/material.dart';
import 'package:unet/logic/authorization_provider.dart';
import 'package:unet/logic/blocs/post_bloc.dart';
import 'package:unet/ui/screens/home_screen.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unet/ui/screens/otp_screen.dart';

void main() async{
    WidgetsFlutterBinding.ensureInitialized();
  Hive.init((await getApplicationDocumentsDirectory()).path);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<AuthorizationBloc>(
          create: (context) => AuthorizationBloc(AuthorizationProvider()),
          child: OtpScreen()),
    );
  }
}


