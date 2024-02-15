import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

import '../Buttons/custom_button.dart';

class PhoneTextWidget extends StatelessWidget {
  PhoneTextWidget({super.key});
  final TextEditingController countryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 208,
            width: double.infinity,
            // color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Enter your Phone Number",
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: Colors.white,
                      ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "We will send you the 6 digit verification code.",
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: Colors.white,
                      ),
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
                      height: 48,
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
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 48,
                      width: 200,
                      decoration: BoxDecoration(
                        // color: Colors.green,
                        border: Border.all(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
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
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 1, 12, 1),
                  child: CustomButtom(
                    btnColor: Colors.green,
                    borderRadius: 16,
                    textColor: Colors.white,
                    btnText: "Next",
                    leftIcon: null,
                    rightIcon: null,
                    voidCall: () {},
                    leftIconSize: null,
                    rightIconSize: null,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(6, 1, 10, 1),
            child: Center(
              child: Text(
                "By Signing up, you agree to our Terms and Conditions and Privacy Policy.",
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: Colors.white,
                    ),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
