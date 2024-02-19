import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:my_components/CONFIG/constant.dart';
import 'package:my_components/WIDGETS/DrawerWidget/drawer_widget.dart';
import 'package:otp_autofill/otp_autofill.dart';
import 'package:pinput/pinput.dart';
import 'Buttons/custom_button.dart';

class OTPPage extends StatefulWidget {
  const OTPPage({Key? key}) : super(key: key);

  @override
  State<OTPPage> createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
  Logger log = Logger();
  final _pinController = TextEditingController();
  final _focusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();
  late Timer _timer;
  int _remain = 10;
  int _isComplete = 0;
  late OTPTextEditController controller;
  late OTPInteractor _otpInteractor;
  
@override
  void initState() {
    super.initState();
    _startTimer();
    _isComplete = 0;
    _initInteractor();
    controller = OTPTextEditController(
      codeLength: 5,
      //ignore: avoid_print
      onCodeReceive: (code) => print('Your Application receive code - $code'),
      otpInteractor: _otpInteractor,
    )..startListenUserConsent(
        (code) {
          final exp = RegExp(r'(\d{6})');
          return exp.stringMatch(code ?? '') ?? '';
        },
        strategies: [
          SampleStrategy(),
        ],
      );
  }


  void _startTimer() {
    const onSec = Duration(seconds: 1);
    _timer = Timer.periodic(onSec, (Timer timer) {
      if (_remain == 0) {
        _cancelTimer();
      } else {
        setState(() {
          _remain--;
        });
      }
    });
  }

  void _cancelTimer() {
    if (_timer.isActive) {
      _timer.cancel();
    }
  }
  Future<void> _initInteractor() async {
    _otpInteractor = OTPInteractor();

    // You can receive your app signature by using this method.
    final appSignature = await _otpInteractor.getAppSignature();

    if (kDebugMode) {
      print('Your app signature: $appSignature');
    }
  }
  @override
  void dispose() {
    _cancelTimer();
    _pinController.dispose();
    _focusNode.dispose();
    controller.stopListen();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    /// Optionally you can use form to validate the Pinput
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get OTP"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 88,
                width: double.infinity,
                // color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("OTP Verification", style: TextStyle()),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Enter the 6 digit code (OTP) sent to 09123456789.",
                      style: TextStyle(),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              SizedBox(
                height: 180,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PinputMethod(),
                    _isComplete != 1
                        ? CustomButtom(
                            btnColor: Colors.blue.withOpacity(0.1),
                            borderRadius: 100,
                            textColor: Colors.white,
                            btnText: "Confirm",
                            leftIcon: null,
                            rightIcon: null,
                            voidCall: () {},
                            leftIconSize: null,
                            rightIconSize: null,
                          )
                        : CustomButtom(
                            btnColor: Colors.blueAccent,
                            borderRadius: 100,
                            textColor: Colors.white,
                            btnText: "Confirm",
                            leftIcon: null,
                            rightIcon: null,
                            voidCall: () {},
                            leftIconSize: null,
                            rightIconSize: null,
                          ),
                    _remain != 0
                        ? Column(
                            children: [
                              Text.rich(
                                TextSpan(
                                  text: "Resend again in ",
                                  children: [
                                    TextSpan(
                                        text: "$_remain",
                                        style: const TextStyle(
                                            color: Colors.blue, fontSize: 14)),
                                    const TextSpan(text: " seconds")
                                  ],
                                ),
                                style: const TextStyle(),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          )
                        : Column(
                            children: [
                              Text.rich(
                                TextSpan(
                                  text: "Don't have code?  ",
                                  children: [
                                    TextSpan(
                                      text: "Resend",
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () => setState(() {
                                              _remain = 10;
                                              _startTimer();
                                            }),
                                      style:
                                          const TextStyle(color: Colors.blue),
                                    ),
                                  ],
                                ),
                                style: TextStyle(),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: const CustomDrawer(),
    );
  }

  // ignore: non_constant_identifier_names
  Directionality PinputMethod() {
    return Directionality(
      // Specify direction if desired
      textDirection: TextDirection.ltr,
      child: Pinput(
        length: 6,
        controller: controller,
        focusNode: _focusNode,
        androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsRetrieverApi,
        listenForMultipleSmsOnAndroid: true,
        defaultPinTheme: AppStore.defaultPinTheme,
        separatorBuilder: (index) => const SizedBox(width: 6),
        validator: (value) {
          return value == '123456' ? null : 'Invalid code';
        },
        // onClipboardFound: (value) {
        //   debugPrint('onClipboardFound: $value');
        //   pinController.setText(value);
        // },
        hapticFeedbackType: HapticFeedbackType.lightImpact,
        onCompleted: (pin) {
          debugPrint('onCompleted: $pin');
          setState(() {
            _isComplete = 1;
          });
          //Api Call
          // Next Page
        },
        onChanged: (value) {
          debugPrint('onChanged: $value');
        },
        cursor: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 9),
              width: 22,
              height: 1,
              color: Colors.yellow,
            ),
          ],
        ),
        focusedPinTheme: AppStore.defaultPinTheme.copyWith(
          decoration: AppStore.defaultPinTheme.decoration!.copyWith(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey),
          ),
        ),
        submittedPinTheme: AppStore.defaultPinTheme.copyWith(
          decoration: AppStore.defaultPinTheme.decoration!.copyWith(
            color: Colors.red,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.black),
          ),
        ),
        errorPinTheme: AppStore.defaultPinTheme.copyBorderWith(
          border: Border.all(color: Colors.redAccent),
        ),
      ),
    );
  }
}


class SampleStrategy extends OTPStrategy {
  @override
  Future<String> listenForCode() {
    return Future.delayed(
      const Duration(seconds: 4),
      () => 'Your code is 123456',
    );
  }
}
