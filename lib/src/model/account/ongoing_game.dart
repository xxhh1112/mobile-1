import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartchess/dartchess.dart';

import 'package:lichess_mobile/src/model/common/id.dart';
import 'package:lichess_mobile/src/model/common/perf.dart';
import 'package:lichess_mobile/src/model/common/speed.dart';
import 'package:lichess_mobile/src/model/user/user.dart';

part 'ongoing_game.freezed.dart';

@freezed
class OngoingGame with _$OngoingGame {
  factory OngoingGame({
    required GameFullId fullId,
    required Side orientation,
    required String fen,
    required Perf perf,
    required Speed speed,
    required LightUser opponent,
    Move? lastMove,
    int? secondsLeft,
  }) = _OngoingGame;
}
