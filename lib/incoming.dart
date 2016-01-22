@HtmlImport('incoming.html')
library incoming;

import 'package:polymer/polymer.dart';
import 'package:core_elements/core_signals.dart';

import 'dart:async';
import 'dart:html';

@CustomTag('incoming-signal')
class IncomingSignal extends PolymerElement {

  @observable String incomingSignal = "";

  IncomingSignal.created() : super.created();

  @override
  void attached() {
    super.attached();
  }

  testNotificationSignal(Event e, var detail, Node sender) {
    String now = new DateTime.now().toString();
    incomingSignal = "Received: ${now} -- Thrown: ${detail}";
  }

}