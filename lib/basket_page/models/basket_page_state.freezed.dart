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
  List<bool> get isFavourite => throw _privateConstructorUsedError;
  List<bool> get isTrash => throw _privateConstructorUsedError;
  int get selectedIndex => throw _privateConstructorUsedError;

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
  $Res call({List<bool> isFavourite, List<bool> isTrash, int selectedIndex});
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
    Object? isFavourite = null,
    Object? isTrash = null,
    Object? selectedIndex = null,
  }) {
    return _then(_value.copyWith(
      isFavourite: null == isFavourite
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      isTrash: null == isTrash
          ? _value.isTrash
          : isTrash // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
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
  $Res call({List<bool> isFavourite, List<bool> isTrash, int selectedIndex});
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
    Object? isFavourite = null,
    Object? isTrash = null,
    Object? selectedIndex = null,
  }) {
    return _then(_$_BasketPageState(
      isFavourite: null == isFavourite
          ? _value._isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      isTrash: null == isTrash
          ? _value._isTrash
          : isTrash // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_BasketPageState implements _BasketPageState {
  const _$_BasketPageState(
      {required final List<bool> isFavourite,
      required final List<bool> isTrash,
      required this.selectedIndex})
      : _isFavourite = isFavourite,
        _isTrash = isTrash;

  final List<bool> _isFavourite;
  @override
  List<bool> get isFavourite {
    if (_isFavourite is EqualUnmodifiableListView) return _isFavourite;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_isFavourite);
  }

  final List<bool> _isTrash;
  @override
  List<bool> get isTrash {
    if (_isTrash is EqualUnmodifiableListView) return _isTrash;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_isTrash);
  }

  @override
  final int selectedIndex;

  @override
  String toString() {
    return 'BasketPageState(isFavourite: $isFavourite, isTrash: $isTrash, selectedIndex: $selectedIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BasketPageState &&
            const DeepCollectionEquality()
                .equals(other._isFavourite, _isFavourite) &&
            const DeepCollectionEquality().equals(other._isTrash, _isTrash) &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_isFavourite),
      const DeepCollectionEquality().hash(_isTrash),
      selectedIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BasketPageStateCopyWith<_$_BasketPageState> get copyWith =>
      __$$_BasketPageStateCopyWithImpl<_$_BasketPageState>(this, _$identity);
}

abstract class _BasketPageState implements BasketPageState {
  const factory _BasketPageState(
      {required final List<bool> isFavourite,
      required final List<bool> isTrash,
      required final int selectedIndex}) = _$_BasketPageState;

  @override
  List<bool> get isFavourite;
  @override
  List<bool> get isTrash;
  @override
  int get selectedIndex;
  @override
  @JsonKey(ignore: true)
  _$$_BasketPageStateCopyWith<_$_BasketPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
