import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: "http://pokeapi.co/api/v2/pokemon/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/{index}")
  Future<Pokemon> getPokemon(@Path("index") String index);
}

@JsonSerializable()
class Pokemon {
  PokemonImageUrl? sprites;

  Pokemon({this.sprites});

  factory Pokemon.fromJson(Map<String, dynamic> json) =>
      _$PokemonFromJson(json);
  Map<String, dynamic> toJson() => _$PokemonToJson(this);
}

@JsonSerializable()
class PokemonImageUrl {
  String? frontDefault;

  PokemonImageUrl({this.frontDefault});

  factory PokemonImageUrl.fromJson(Map<String, dynamic> json) =>
      _$PokemonImageUrlFromJson(json);
  Map<String, dynamic> toJson() => _$PokemonImageUrlToJson(this);
}
