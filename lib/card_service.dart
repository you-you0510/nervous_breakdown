import 'dart:math';

import 'package:nervousbreakdown/play_card.dart';

class CardService {
  static Map<int, PlayCard> select(int cardCount) {
    List<PlayCard> cards = List<PlayCard>();

    for (int index = 0; index < cardCount; index++) {
      //重複しないようにurlを生成
      String url = _generateUrl();

      while (cards.firstWhere((card) => card.location == url,
              orElse: () => null) !=
          null) {
        url = _generateUrl();
      }

      //ペアにするため、２枚追加
      cards.add(PlayCard(location: url));
      cards.add(PlayCard(location: url));
    }

    cards.shuffle();
    Map<int, PlayCard> ret = Map<int, PlayCard>();
    for (int index = 0; index < cards.length; index++) {
      ret[index] = cards[index];
    }

    return ret;
  }

  static String _generateUrl() {
    final String urlBase = "https://www.tbs.co.jp/NIGEHAJI_tbs/gallery/img/";
    //各話と画像数のMap
    final Map<int, int> chapterMap = {
      1: 31,
      2: 20,
      3: 28,
      4: 16,
      5: 20,
      6: 24,
      7: 24,
      8: 20,
      9: 20,
      10: 24,
      11: 28
    };

    //1話～11話
    int chapter = _getRandomInt(1, 11);

    //画像番号
    int imageCount = chapterMap[chapter];
    int imgNo = _getRandomInt(1, imageCount);

    //ex:https://www.tbs.co.jp/NIGEHAJI_tbs/gallery/img/g01_01.jpg
    String newUrl = urlBase +
        "g" +
        chapter.toString().padLeft(2, "0") +
        "_" +
        imgNo.toString().padLeft(2, "0") +
        ".jpg";

    return newUrl;
  }

  static int _getRandomInt(int min, int max) {
    Random rnd = new Random();
    int result = min + rnd.nextInt(max + 1 - min);

    return result;
  }
}
