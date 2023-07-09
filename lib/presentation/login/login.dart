import 'package:flutter/material.dart';
import 'package:inside_1/presentation/resources/color_manager.dart';
import 'package:inside_1/presentation/resources/string_manager.dart';
import 'package:inside_1/presentation/resources/value_manager.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

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
                AppStrings.signIntoYourAccount,
                style: Theme.of(context).textTheme.displaySmall,
              ),
              const SizedBox(height: AppSize.s4),
              Text(
                AppStrings.loginText,
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
              const SizedBox(height: AppSize.s20),
              ElevatedButton(
                  onPressed: () {}, child: const Text(AppStrings.signIn)),
              const SizedBox(height: AppSize.s16),
              Center(
                child: Text(
                  AppStrings.forgot,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: ColorManager.gray12,
                      ),
                ),
              ),
              const SizedBox(height: AppSize.s20),
              Center(
                child: Text(
                  AppStrings.doYou,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: ColorManager.gray12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
