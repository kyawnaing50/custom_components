import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';

import '../WIDGETS/Buttons/custom_button.dart';
import '../WIDGETS/DrawerWidget/drawer_widget.dart';
import '../WIDGETS/Responsive/my_responsive_schema.dart';

class MyCountryCodePage extends StatelessWidget {
  MyCountryCodePage({super.key});
  final TextEditingController countryController = TextEditingController();
  Logger log = Logger();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: Colors.green,
      appBar: AppBar(
        title: const Text("Phone with Country Code "),
        centerTitle: true,
      ),
      body: MyResponsiveSchema(
        mobile: Padding(
          padding: const EdgeInsets.fromLTRB(24, 10, 20, 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 88,
                width: double.infinity,
                // color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Enter your Phone Number", style: TextStyle()),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "We will send you the 6 digit verification code.",
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
                height: 128,
                width: double.infinity,
                // color: Colors.amber,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.blueAccent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const CountryCodePicker(
                            onChanged: print,
                            initialSelection: 'MM',
                            favorite: ['+95', 'MM'],
                            showCountryOnly: false,
                            flagWidth: 30,
                            showOnlyCountryWhenClosed: false,
                            alignLeft: false,
                            hideSearch: true,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 50,
                          width: 200,
                          decoration: BoxDecoration(
                            // color: Colors.green,
                            // border: Border.all(color: Colors.blueAccent),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: "Phone Number",
                              hintStyle: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              )),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                // borderSide: const BorderSide(
                                //     color: Colors.black, width: 1),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                // borderSide: const BorderSide(
                                //     color: Colors.black, width: 1),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    CustomButtom(
                      btnColor: Colors.blue,
                      borderRadius: 16,
                      textColor: Colors.white,
                      btnText: "Next",
                      leftIcon: null,
                      rightIcon: null,
                      voidCall: () {
                        // Navigator.pushNamed(context, TechLearnRoutes.otp);
                      },
                      leftIconSize: null,
                      rightIconSize: null,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Center(
                child: Text.rich(
                  TextSpan(text: "By Signing up, you agree to our ", children: [
                    TextSpan(
                        text: "Terms and Conditions",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => log.i("terms and conditions"),
                        style: const TextStyle(color: Colors.blue)),
                    const TextSpan(
                      text: " and ",
                    ),
                    TextSpan(
                      text: "Privacy Policy.",
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => log.i("Privacy Policy"),
                      style: const TextStyle(color: Colors.blue),
                    ),
                  ]),
                  style: TextStyle(),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
        tablet: Container(),
        desktop: Container(),
      ),
      drawer: const CustomDrawer(),
        
        
    );
  }
}
