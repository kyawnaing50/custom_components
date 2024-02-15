import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({
    super.key,
    required this.btnColor,
    required this.borderRadius,
    required this.textColor,
    required this.btnText,
    required this.leftIcon,
    required this.rightIcon,
    required this.voidCall,
    required this.leftIconSize,
    required this.rightIconSize,
  });

  final Color? btnColor;
  final double borderRadius;
  final Color? textColor;
  final String btnText;
  final IconData? leftIcon;
  final IconData? rightIcon;
  final VoidCallback voidCall;
  final double? leftIconSize;
  final double? rightIconSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      alignment: Alignment.center,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(280, 80),
          textStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
              color:
                  btnColor), //Style.buttonTextStyleTextStyle(color: textColor),
          backgroundColor: btnColor,
        ),
        child: leftIcon != null && rightIcon == null
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    leftIcon,
                    color: textColor,
                    size: leftIconSize,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    btnText,
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color:
                            btnColor), //Style.buttonTextStyleTextStyle(color: textColor),
                  ),
                ],
              )
            : leftIcon == null && rightIcon != null
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        btnText,
                        style: Theme.of(context).textTheme.labelMedium!.copyWith(
                            color:
                                btnColor), //Style.buttonTextStyleTextStyle(color: textColor),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Icon(
                        rightIcon,
                        color: Colors.white,
                        size: rightIconSize,
                      ),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        btnText,
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium!
                            .copyWith(color: btnColor),
                      ),
                    ],
                  ),
      ),
    );
  }
}
