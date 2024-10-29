import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

@GenerateNiceMocks([MockSpec<Foo>()])
import 'repromockito_test.mocks.dart';

class Bar {}

class BaseFoo<T> {
  BaseFoo(this.t);
  final T t;
}

class Foo extends BaseFoo<(Bar, Bar)> {
  Foo() : super((Bar(), Bar()));
}
