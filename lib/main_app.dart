import 'dart:html';

import 'package:polymer/polymer.dart';
import 'incoming.dart';

/// A Polymer `<main-app>` element.
@CustomTag('main-app')
class MainApp extends PolymerElement {

  MainApp.created() : super.created();

  throwSignal() {
    String now = new DateTime.now().toString();
    this.fire("core-signal", detail: {"name": "test-notification", "data": now});

  }

}
