import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:word_to_gif/home/home.dart';
import 'package:word_to_gif/home/navigation/settings/app_state.dart';
import 'package:word_to_gif/home/navigation/router/ui_page.dart';
import 'package:word_to_gif/home/navigation/settings/page_configuration.dart';
import 'package:word_to_gif/home/navigation/ui/gif_card.dart';

class GifRouterDelegate extends RouterDelegate<PageConfiguration>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<PageConfiguration> {
  //List pages in stack navigation
  final List<Page> _pages = [];
  final AppState appState;
  @override
  final GlobalKey<NavigatorState> navigatorKey;

  GifRouterDelegate(this.appState) : navigatorKey = GlobalKey() {
    appState.addListener(() {
      notifyListeners();
    });
  }

  List<MaterialPage> get pages => List.unmodifiable(_pages);
  int numPages() => _pages.length;

  @override
  PageConfiguration get currentConfiguration =>
      _pages.last.arguments as PageConfiguration;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      onPopPage: _onPopPage,
      pages: buildPages(),
    );
  }

  //remove pages
  bool _onPopPage(Route<dynamic> route, result) {
    final didPop = route.didPop(result);
    if (!didPop) {
      return false;
    }
    if (_pages.length > 1) {
      pop();
      return true;
    } else {
      return false;
    }
  }

  //remove page from stack navigation
  void _removePage(MaterialPage page) {
    _pages.remove(page);
  }

  //removes the last page, i.e the top-most page of the app, and replaces it with the new page using the add method
  void replace(PageConfiguration newRoute) {
    if (_pages.isNotEmpty) {
      _pages.removeLast();
    }
    addPage(newRoute);
  }

  //clears the entire navigation stack, i.e. the _pages list, and adds all the new pages provided as the argument
  void setPath(List<MaterialPage> path) {
    _pages.clear();
    _pages.addAll(path);
  }

  //
  void replaceAll(PageConfiguration newRoute) {
    setNewRoutePath(newRoute);
  }

  //pop() and popRoute() can remove page in the list if list have two and more element
  void pop() {
    if (_pages.length > 1) {
      _removePage(_pages.last as MaterialPage);
    }
  }

  @override
  Future<bool> popRoute() {
    if (_pages.length > 1) {
      _removePage(_pages.last as MaterialPage);
      return Future.value(true);
    }
    return Future.value(false);
  }

  MaterialPage _createPage(Widget child, PageConfiguration pageConfig) {
    return MaterialPage(
        child: child,
        key: ValueKey(pageConfig.key),
        name: pageConfig.path,
        arguments: pageConfig);
  }

  void _addPageData(Widget child, PageConfiguration pageConfig) {
    _pages.add(
      _createPage(child, pageConfig),
    );
  }

  void addPage(PageConfiguration pageConfig) {
    //Decides whether to add a new page.
    //The second condition ensures the same page isn’t added twice by mistake.
    final shouldAddPage = _pages.isEmpty ||
        (_pages.last.arguments as PageConfiguration).uiPage !=
            pageConfig.uiPage;

    if (shouldAddPage) {
      switch (pageConfig.uiPage) {
        case Pages.Gif:
          _addPageData(GifPage(), gifPageConfig);
          break;
        case Pages.Home:
          _addPageData(HomePage(), homePageConfig);
          break;
      }
    }
  }

  @override
  Future<void> setNewRoutePath(PageConfiguration configuration) {
    // TODO: implement setNewRoutePath
    throw UnimplementedError();
  }

  buildPages() {}
}
