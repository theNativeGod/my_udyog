import 'package:flutter/material.dart';

class ScrollProvider with ChangeNotifier {
  ScrollController _controller = ScrollController();
  GlobalKey _heroKey = GlobalKey();
  GlobalKey _featureKey = GlobalKey();
  GlobalKey _marketKey = GlobalKey();
  GlobalKey _plansKey = GlobalKey();
  GlobalKey _downloadKey = GlobalKey();

  get heroKey => _heroKey;
  get controller => _controller;
  get featureKey => _featureKey;
  get marketKey => _marketKey;
  get plansKey => _plansKey;
  get downloadKey => _downloadKey;
}
