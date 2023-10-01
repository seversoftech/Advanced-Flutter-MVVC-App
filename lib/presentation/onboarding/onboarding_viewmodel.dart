import '../base/baseviewmodel.dart';

class OnBoardingViewModel extends BaseViewModel {
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
abstract class OnBoardingViewModelInputs {
  void goNext();
  void goPrevious();
  void onPageChange(int index);
}

abstract class OnBoardingViewModelOutputs {}
