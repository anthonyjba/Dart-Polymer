
@HtmlImport('product_element.html')
library dev_meetings_sample.product;

import 'dart:html';

import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart';

import 'package:polymer_elements/iron_ajax.dart';

@PolymerRegister('product-element')
class ProductElement extends PolymerElement {

  /// Constructor used to create instance of MainApp.
  ProductElement.created() : super.created();
 
  @property
  Map product;


  @reflectable
  productAddCart(event, _)
  {
    IronAjax ajax = querySelector("#productAddCart");

    ajax.params = {"value": 1};

    ajax.generateRequest();
  }

}