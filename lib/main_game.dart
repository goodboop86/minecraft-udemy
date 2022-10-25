import 'dart:math';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flame/parallax.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class MainGame extends FlameGame {
  // onLoad: 初期化が終わるまで待つ
  @override
  Future<void> onLoad() async {
    add(PlayerComponent());
  }
}

/// Sprite: レンダリングされる画像領域
/// SpriteComponent: レンダリング、スケール、移動回転するコンポーネント
class PlayerComponent extends SpriteComponent {
  @override
  Future<void> onLoad() async {
    super.onLoad();
    sprite =
        await Sprite.load("sprite_sheets/player/player_idle_sprite_sheet.png");
  }

  /// Playerコンポーネントをdtごとに更新する
  @override
  void update(double dt) {
    super.update(dt);
    // dtごとにpositionへ移動させる
    //position.x += 10;
  }

  /// Playerコンポーネントをリサイズする
  @override
  void onGameResize(Vector2 newScrreenSize) {
    super.onGameResize(newScrreenSize);
    size = newScrreenSize / 10;
  }
}
