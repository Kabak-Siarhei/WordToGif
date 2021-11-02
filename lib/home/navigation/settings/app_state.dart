import 'package:flutter/material.dart';
import 'package:word_to_gif/home/navigation/settings/page_configuration.dart';

enum PageState { none, pop, replaceAll, replace, push, setPath }

class PageAction {
  PageState state;
  PageConfiguration? page;
  Widget? widget;

  PageAction({this.state = PageState.none, this.page, this.widget});
}

class AppState extends ChangeNotifier {
  PageAction _currentAction = PageAction();
  PageAction get currentAction => _currentAction;
  set currentAction(PageAction action) {
    _currentAction = action;
    notifyListeners();
  }

  void resetCurrentAction() {
    _currentAction = PageAction();
  }

  void openGifCard() {
    _currentAction =
        PageAction(state: PageState.replaceAll, page: gifPageConfig);
    notifyListeners();
  }
  
  void closeGifCard() {
    _currentAction =
        PageAction(state: PageState.replaceAll, page: homePageConfig);
    notifyListeners();
  }
}
