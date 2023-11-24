import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:investment/const/app_colors.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57.h,
      child: TextFormField(
          controller: controller,
          keyboardType: TextInputType.emailAddress,
          // autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (value) {
            String patttern = r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$';
            RegExp regExp = RegExp(patttern);
            if (value!.isEmpty) {
              return 'Check & Retype your E-mail';
            } else if (!regExp.hasMatch(value)) {
              return "Email must be a-z and A-Z";
            } else {
              return null;
            }
          },
          decoration: const InputDecoration(
              hintText: 'Enter your E-mail',
              hintStyle: TextStyle(color: AppColors.smallTextclr),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 1.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 1.0),
              ),
              // border: OutlineInputBorder(
              //     borderSide: BorderSide(color: Colors.blue, width: 1.0)),
              prefixIcon: Icon(
                Icons.email_outlined,
                color: Colors.green,
              ))),
    );
  }
}
class ReferCodeTextField extends StatelessWidget {
  const ReferCodeTextField({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57.h,
      child: TextFormField(
          controller: controller,
          keyboardType: TextInputType.emailAddress,
          // autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (value) {
            if(value!.isEmpty){
              return 'Your referrel code is empty';
            }else if(value.length!=6){
              return 'code must be 6 characters';
            }
          },
          decoration: const InputDecoration(
              hintText: 'Enter your Referral Code',
              hintStyle: TextStyle(color: AppColors.smallTextclr),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 1.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 1.0),
              ),
              // border: OutlineInputBorder(
              //     borderSide: BorderSide(color: Colors.blue, width: 1.0)),

              prefixIcon: Icon(
                Icons.person_2_sharp,
                color: Colors.green,
              ))),
    );
  }
}

class PasswordTextFeild extends StatefulWidget {
  PasswordTextFeild({super.key, required this.controller});
  final TextEditingController controller;

  @override
  State<PasswordTextFeild> createState() => _PasswordTextFeildState();
}

class _PasswordTextFeildState extends State<PasswordTextFeild> {
  bool isTap = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57.h,
      child: TextFormField(
        controller: widget.controller,
        obscureText: !isTap,
        validator: (pass) {
          if (pass!.isEmpty) {
            return 'Check & Retype your password';
          } else if (pass!.length < 6) {
            return 'Password must be at least 6 characters';
          }
        },
        decoration: InputDecoration(
            hintText: 'Enter your Password',
            hintStyle: const TextStyle(color: AppColors.smallTextclr),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 1.0),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 1.0),
            ),
            
            prefixIcon: const Icon(
              Icons.lock,
              color: Colors.green,
            ),
            suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    isTap = !isTap;
                  });
                },
                child: isTap
                    ? const Icon(
                        Icons.visibility,
                        color: Colors.grey,
                      )
                    : const Icon(
                        Icons.visibility_off,
                        color: Colors.grey,
                      ))),
      ),
    );
  }
}
