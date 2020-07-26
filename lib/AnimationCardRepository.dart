import 'dart:io';

import 'package:flutter/material.dart';

import 'AnimationCard.dart';
import 'ImageRepository.dart';

class AnimationCardRepository {

  Future<int> count() async {
    List<File> allImages = await _allImageFiles();
    return allImages.length;
  }

  Future<List<AnimationCard>> drawAtRandom(int count) async {
    if(count < 0) { throw new Error();}

    // Imageフォルダ配下の全ファイル取得
    List<File> allImages = await _allImageFiles();

    // 取得枚数が最大枚数超過はエラー
    if(count > allImages.length) { throw new Error();}

    // ランダムで絞り込み
    var filteredImages = _selectAtRandom(allImages, count);

    // カード生成
    return _createCardsFromFiles(filteredImages);
  }

  Future<List<File>> _allImageFiles() async {
    Directory dir = await ImageRepository.imageDir();
    return _fileListByDir(dir);
  }

  List<AnimationCard> _createCardsFromFiles(List<File> imageFiles) {
    assert(imageFiles != null);

    var cards = new List<AnimationCard>();
    imageFiles.forEach((f) {
      var card = AnimationCard(Image.file(f));
      cards.add(card);
    });
    return cards;
  }

  List<File> _selectAtRandom(List<File> files, int count){
    assert(files != null);
    assert(files.length >= count);

    List<File> clone = []..addAll(files);
    clone.shuffle();
    return clone.sublist(0, count);
  }

  List<File> _fileListByDir(Directory dir, {bool recursive: false}){
    assert(dir != null);
    assert(dir.existsSync());

    var files = new List<File>();
    dir.listSync(recursive: recursive)
        .toList()
        .forEach(
            (e) {if(FileSystemEntity.isFileSync(e.path)) files.add(e);}
    );
    return files;
  }
}