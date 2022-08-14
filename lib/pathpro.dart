import 'dart:io';
import 'package:path_provider/path_provider.dart';

class PathPro {
  Future<String> get pathfile async {
    Directory urlPath = await getApplicationDocumentsDirectory();
    // debugPrint(urlPath.toString());
    return urlPath.path;
  }

  Future<File> get pathCreate async {
    var dosya = await pathfile + "/lang.text";
    // debugPrint(dosya.toString());
    return File(dosya);
  }

  Future<File> pathWrite(String oka) async {
    var dosya = await pathCreate;
    var a = dosya.writeAsString(oka);
    return a;
  }

  Future<String> pathRead() async {
    var dosya = await pathCreate;
    String a = await dosya.readAsString();
    return a;
  }
}
