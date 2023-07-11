import 'package:flutter/cupertino.dart';
import 'package:inside_1/app/di.dart';
import 'package:inside_1/data/network/failure.dart';
import 'package:inside_1/domain/provider/connectivity.dart';
import 'package:inside_1/domain/use_case/sign_out_use_case.dart';
import 'package:inside_1/presentation/base/base_view_model.dart';
import 'package:inside_1/presentation/common/state_renderer/state_renderer.dart';
import 'package:inside_1/presentation/common/state_renderer/state_renderer_impl.dart';

class ProfileViewModel extends BaseViewModel with ProfileViewModelInputs, ProfileViewModelOutputs {
  final SignOutUseCase _signOutUseCase;

  ProfileViewModel(this._signOutUseCase);

  @override
  signOut() async {
    if (await instance<ConnectivityState>().isConnected) {
      (await _signOutUseCase.execute(null))
          .fold((failure) => _failureCatcher(failure), (success) => debugPrint(success.message));
    }}


  _failureCatcher(Failure failure) {
    debugPrint(failure.message);
    if (failure.message == 'Check your internet connection') {
      setCurrentState(ContentState(
          stateRendererType: StateRendererType.fullScreenContentState));
    } else {
      setCurrentState(ContentState(
          stateRendererType: StateRendererType.fullScreenContentState));
    }
  }
}

mixin ProfileViewModelInputs {
  signOut();
}

mixin ProfileViewModelOutputs {

}