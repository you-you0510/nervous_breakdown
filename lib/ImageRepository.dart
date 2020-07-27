
import 'dart:io';

import 'package:path_provider/path_provider.dart';

class ImageRepository {

  static Future<List<String>> allImageFilePaths() async {
    Directory dir = await imageDir();
    return _filePathListByDir(dir);
  }

  static Future<Directory> imageDir() async {

    // TODO:OS毎に取得先変更

    Directory exDir = await getExternalStorageDirectory();
    final delimiter = "/";


    // TODO:とりあえず、picturesから取得することにした
    final imageDirName = "pictures";
    String path = exDir.path + delimiter + imageDirName;

    return new Directory(path);
  }

  static List<String> _filePathListByDir(Directory dir, {bool recursive: false}){
    assert(dir != null);
    assert(dir.existsSync());

    var paths = new List<String>();
    dir.listSync(recursive: recursive)
        .toList()
        .forEach(
            (e) {if(FileSystemEntity.isFileSync(e.path)) paths.add(e.path);}
    );
    return paths;
  }
}
