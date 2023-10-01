import '../base/baseviewmodel.dart';

class OnBoardingViewModel extends BaseViewModel
    with OnBoardingViewModelInputs, OnBoardingViewModelOutputs {
  @override
  void dispose() {
    //TODO: implement dispose...
  }

  @override
  void start() {
    //TODO: implement start...
  }

  @override
  void goNext() {
    // TODO: implement goNext
  }

  @override
  void goPrevious() {
    // TODO: implement goPrevious
  }

  @override
  void onPageChange(int index) {
    // TODO: implement onPageChange
  }
}

//
mixin OnBoardingViewModelInputs {
  void goNext();
  void goPrevious();
  void onPageChange(int index);
}

mixin OnBoardingViewModelOutputs {}
