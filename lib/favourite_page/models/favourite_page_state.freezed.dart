// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourite_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavouritePageState {
  List<bool> get isFavourite => throw _privateConstructorUsedError;
  List<bool> get isTrash => throw _privateConstructorUsedError;
  int get selectedIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavouritePageStateCopyWith<FavouritePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouritePageStateCopyWith<$Res> {
  factory $FavouritePageStateCopyWith(
          FavouritePageState value, $Res Function(FavouritePageState) then) =
      _$FavouritePageStateCopyWithImpl<$Res, FavouritePageState>;
  @useResult
  $Res call({List<bool> isFavourite, List<bool> isTrash, int selectedIndex});
}

/// @nodoc
class _$FavouritePageStateCopyWithImpl<$Res, $Val extends FavouritePageState>
    implements $FavouritePageStateCopyWith<$Res> {
  _$FavouritePageStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_FavouritePageStateCopyWith<$Res>
    implements $FavouritePageStateCopyWith<$Res> {
  factory _$$_FavouritePageStateCopyWith(_$_FavouritePageState value,
          $Res Function(_$_FavouritePageState) then) =
      __$$_FavouritePageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<bool> isFavourite, List<bool> isTrash, int selectedIndex});
}

/// @nodoc
class __$$_FavouritePageStateCopyWithImpl<$Res>
    extends _$FavouritePageStateCopyWithImpl<$Res, _$_FavouritePageState>
    implements _$$_FavouritePageStateCopyWith<$Res> {
  __$$_FavouritePageStateCopyWithImpl(
      _$_FavouritePageState _value, $Res Function(_$_FavouritePageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFavourite = null,
    Object? isTrash = null,
    Object? selectedIndex = null,
  }) {
    return _then(_$_FavouritePageState(
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

class _$_FavouritePageState implements _FavouritePageState {
  const _$_FavouritePageState(
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
    return 'FavouritePageState(isFavourite: $isFavourite, isTrash: $isTrash, selectedIndex: $selectedIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavouritePageState &&
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
  _$$_FavouritePageStateCopyWith<_$_FavouritePageState> get copyWith =>
      __$$_FavouritePageStateCopyWithImpl<_$_FavouritePageState>(
          this, _$identity);
}

abstract class _FavouritePageState implements FavouritePageState {
  const factory _FavouritePageState(
      {required final List<bool> isFavourite,
      required final List<bool> isTrash,
      required final int selectedIndex}) = _$_FavouritePageState;

  @override
  List<bool> get isFavourite;
  @override
  List<bool> get isTrash;
  @override
  int get selectedIndex;
  @override
  @JsonKey(ignore: true)
  _$$_FavouritePageStateCopyWith<_$_FavouritePageState> get copyWith =>
      throw _privateConstructorUsedError;
}
