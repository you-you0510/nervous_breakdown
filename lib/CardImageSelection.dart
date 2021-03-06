import 'dart:io';
import 'package:file_picker/file_picker.dart';

class CardImageSelection {

  /*
  * 選択したファイル（単数）を返す
  */
  static Future<File> selectedImageFile() async {
    return await FilePicker.getFile();
  }

  /*
  * 選択したファイル（複数）を返す(※)リストには選択順に格納されている
  */
  static Future<List<File>> selectedImageFiles() async {
    var files = await FilePicker.getMultiFile(type: FileType.image);
    if(files == null) {return new List<File>();}
    return files;
  }

  /*
  * 選択したファイル（単数）のパスを返す（※）未使用
  */
  static Future<String> selectedImagePath() async {
    final file = await FilePicker.getFile();
    return file.path;
  }

  /*
  * 選択したファイル（複数）のパスを返す（※）未使用
  */
  static Future<Map<String, String>> selectedImagesPath() async {
    final Map<String, String> filePaths = await FilePicker.getMultiFilePath(type: FileType.image);
    return filePaths;
  }
}