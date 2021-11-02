import 'package:word_to_gif/home/navigation/settings/app_state.dart';

const String GifPath = '/gif';
const String HomePath = '/home';

enum Pages { Gif, Home }

class PageConfiguration {
  final String key;
  final String path;
  final Pages uiPage;
  PageAction? currentPageAction;

  PageConfiguration(
      {required this.key,
      required this.path,
      required this.uiPage,
      required this.currentPageAction});
}

PageConfiguration gifPageConfig = PageConfiguration(
    key: 'Gif', path: GifPath, uiPage: Pages.Gif, currentPageAction: null);
PageConfiguration homePageConfig = PageConfiguration(
    key: 'Home', path: HomePath, uiPage: Pages.Home, currentPageAction: null);
