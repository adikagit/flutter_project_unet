import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unet/logic/blocs/post_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:unet/ui/screens/web_screen.dart';
import 'package:unet/ui/widget/img_widget.dart';
import 'package:animate_gradient/animate_gradient.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double boxHeight = 60;
  double boxWidth = 400;

  bool isLoading = false;
  bool isLoggedIn = false;

  late TextEditingController _username;
  late TextEditingController _password;

  final _formKey = GlobalKey<FormState>();
  bool _passwordVisible = true;
  @override
  void initState() {
    super.initState();
    _username = TextEditingController();
    _password = TextEditingController();
  }

  bool _isLoading = true;

  void auth() {
    _isLoading;
    if (_formKey.currentState!.validate()) {
      BlocProvider.of<AuthorizationBloc>(context).add(
          AuthorizationEvent.fetchSummaryAuthorization(
              _username.text, _password.text));
      // print("${_username.text} ${_password.text}");
      // print("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
    } else {
      // print("бббббббббббббббббббббббббббббббббббббббббб");
    }
  }

  Widget aaa() {
    return FloatingActionButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: Icon(
        Icons.arrow_forward,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isKeyboar = MediaQuery.of(context).viewInsets.bottom != 0;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
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
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        if (!isKeyboar) ImgWidget(),
                        SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                TextFormField(
                                  controller: _username,
                                  cursorColor: Colors.white,
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.9)),
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.person_outlined,
                                        color: Colors.white70,
                                      ),
                                      labelText: 'Введите логин',
                                      labelStyle: TextStyle(
                                          color: Colors.white.withOpacity(0.9)),
                                      filled: true,
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.never,
                                      fillColor: Colors.white.withOpacity(0.3),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                              width: 0,
                                              style: BorderStyle.none))),
                                  keyboardType: TextInputType.emailAddress,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Введите логин';
                                    }
                                    return null;
                                  },
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                TextFormField(
                                  controller: _password,
                                  obscureText: _passwordVisible,
                                  cursorColor: Colors.white,
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.9)),
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.lock_outline,
                                        color: Colors.white70,
                                      ),
                                      suffixIcon: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _passwordVisible =
                                                !_passwordVisible;
                                          });
                                        },
                                        child: Icon(_passwordVisible
                                            ? Icons.visibility
                                            : Icons.visibility_off),
                                      ),
                                      labelText: 'Введите пароль',
                                      labelStyle: TextStyle(
                                          color: Colors.white.withOpacity(0.9)),
                                      filled: true,
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.never,
                                      fillColor: Colors.white.withOpacity(0.3),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                              width: 0,
                                              style: BorderStyle.none))),
                                  keyboardType: TextInputType.visiblePassword,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Введите пароль';
                                    }
                                    return null;
                                  },
                                ),                               
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
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
                  borderRadius: BorderRadius.circular(
                    isKeyboar ? 190 : 15,
                  ),
                )),
            onPressed: () async {
              auth();
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
