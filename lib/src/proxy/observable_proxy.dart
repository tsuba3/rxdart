@Js('Rx')
library rx.observable_proxy;

import 'dart:html';

import 'promise_proxy.dart';

import 'package:js/js.dart';

@Js()
class Observable {
  
  @Js()
  external Observable();
  
  @Js('combineLatest')
  external static combineLatest(Observable o1, Observable o2);
  
  @Js('from')
  external static Observable from(List elements);
  
  @Js('fromEvent')
  external static Observable fromEvent(Element element, String event);
  
  @Js('fromPromise')
  external static Observable fromPromise(Promise promise);
  
  @Js('range')
  external static Observable range(int start, int count);
  
  /*@Js("iterable")
  external List get iterable;
  
  @Js("mapper")
  external Mapper get mapper;
  
  @Js("scheduler")
  external Scheduler get scheduler;*/
  
  @Js('bufferWithCount')
  external bufferWithCount(int count, int skip);
  
  @Js('debounce')
  external debounce(dynamic value);
  
  @Js('filter')
  external filter(dynamic predicate(dynamic value, int index, Observable target));
  
  @Js('flatMap')
  external flatMap(dynamic selector(dynamic value, int index, Observable target));
  
  @Js('flatMapLatest')
  external flatMapLatest(dynamic selector(dynamic value, int index, Observable target));
  
  @Js('map')
  external map(dynamic selector(dynamic value, int index, Observable target));
  
  @Js('partition')
  external partition(dynamic predicate(dynamic value, int index, Observable target));
  
  @Js('windowWithCount')
  external windowWithCount(int count, int skip);
  
  @Js('subscribe')
  external subscribe(dynamic handlerOrObserver, [void onError(error), void onCompleted()]);
  
}