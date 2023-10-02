import 'dart:async';

import '../../domain/model.dart';
import '../base/baseviewmodel.dart';
import '../resources/assets_manager.dart';
import '../resources/strings_manager.dart';

class OnBoardingViewModel extends BaseViewModel
    with OnBoardingViewModelInputs, OnBoardingViewModelOutputs {
  final StreamController _streamController =
      StreamController<SliderViewObject>();

  late List<SliderObject> _list;
  int _currentIndex = 0;

  @override
  void dispose() {
    _streamController.close();
  }

  @override
  void start() {
    _list = _getSliderData();
    _postDataToView();
  }

  @override
  void goNext() {
    int nextIndex = _currentIndex++;
    if (nextIndex >= _list.length) {
      _currentIndex = 0;
    }
    _postDataToView();
  }

  @override
  void goPrevious() {
    int previousIndex = _currentIndex--;
    if (previousIndex == -1) {
      _currentIndex = _list.length - 1;
    }
    _postDataToView();
  }

  @override
  void onPageChange(int index) {
    _currentIndex = index;
    _postDataToView();
  }

  @override
  // TODO: implement inputSliderViewObject
  Sink get inputSliderViewObject => _streamController.sink;

  @override
  // TODO: implement outputSliderViewObject
  Stream<SliderViewObject> get outputSliderViewObject =>
      _streamController.stream.map((sliderViewObject) => sliderViewObject);

  List<SliderObject> _getSliderData() => [
        SliderObject(AppStrings.onBoardingTile1, AppStrings.onBoardingSubTile1,
            ImageAssets.onBoardingLogo1),
        SliderObject(AppStrings.onBoardingTile2, AppStrings.onBoardingSubTile2,
            ImageAssets.onBoardingLogo2),
        SliderObject(AppStrings.onBoardingTile3, AppStrings.onBoardingSubTile3,
            ImageAssets.onBoardingLogo3),
        SliderObject(AppStrings.onBoardingTile4, AppStrings.onBoardingSubTile4,
            ImageAssets.onBoardingLogo4),
      ];
  _postDataToView() {
    inputSliderViewObject.add(
        SliderViewObject(_list[_currentIndex], _list.length, _currentIndex));
  }
}

//
mixin OnBoardingViewModelInputs {
  void goNext();
  void goPrevious();
  void onPageChange(int index);

  Sink get inputSliderViewObject;
}

mixin OnBoardingViewModelOutputs {
  Stream<SliderViewObject> get outputSliderViewObject;
}

class SliderViewObject {
  SliderObject sliderObject;
  int numOfSlides;
  int currentIndex;

  SliderViewObject(this.sliderObject, this.numOfSlides, this.currentIndex);
}
