
@HtmlImport('search_element.html')
library dev_meetings_sample.search;

import 'dart:html';

import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart';
import 'package:dev_meetings_sample/product_element.dart';
import 'package:dev_meetings_sample/seeker_element.dart';
import 'package:polymer_elements/iron_ajax.dart';


@PolymerRegister('search-element')
class SearchElement extends PolymerElement {

  SearchElement.created() : super.created();

  @property
  List<Map> products;

  @Property(observer: 'searchProducts')
  String hay;

  @reflectable
  void getProducts(event, data)
  {
    var response = data.parseResponse();
    print(response);
    notifyPath("products", response);
  }

  @reflectable
  void searchProducts(newHay, _)
  {
    IronAjax ajax = querySelector("#findProducts");

    print(hay);
    ajax.params = {"hay": newHay};

    ajax.generateRequest();
  }

  /*@reflectable
  productsPrint(event, data){
    var response = data.parseResponse();
    //response.forEach(printElement);
    }

  printElement(element){
    print(element);
  }*/

}