import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inside_1/presentation/resources/color_manager.dart';
import 'package:inside_1/presentation/resources/string_manager.dart';
import 'package:inside_1/presentation/resources/value_manager.dart';

import '../resources/route_manager.dart';

class SignupView extends StatelessWidget {
  const SignupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: AppSize.s20,
              ),
              Text(
                AppStrings.createYourAccount,
                style: Theme.of(context).textTheme.displaySmall,
              ),
              const SizedBox(height: AppSize.s4),
              Text(
                AppStrings.createText,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: ColorManager.gray8,
                ),
              ),
              const SizedBox(height: AppSize.s24),
              Text(
                AppStrings.emailText,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: ColorManager.gray12,
                ),
              ),
              TextFormField(
                decoration:
                const InputDecoration(labelText: AppStrings.emailSubText),
              ),
              const SizedBox(height: AppSize.s16),
              Text(
                AppStrings.passwordText,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: ColorManager.gray12,
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: AppStrings.passwordSubText),
              ),
              const SizedBox(height: AppSize.s16),

              //check box here and not created

              const SizedBox(height: AppSize.s20),
              ElevatedButton(
                  onPressed: () {}, child: const Text(AppStrings.createAccount)),
              const SizedBox(height: AppSize.s28),

              // i don't know how to make a text a link i.e the signup text

              Center(
                child: RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: ColorManager.gray12,
                    ),
                    children: [
                      /// TODO Complete the next line
                      TextSpan(text: AppStrings.already),

                      TextSpan(
                        text: AppStrings.signIn,
                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: ColorManager.secondary,
                          ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            GoRouter.of(context).pushNamed(
                              AppPageRouteName.login,
                            );
                          },
                      ),
                    ],
                  ),
                  textScaleFactor: MediaQuery.of(context).textScaleFactor,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
