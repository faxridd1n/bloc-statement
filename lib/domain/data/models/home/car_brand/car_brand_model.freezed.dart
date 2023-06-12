// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_brand_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CarbrandModel _$CarbrandModelFromJson(Map<String, dynamic> json) {
  return _CarbrandModel.fromJson(json);
}

/// @nodoc
mixin _$CarbrandModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarbrandModelCopyWith<CarbrandModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarbrandModelCopyWith<$Res> {
  factory $CarbrandModelCopyWith(
          CarbrandModel value, $Res Function(CarbrandModel) then) =
      _$CarbrandModelCopyWithImpl<$Res, CarbrandModel>;
  @useResult
  $Res call({int? id, String? name, String? logo});
}

/// @nodoc
class _$CarbrandModelCopyWithImpl<$Res, $Val extends CarbrandModel>
    implements $CarbrandModelCopyWith<$Res> {
  _$CarbrandModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? logo = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CarbrandModelCopyWith<$Res>
    implements $CarbrandModelCopyWith<$Res> {
  factory _$$_CarbrandModelCopyWith(
          _$_CarbrandModel value, $Res Function(_$_CarbrandModel) then) =
      __$$_CarbrandModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? logo});
}

/// @nodoc
class __$$_CarbrandModelCopyWithImpl<$Res>
    extends _$CarbrandModelCopyWithImpl<$Res, _$_CarbrandModel>
    implements _$$_CarbrandModelCopyWith<$Res> {
  __$$_CarbrandModelCopyWithImpl(
      _$_CarbrandModel _value, $Res Function(_$_CarbrandModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? logo = freezed,
  }) {
    return _then(_$_CarbrandModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CarbrandModel implements _CarbrandModel {
  const _$_CarbrandModel({this.id, this.name, this.logo});

  factory _$_CarbrandModel.fromJson(Map<String, dynamic> json) =>
      _$$_CarbrandModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? logo;

  @override
  String toString() {
    return 'CarbrandModel(id: $id, name: $name, logo: $logo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarbrandModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logo, logo) || other.logo == logo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, logo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarbrandModelCopyWith<_$_CarbrandModel> get copyWith =>
      __$$_CarbrandModelCopyWithImpl<_$_CarbrandModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CarbrandModelToJson(
      this,
    );
  }
}

abstract class _CarbrandModel implements CarbrandModel {
  const factory _CarbrandModel(
      {final int? id,
      final String? name,
      final String? logo}) = _$_CarbrandModel;

  factory _CarbrandModel.fromJson(Map<String, dynamic> json) =
      _$_CarbrandModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get logo;
  @override
  @JsonKey(ignore: true)
  _$$_CarbrandModelCopyWith<_$_CarbrandModel> get copyWith =>
      throw _privateConstructorUsedError;
}
