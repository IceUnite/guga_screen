// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfilePageState {
  String get phoneNumber => throw _privateConstructorUsedError;
  String get userAdress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfilePageStateCopyWith<ProfilePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfilePageStateCopyWith<$Res> {
  factory $ProfilePageStateCopyWith(
          ProfilePageState value, $Res Function(ProfilePageState) then) =
      _$ProfilePageStateCopyWithImpl<$Res, ProfilePageState>;
  @useResult
  $Res call({String phoneNumber, String userAdress});
}

/// @nodoc
class _$ProfilePageStateCopyWithImpl<$Res, $Val extends ProfilePageState>
    implements $ProfilePageStateCopyWith<$Res> {
  _$ProfilePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? userAdress = null,
  }) {
    return _then(_value.copyWith(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      userAdress: null == userAdress
          ? _value.userAdress
          : userAdress // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfilePageStateCopyWith<$Res>
    implements $ProfilePageStateCopyWith<$Res> {
  factory _$$_ProfilePageStateCopyWith(
          _$_ProfilePageState value, $Res Function(_$_ProfilePageState) then) =
      __$$_ProfilePageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber, String userAdress});
}

/// @nodoc
class __$$_ProfilePageStateCopyWithImpl<$Res>
    extends _$ProfilePageStateCopyWithImpl<$Res, _$_ProfilePageState>
    implements _$$_ProfilePageStateCopyWith<$Res> {
  __$$_ProfilePageStateCopyWithImpl(
      _$_ProfilePageState _value, $Res Function(_$_ProfilePageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? userAdress = null,
  }) {
    return _then(_$_ProfilePageState(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      userAdress: null == userAdress
          ? _value.userAdress
          : userAdress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ProfilePageState implements _ProfilePageState {
  const _$_ProfilePageState(
      {required this.phoneNumber, required this.userAdress});

  @override
  final String phoneNumber;
  @override
  final String userAdress;

  @override
  String toString() {
    return 'ProfilePageState(phoneNumber: $phoneNumber, userAdress: $userAdress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfilePageState &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.userAdress, userAdress) ||
                other.userAdress == userAdress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, userAdress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfilePageStateCopyWith<_$_ProfilePageState> get copyWith =>
      __$$_ProfilePageStateCopyWithImpl<_$_ProfilePageState>(this, _$identity);
}

abstract class _ProfilePageState implements ProfilePageState {
  const factory _ProfilePageState(
      {required final String phoneNumber,
      required final String userAdress}) = _$_ProfilePageState;

  @override
  String get phoneNumber;
  @override
  String get userAdress;
  @override
  @JsonKey(ignore: true)
  _$$_ProfilePageStateCopyWith<_$_ProfilePageState> get copyWith =>
      throw _privateConstructorUsedError;
}
