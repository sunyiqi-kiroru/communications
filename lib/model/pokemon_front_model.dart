import 'package:freezed_annotation/freezed_annotation.dart';

// 生成されるdartファイルを記述
part 'pokemon_front_model.freezed.dart';
part 'pokemon_front_model.g.dart';

// freezedでコード生成するために「@freezed」を記述
@freezed
class PokemonFrontModel with _$PokemonFrontModel {
  // withの後には「_$[class name]」の形式で記述

  // プロパティを指定
  const factory PokemonFrontModel({
    required String front_default,
  }) = _PokemonFrontModel;

  // json形式で受け取るためのコードを生成するために記述
  factory PokemonFrontModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonFrontModelFromJson(json);
}
