import 'package:animate_gradient/animate_gradient.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:unet/logic/blocs/post_bloc.dart';
import 'package:unet/ui/screens/web_screen.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  bool isLoading = false;
  String? otpCode;
  final focusedBorderColor = Color.fromRGBO(23, 171, 144, 1);
  final fillColor = Color.fromRGBO(243, 246, 249, 0);

  final defaultPinTheme = PinTheme(
    width: 70,
    height: 70,
    textStyle: const TextStyle(
      fontSize: 25,
      // color: Color.fromRGBO(30, 60, 87, 1),
      fontWeight: FontWeight.w600,
    ),
    decoration: BoxDecoration(
      color: Colors.grey,
      borderRadius: BorderRadius.circular(12),
      // border: Border.all(color: Color.fromRGBO(23, 171, 144, 0.4)),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: AnimateGradient(
            primaryColors: const [
              Colors.black87,
              Colors.black45,
              Colors.black54,
            ],
            secondaryColors: const [
              Colors.black38,
              Colors.black54,
              Colors.black87,
            ],
            child: BlocListener<AuthorizationBloc, AuthorizationState>(
              listener: (context, state) {
                state.whenOrNull(
                  loadingAuthorization: () {
                    setState(() => isLoading = true);
                  },
                  contentAuthorization: (summaryAuthorization) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Web();
                    }));
                    Fluttertoast.showToast(
                        msg: 'Успешно', //summaryAuthorization.message ?? '',
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.green[500],
                        textColor: Colors.white,
                        fontSize: 16.0);
                    setState(() => isLoading = false);
                    // BlocProvider.of<AuthorizationBloc>(context)
                    //     .add(AuthorizationEvent.fetchSummaryAuthorization(_username.text, _password.text));
                  },
                  errorAuthorization: (err) {
                    setState(() => isLoading = false);
                    Fluttertoast.showToast(
                        msg: 'Неверный логин или пароль', //err ?? '',
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.TOP,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red[500],
                        textColor: Colors.white,
                        fontSize: 16.0);
                  },
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Form(
                  key: formKey,
                  child: Pinput(
                    controller: pinController,
                    focusNode: focusNode,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    hapticFeedbackType: HapticFeedbackType.lightImpact,
                    length: 4,
                    showCursor: true,
                    autofocus: true,
                    defaultPinTheme: defaultPinTheme,
                    onSubmitted: (value) {
                      otpCode = value;
                      print('wwwwww onSubmitted$value');
                    },
                    onChanged: (value) {
                      debugPrint('каждый раз: $value');
                    },
                    onCompleted: (pin) {
                      debugPrint('в конце: $pin');
                    },
                    cursor: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 9),
                          width: 22,
                          height: 1,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                    focusedPinTheme: defaultPinTheme.copyWith(
                      decoration: defaultPinTheme.decoration!.copyWith(
                        border: Border.all(color: Colors.blue),
                      ),
                    ),
                    submittedPinTheme: defaultPinTheme.copyWith(
                      decoration: defaultPinTheme.decoration!.copyWith(
                        color: Colors.grey.shade400,
                        border: Border.all(color: focusedBorderColor),
                      ),
                    ),
                    errorPinTheme: defaultPinTheme.copyBorderWith(
                      border: Border.all(color: Colors.redAccent),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        floatingActionButton: AnimatedContainer(
          width: double.maxFinite,
          margin: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
            left: 20,
            right: 20,
          ),
          height: 60,
          duration: Duration(milliseconds: 500),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.black45,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15
                      // isKeyboar ? 190 : 15,
                      ),
                )),
            onPressed: () {
              print(otpCode);
              print(pinController.text);
              if (otpCode != null) {
                print(otpCode);
              } else {
                Fluttertoast.showToast(
                    msg: 'Неверный OTP', //err ?? '',
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red[500],
                    textColor: Colors.white,
                    fontSize: 16.0);
              }

              // auth();
            },
            child: Container(
              child: isLoading
                  ? CircularProgressIndicator(
                      color: Colors.white,
                    )
                  : Text(
                      "Войти",
                      style: TextStyle(fontSize: 18),
                    ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
