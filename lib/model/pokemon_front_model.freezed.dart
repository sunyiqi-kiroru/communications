// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_front_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonFrontModel _$PokemonFrontModelFromJson(Map<String, dynamic> json) {
  return _PokemonFrontModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonFrontModel {
  String get front_default => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonFrontModelCopyWith<PokemonFrontModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonFrontModelCopyWith<$Res> {
  factory $PokemonFrontModelCopyWith(
          PokemonFrontModel value, $Res Function(PokemonFrontModel) then) =
      _$PokemonFrontModelCopyWithImpl<$Res, PokemonFrontModel>;
  @useResult
  $Res call({String front_default});
}

/// @nodoc
class _$PokemonFrontModelCopyWithImpl<$Res, $Val extends PokemonFrontModel>
    implements $PokemonFrontModelCopyWith<$Res> {
  _$PokemonFrontModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? front_default = null,
  }) {
    return _then(_value.copyWith(
      front_default: null == front_default
          ? _value.front_default
          : front_default // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PokemonFrontModelCopyWith<$Res>
    implements $PokemonFrontModelCopyWith<$Res> {
  factory _$$_PokemonFrontModelCopyWith(_$_PokemonFrontModel value,
          $Res Function(_$_PokemonFrontModel) then) =
      __$$_PokemonFrontModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String front_default});
}

/// @nodoc
class __$$_PokemonFrontModelCopyWithImpl<$Res>
    extends _$PokemonFrontModelCopyWithImpl<$Res, _$_PokemonFrontModel>
    implements _$$_PokemonFrontModelCopyWith<$Res> {
  __$$_PokemonFrontModelCopyWithImpl(
      _$_PokemonFrontModel _value, $Res Function(_$_PokemonFrontModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? front_default = null,
  }) {
    return _then(_$_PokemonFrontModel(
      front_default: null == front_default
          ? _value.front_default
          : front_default // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonFrontModel implements _PokemonFrontModel {
  const _$_PokemonFrontModel({required this.front_default});

  factory _$_PokemonFrontModel.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonFrontModelFromJson(json);

  @override
  final String front_default;

  @override
  String toString() {
    return 'PokemonFrontModel(front_default: $front_default)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonFrontModel &&
            (identical(other.front_default, front_default) ||
                other.front_default == front_default));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, front_default);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonFrontModelCopyWith<_$_PokemonFrontModel> get copyWith =>
      __$$_PokemonFrontModelCopyWithImpl<_$_PokemonFrontModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonFrontModelToJson(
      this,
    );
  }
}

abstract class _PokemonFrontModel implements PokemonFrontModel {
  const factory _PokemonFrontModel({required final String front_default}) =
      _$_PokemonFrontModel;

  factory _PokemonFrontModel.fromJson(Map<String, dynamic> json) =
      _$_PokemonFrontModel.fromJson;

  @override
  String get front_default;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonFrontModelCopyWith<_$_PokemonFrontModel> get copyWith =>
      throw _privateConstructorUsedError;
}
