import 'package:qanchoy/qanchoy.dart';

class QanchoyParser {
  final String inputJson;

  QanchoyParser(this.inputJson);

  List<Page> parse() {
    Debugger.log("Parsing started");

    final pages = <Page>[Page(path: '',title: "Demo Page", description: "This is a demo", body: [])];

    Debugger.log("Parsing finished: ${pages.length} pages found");
    return pages;
  }
}
