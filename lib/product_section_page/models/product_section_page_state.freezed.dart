// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_section_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductSectionPageState {
// required List<bool> isFavourite,
// required List<bool> isBasket,
  List<List<bool>> get isFavourite => throw _privateConstructorUsedError;
  List<List<bool>> get isBasket => throw _privateConstructorUsedError;
  int get selectedIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductSectionPageStateCopyWith<ProductSectionPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductSectionPageStateCopyWith<$Res> {
  factory $ProductSectionPageStateCopyWith(ProductSectionPageState value,
          $Res Function(ProductSectionPageState) then) =
      _$ProductSectionPageStateCopyWithImpl<$Res, ProductSectionPageState>;
  @useResult
  $Res call(
      {List<List<bool>> isFavourite,
      List<List<bool>> isBasket,
      int selectedIndex});
}

/// @nodoc
class _$ProductSectionPageStateCopyWithImpl<$Res,
        $Val extends ProductSectionPageState>
    implements $ProductSectionPageStateCopyWith<$Res> {
  _$ProductSectionPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFavourite = null,
    Object? isBasket = null,
    Object? selectedIndex = null,
  }) {
    return _then(_value.copyWith(
      isFavourite: null == isFavourite
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as List<List<bool>>,
      isBasket: null == isBasket
          ? _value.isBasket
          : isBasket // ignore: cast_nullable_to_non_nullable
              as List<List<bool>>,
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductSectionPageStateCopyWith<$Res>
    implements $ProductSectionPageStateCopyWith<$Res> {
  factory _$$_ProductSectionPageStateCopyWith(_$_ProductSectionPageState value,
          $Res Function(_$_ProductSectionPageState) then) =
      __$$_ProductSectionPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<List<bool>> isFavourite,
      List<List<bool>> isBasket,
      int selectedIndex});
}

/// @nodoc
class __$$_ProductSectionPageStateCopyWithImpl<$Res>
    extends _$ProductSectionPageStateCopyWithImpl<$Res,
        _$_ProductSectionPageState>
    implements _$$_ProductSectionPageStateCopyWith<$Res> {
  __$$_ProductSectionPageStateCopyWithImpl(_$_ProductSectionPageState _value,
      $Res Function(_$_ProductSectionPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFavourite = null,
    Object? isBasket = null,
    Object? selectedIndex = null,
  }) {
    return _then(_$_ProductSectionPageState(
      isFavourite: null == isFavourite
          ? _value._isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as List<List<bool>>,
      isBasket: null == isBasket
          ? _value._isBasket
          : isBasket // ignore: cast_nullable_to_non_nullable
              as List<List<bool>>,
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ProductSectionPageState implements _ProductSectionPageState {
  const _$_ProductSectionPageState(
      {required final List<List<bool>> isFavourite,
      required final List<List<bool>> isBasket,
      required this.selectedIndex})
      : _isFavourite = isFavourite,
        _isBasket = isBasket;

// required List<bool> isFavourite,
// required List<bool> isBasket,
  final List<List<bool>> _isFavourite;
// required List<bool> isFavourite,
// required List<bool> isBasket,
  @override
  List<List<bool>> get isFavourite {
    if (_isFavourite is EqualUnmodifiableListView) return _isFavourite;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_isFavourite);
  }

  final List<List<bool>> _isBasket;
  @override
  List<List<bool>> get isBasket {
    if (_isBasket is EqualUnmodifiableListView) return _isBasket;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_isBasket);
  }

  @override
  final int selectedIndex;

  @override
  String toString() {
    return 'ProductSectionPageState(isFavourite: $isFavourite, isBasket: $isBasket, selectedIndex: $selectedIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductSectionPageState &&
            const DeepCollectionEquality()
                .equals(other._isFavourite, _isFavourite) &&
            const DeepCollectionEquality().equals(other._isBasket, _isBasket) &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_isFavourite),
      const DeepCollectionEquality().hash(_isBasket),
      selectedIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductSectionPageStateCopyWith<_$_ProductSectionPageState>
      get copyWith =>
          __$$_ProductSectionPageStateCopyWithImpl<_$_ProductSectionPageState>(
              this, _$identity);
}

abstract class _ProductSectionPageState implements ProductSectionPageState {
  const factory _ProductSectionPageState(
      {required final List<List<bool>> isFavourite,
      required final List<List<bool>> isBasket,
      required final int selectedIndex}) = _$_ProductSectionPageState;

  @override // required List<bool> isFavourite,
// required List<bool> isBasket,
  List<List<bool>> get isFavourite;
  @override
  List<List<bool>> get isBasket;
  @override
  int get selectedIndex;
  @override
  @JsonKey(ignore: true)
  _$$_ProductSectionPageStateCopyWith<_$_ProductSectionPageState>
      get copyWith => throw _privateConstructorUsedError;
}
