@HtmlImport('premium_element.html')
library dev_meetings_sample.premium;

import 'dart:html';

import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart';


@PolymerRegister('premium-element')
class PremiumElement extends PolymerElement {

  /// Constructor used to create instance of MainApp.
  PremiumElement.created() : super.created();

@property
List<Map> products;

@reflectable
productsAll(event, data){
  var response = data.parseResponse();
  notifyPath("products", response);
}

}