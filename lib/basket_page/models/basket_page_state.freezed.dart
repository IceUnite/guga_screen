// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basket_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BasketPageState {
  int get price => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  int get totalPrice => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BasketPageStateCopyWith<BasketPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketPageStateCopyWith<$Res> {
  factory $BasketPageStateCopyWith(
          BasketPageState value, $Res Function(BasketPageState) then) =
      _$BasketPageStateCopyWithImpl<$Res, BasketPageState>;
  @useResult
  $Res call({int price, int count, int totalPrice});
}

/// @nodoc
class _$BasketPageStateCopyWithImpl<$Res, $Val extends BasketPageState>
    implements $BasketPageStateCopyWith<$Res> {
  _$BasketPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? count = null,
    Object? totalPrice = null,
  }) {
    return _then(_value.copyWith(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BasketPageStateCopyWith<$Res>
    implements $BasketPageStateCopyWith<$Res> {
  factory _$$_BasketPageStateCopyWith(
          _$_BasketPageState value, $Res Function(_$_BasketPageState) then) =
      __$$_BasketPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int price, int count, int totalPrice});
}

/// @nodoc
class __$$_BasketPageStateCopyWithImpl<$Res>
    extends _$BasketPageStateCopyWithImpl<$Res, _$_BasketPageState>
    implements _$$_BasketPageStateCopyWith<$Res> {
  __$$_BasketPageStateCopyWithImpl(
      _$_BasketPageState _value, $Res Function(_$_BasketPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? count = null,
    Object? totalPrice = null,
  }) {
    return _then(_$_BasketPageState(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_BasketPageState implements _BasketPageState {
  const _$_BasketPageState(
      {required this.price, required this.count, required this.totalPrice});

  @override
  final int price;
  @override
  final int count;
  @override
  final int totalPrice;

  @override
  String toString() {
    return 'BasketPageState(price: $price, count: $count, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BasketPageState &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice));
  }

  @override
  int get hashCode => Object.hash(runtimeType, price, count, totalPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BasketPageStateCopyWith<_$_BasketPageState> get copyWith =>
      __$$_BasketPageStateCopyWithImpl<_$_BasketPageState>(this, _$identity);
}

abstract class _BasketPageState implements BasketPageState {
  const factory _BasketPageState(
      {required final int price,
      required final int count,
      required final int totalPrice}) = _$_BasketPageState;

  @override
  int get price;
  @override
  int get count;
  @override
  int get totalPrice;
  @override
  @JsonKey(ignore: true)
  _$$_BasketPageStateCopyWith<_$_BasketPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
