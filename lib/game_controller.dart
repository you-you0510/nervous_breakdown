import 'package:nervousbreakdown/card_service.dart';
import 'package:nervousbreakdown/game_state.dart';
import 'package:nervousbreakdown/play_card.dart';
import 'package:nervousbreakdown/player.dart';
import 'package:state_notifier/state_notifier.dart';

enum GameResult {
  Matched,
  Unmatched,
  Continue,
}

class GameController extends StateNotifier<GameState> with LocatorMixin {
  GameController() : super(const GameState()) {
    return;
  }

  @override
  void initState() {
    super.initState();
  }

  Future<Map<int, PlayCard>> selectCards(int cardCount) async {
    Future<Map<int, PlayCard>> cards = CardService.select(cardCount);

    cards.then((value) => state = state.copyWith(playCards: value));

    return cards;
  }

  String get gameTitle {
    return '逃げ恥神経衰弱';
  }

  Map<int, PlayCard> get playCards {
    return state.playCards;
  }

  void addPlayer(String playerName) {
    List<Player> newPlayers = state.players.toList()
      ..add(Player(name: playerName));
    state = state.copyWith(players: newPlayers);
  }

  Player findPlayer(String playerName) {
    return state.players.firstWhere((element) => element.name == playerName);
  }

  void startGame() {
    Player player = state.players.first;
    state = state.copyWith(currentPlayer: player);
  }

  GameResult openCard(int index) {
    PlayCard ret;

    //カードの状態をOpen状態、再Open不可にしてリストをコピー
    Map<int, PlayCard> cards = state.playCards.map((key, value) {
      if (key == index) {
        ret = value.copyWith(isFlipped: true, isLocked: true);
        return MapEntry(key, ret);
      }
      return MapEntry(key, value);
    });

    //カード一覧の状態更新
    state = state.copyWith(playCards: cards);

    if (state.firstCard == null) {
      state = state.copyWith(firstCard: ret);
    } else {
      state = state.copyWith(secondCard: ret);
    }

    return _validate();
  }

  GameResult _validate() {
    bool isMatched;

    if (state.secondCard == null) {
      return GameResult.Continue;
    }

    if (state.firstCard.path == state.secondCard.path) {
      isMatched = true;
    } else {
      isMatched = false;
    }

    if (isMatched) {
      return GameResult.Matched;
    } else {
      return GameResult.Unmatched;
    }
  }

  void next() {
    if (state.firstCard.path == state.secondCard.path) {
      //TODO: playerのmyPlayCardsにfirstCard,SecondCardを追加してstate更新
      //player = state.currentPlayer.copyWith(myPlayCards: )
      //List<Player> newPlayers = state.players.toList()
      //  ..add(Player(name: playerName));
      //state = state.copyWith(players: newPlayers);

      state = state.copyWith(firstCard: null, secondCard: null);
    } else {
      Map<int, PlayCard> cards = state.playCards.map((key, value) {
        //一枚目の状態変更
        if (value == state.firstCard) {
          return MapEntry(
              key, value.copyWith(isFlipped: false, isLocked: false));
        }
        return MapEntry(key, value);
      }).map((key, value) {
        //二枚目の状態変更
        if (value == state.secondCard) {
          return MapEntry(
              key, value.copyWith(isFlipped: false, isLocked: false));
        }
        return MapEntry(key, value);
      });

      //カード一覧の状態更新
      state = state.copyWith(playCards: cards);

      //TODO: currentPlayerを次プレイヤーに変更
    }

    state = state.copyWith(firstCard: null, secondCard: null);
  }
}
