import 'package:communications/model/pokemon_front_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 生成されるdartファイルを記述
part 'pokemon_model.freezed.dart';
part 'pokemon_model.g.dart';

// freezedでコード生成するために「@freezed」を記述
@freezed
class PokemonModel with _$PokemonModel {
  // withの後には「_$[class name]」の形式で記述

  // プロパティを指定
  const factory PokemonModel({
    required PokemonFrontModel sprites,
  }) = _PokemonModel;

  // json形式で受け取るためのコードを生成するために記述
  factory PokemonModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonModelFromJson(json);
}
