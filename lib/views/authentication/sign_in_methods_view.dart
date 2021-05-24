import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mixnote/widgets/WavyImage.dart';
import 'package:mixnote/widgets/text.dart';
import 'package:mdi/mdi.dart';
import 'package:mixnote/views/authentication/view_models/sign_in_methods_view_model.dart';

class SignInMethodsView extends StatefulWidget {
  _SignInMethodsViewState createState() => _SignInMethodsViewState();
}

class _SignInMethodsViewState extends State<SignInMethodsView> {
  SignInMethodsViewModel signInMethodsViewModel = SignInMethodsViewModel();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.black,
            child: OrientationBuilder(builder: (context, orientation) {
              if (orientation == Orientation.landscape) {
                return _landscapeMode();
              }
              return _portraitMode();
            })));
  }

  Widget _landscapeMode() {
    var _imageWidth = MediaQuery.of(context).size.width;
    var _buttonsWidth = _imageWidth;

    _imageWidth = _imageWidth <= 640 ? _imageWidth * .45 : _imageWidth * .6;
    _buttonsWidth =
    _buttonsWidth <= 640 ? _buttonsWidth * .6 : _buttonsWidth * .35;
    return Flex(
      mainAxisSize: MainAxisSize.max,
      direction: Axis.horizontal,
      children: [
        Container(
            constraints: BoxConstraints(
              maxWidth: _imageWidth,
            ),
            child: Stack(
              children: [
                WavyImageHorizontal(
                  child: Image.asset(
                    'assets/emblems/kauye_logo.jpg',
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.height,
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 30,
                  child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          KText.button('Skip'),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                          )
                        ],
                      )),
                )
              ],
            )),
        Container(
          constraints: BoxConstraints(
            maxWidth: _buttonsWidth,
          ),
          margin: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
          child: Column(
            children: [
              ..._buttons(landscape: true),
            ],
          ),
        ),
      ],
    );
  }

  Widget _portraitMode() {
    return Column(
      children: [
        Container(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height / 1.5,
            ),
            child: Stack(
              children: [
                WavyImage(
                  child: Image.asset('assets/emblems/kauye_logo.jpg',
                      fit: BoxFit.cover),
                ),
                Positioned(
                  top: 40,
                  right: 15,
                  child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          KText.button('Skip'),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                          )
                        ],
                      )),
                )
              ],
            )),
        Spacer(),
        ..._buttons(),
      ],
    );
  }

  List<Widget> _buttons({bool landscape = false}) {
    var _width = MediaQuery.of(context).size.width;
    _width = _width <= 640 && landscape ? _width * .5 : _width * .8;
    return [
      Container(
          height: 50,
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue),
            borderRadius: BorderRadius.circular(10),
          ),
          constraints: BoxConstraints(maxWidth: _width),
          child: Material(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              onTap: () {
                signInMethodsViewModel.toLogin();
              },
              child: TextButton(
                  onPressed: null,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Mdi.email,
                        color: Color(0xFF0582FD),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      KText.button('Login With Email', color: Colors.white70),
                    ],
                  )),
            ),
          )),
      SizedBox(
        height: 15,
      ),
      Container(
          height: 50,
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue),
            borderRadius: BorderRadius.circular(10),
          ),
          constraints: BoxConstraints(maxWidth: _width),
          child: Material(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              onTap: () {},
              child: TextButton(
                  onPressed: null,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Mdi.google,
                        color: Colors.redAccent,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      KText.button('Continue With Google',
                          color: Colors.white70),
                    ],
                  )),
            ),
          )),
      Container(
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue),
            borderRadius: BorderRadius.circular(10),
          ),
          constraints: BoxConstraints(maxWidth: _width),
          child: Material(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              onTap: () {},
              child: TextButton(
                  onPressed: null,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Mdi.facebook,
                        color: Color(0xFF0272DC),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      KText.button('Continue With Facebook',
                          color: Colors.white70),
                    ],
                  )),
            ),
          )),
      Spacer(),
      Container(
          height: 50,
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue),
            borderRadius: BorderRadius.circular(10),
          ),
          constraints: BoxConstraints(maxWidth: _width),
          child: Material(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              onTap: () {},
              child: TextButton(
                  onPressed: signInMethodsViewModel.toSignUp(),
                  child: Container(
                    constraints: BoxConstraints(maxWidth: _width),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        KText.button('Don\'t have an account',
                            color: Colors.white70),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.lightBlue,
                        ),
                      ],
                    ),
                  )),
            ),
          )),
    ];
  }
}
