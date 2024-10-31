// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchProducts,
    required TResult Function(ProductModel product) addProduct,
    required TResult Function(CartItem item) addToCart,
    required TResult Function(String productId, int quantity) updateQuantity,
    required TResult Function() fetchCartItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchProducts,
    TResult? Function(ProductModel product)? addProduct,
    TResult? Function(CartItem item)? addToCart,
    TResult? Function(String productId, int quantity)? updateQuantity,
    TResult? Function()? fetchCartItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchProducts,
    TResult Function(ProductModel product)? addProduct,
    TResult Function(CartItem item)? addToCart,
    TResult Function(String productId, int quantity)? updateQuantity,
    TResult Function()? fetchCartItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchProducts value) fetchProducts,
    required TResult Function(AddProduct value) addProduct,
    required TResult Function(AddToCart value) addToCart,
    required TResult Function(UpdateQuantity value) updateQuantity,
    required TResult Function(FetchCartItems value) fetchCartItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchProducts value)? fetchProducts,
    TResult? Function(AddProduct value)? addProduct,
    TResult? Function(AddToCart value)? addToCart,
    TResult? Function(UpdateQuantity value)? updateQuantity,
    TResult? Function(FetchCartItems value)? fetchCartItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchProducts value)? fetchProducts,
    TResult Function(AddProduct value)? addProduct,
    TResult Function(AddToCart value)? addToCart,
    TResult Function(UpdateQuantity value)? updateQuantity,
    TResult Function(FetchCartItems value)? fetchCartItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchProductsImplCopyWith<$Res> {
  factory _$$FetchProductsImplCopyWith(
          _$FetchProductsImpl value, $Res Function(_$FetchProductsImpl) then) =
      __$$FetchProductsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchProductsImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$FetchProductsImpl>
    implements _$$FetchProductsImplCopyWith<$Res> {
  __$$FetchProductsImplCopyWithImpl(
      _$FetchProductsImpl _value, $Res Function(_$FetchProductsImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchProductsImpl implements FetchProducts {
  const _$FetchProductsImpl();

  @override
  String toString() {
    return 'HomeEvent.fetchProducts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchProductsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchProducts,
    required TResult Function(ProductModel product) addProduct,
    required TResult Function(CartItem item) addToCart,
    required TResult Function(String productId, int quantity) updateQuantity,
    required TResult Function() fetchCartItems,
  }) {
    return fetchProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchProducts,
    TResult? Function(ProductModel product)? addProduct,
    TResult? Function(CartItem item)? addToCart,
    TResult? Function(String productId, int quantity)? updateQuantity,
    TResult? Function()? fetchCartItems,
  }) {
    return fetchProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchProducts,
    TResult Function(ProductModel product)? addProduct,
    TResult Function(CartItem item)? addToCart,
    TResult Function(String productId, int quantity)? updateQuantity,
    TResult Function()? fetchCartItems,
    required TResult orElse(),
  }) {
    if (fetchProducts != null) {
      return fetchProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchProducts value) fetchProducts,
    required TResult Function(AddProduct value) addProduct,
    required TResult Function(AddToCart value) addToCart,
    required TResult Function(UpdateQuantity value) updateQuantity,
    required TResult Function(FetchCartItems value) fetchCartItems,
  }) {
    return fetchProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchProducts value)? fetchProducts,
    TResult? Function(AddProduct value)? addProduct,
    TResult? Function(AddToCart value)? addToCart,
    TResult? Function(UpdateQuantity value)? updateQuantity,
    TResult? Function(FetchCartItems value)? fetchCartItems,
  }) {
    return fetchProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchProducts value)? fetchProducts,
    TResult Function(AddProduct value)? addProduct,
    TResult Function(AddToCart value)? addToCart,
    TResult Function(UpdateQuantity value)? updateQuantity,
    TResult Function(FetchCartItems value)? fetchCartItems,
    required TResult orElse(),
  }) {
    if (fetchProducts != null) {
      return fetchProducts(this);
    }
    return orElse();
  }
}

abstract class FetchProducts implements HomeEvent {
  const factory FetchProducts() = _$FetchProductsImpl;
}

/// @nodoc
abstract class _$$AddProductImplCopyWith<$Res> {
  factory _$$AddProductImplCopyWith(
          _$AddProductImpl value, $Res Function(_$AddProductImpl) then) =
      __$$AddProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductModel product});
}

/// @nodoc
class __$$AddProductImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$AddProductImpl>
    implements _$$AddProductImplCopyWith<$Res> {
  __$$AddProductImplCopyWithImpl(
      _$AddProductImpl _value, $Res Function(_$AddProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$AddProductImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
    ));
  }
}

/// @nodoc

class _$AddProductImpl implements AddProduct {
  const _$AddProductImpl(this.product);

  @override
  final ProductModel product;

  @override
  String toString() {
    return 'HomeEvent.addProduct(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProductImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProductImplCopyWith<_$AddProductImpl> get copyWith =>
      __$$AddProductImplCopyWithImpl<_$AddProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchProducts,
    required TResult Function(ProductModel product) addProduct,
    required TResult Function(CartItem item) addToCart,
    required TResult Function(String productId, int quantity) updateQuantity,
    required TResult Function() fetchCartItems,
  }) {
    return addProduct(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchProducts,
    TResult? Function(ProductModel product)? addProduct,
    TResult? Function(CartItem item)? addToCart,
    TResult? Function(String productId, int quantity)? updateQuantity,
    TResult? Function()? fetchCartItems,
  }) {
    return addProduct?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchProducts,
    TResult Function(ProductModel product)? addProduct,
    TResult Function(CartItem item)? addToCart,
    TResult Function(String productId, int quantity)? updateQuantity,
    TResult Function()? fetchCartItems,
    required TResult orElse(),
  }) {
    if (addProduct != null) {
      return addProduct(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchProducts value) fetchProducts,
    required TResult Function(AddProduct value) addProduct,
    required TResult Function(AddToCart value) addToCart,
    required TResult Function(UpdateQuantity value) updateQuantity,
    required TResult Function(FetchCartItems value) fetchCartItems,
  }) {
    return addProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchProducts value)? fetchProducts,
    TResult? Function(AddProduct value)? addProduct,
    TResult? Function(AddToCart value)? addToCart,
    TResult? Function(UpdateQuantity value)? updateQuantity,
    TResult? Function(FetchCartItems value)? fetchCartItems,
  }) {
    return addProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchProducts value)? fetchProducts,
    TResult Function(AddProduct value)? addProduct,
    TResult Function(AddToCart value)? addToCart,
    TResult Function(UpdateQuantity value)? updateQuantity,
    TResult Function(FetchCartItems value)? fetchCartItems,
    required TResult orElse(),
  }) {
    if (addProduct != null) {
      return addProduct(this);
    }
    return orElse();
  }
}

abstract class AddProduct implements HomeEvent {
  const factory AddProduct(final ProductModel product) = _$AddProductImpl;

  ProductModel get product;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddProductImplCopyWith<_$AddProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddToCartImplCopyWith<$Res> {
  factory _$$AddToCartImplCopyWith(
          _$AddToCartImpl value, $Res Function(_$AddToCartImpl) then) =
      __$$AddToCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CartItem item});
}

/// @nodoc
class __$$AddToCartImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$AddToCartImpl>
    implements _$$AddToCartImplCopyWith<$Res> {
  __$$AddToCartImplCopyWithImpl(
      _$AddToCartImpl _value, $Res Function(_$AddToCartImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$AddToCartImpl(
      null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as CartItem,
    ));
  }
}

/// @nodoc

class _$AddToCartImpl implements AddToCart {
  const _$AddToCartImpl(this.item);

  @override
  final CartItem item;

  @override
  String toString() {
    return 'HomeEvent.addToCart(item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToCartImpl &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToCartImplCopyWith<_$AddToCartImpl> get copyWith =>
      __$$AddToCartImplCopyWithImpl<_$AddToCartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchProducts,
    required TResult Function(ProductModel product) addProduct,
    required TResult Function(CartItem item) addToCart,
    required TResult Function(String productId, int quantity) updateQuantity,
    required TResult Function() fetchCartItems,
  }) {
    return addToCart(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchProducts,
    TResult? Function(ProductModel product)? addProduct,
    TResult? Function(CartItem item)? addToCart,
    TResult? Function(String productId, int quantity)? updateQuantity,
    TResult? Function()? fetchCartItems,
  }) {
    return addToCart?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchProducts,
    TResult Function(ProductModel product)? addProduct,
    TResult Function(CartItem item)? addToCart,
    TResult Function(String productId, int quantity)? updateQuantity,
    TResult Function()? fetchCartItems,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchProducts value) fetchProducts,
    required TResult Function(AddProduct value) addProduct,
    required TResult Function(AddToCart value) addToCart,
    required TResult Function(UpdateQuantity value) updateQuantity,
    required TResult Function(FetchCartItems value) fetchCartItems,
  }) {
    return addToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchProducts value)? fetchProducts,
    TResult? Function(AddProduct value)? addProduct,
    TResult? Function(AddToCart value)? addToCart,
    TResult? Function(UpdateQuantity value)? updateQuantity,
    TResult? Function(FetchCartItems value)? fetchCartItems,
  }) {
    return addToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchProducts value)? fetchProducts,
    TResult Function(AddProduct value)? addProduct,
    TResult Function(AddToCart value)? addToCart,
    TResult Function(UpdateQuantity value)? updateQuantity,
    TResult Function(FetchCartItems value)? fetchCartItems,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(this);
    }
    return orElse();
  }
}

abstract class AddToCart implements HomeEvent {
  const factory AddToCart(final CartItem item) = _$AddToCartImpl;

  CartItem get item;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddToCartImplCopyWith<_$AddToCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateQuantityImplCopyWith<$Res> {
  factory _$$UpdateQuantityImplCopyWith(_$UpdateQuantityImpl value,
          $Res Function(_$UpdateQuantityImpl) then) =
      __$$UpdateQuantityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String productId, int quantity});
}

/// @nodoc
class __$$UpdateQuantityImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$UpdateQuantityImpl>
    implements _$$UpdateQuantityImplCopyWith<$Res> {
  __$$UpdateQuantityImplCopyWithImpl(
      _$UpdateQuantityImpl _value, $Res Function(_$UpdateQuantityImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? quantity = null,
  }) {
    return _then(_$UpdateQuantityImpl(
      null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateQuantityImpl implements UpdateQuantity {
  const _$UpdateQuantityImpl(this.productId, this.quantity);

  @override
  final String productId;
  @override
  final int quantity;

  @override
  String toString() {
    return 'HomeEvent.updateQuantity(productId: $productId, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateQuantityImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId, quantity);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateQuantityImplCopyWith<_$UpdateQuantityImpl> get copyWith =>
      __$$UpdateQuantityImplCopyWithImpl<_$UpdateQuantityImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchProducts,
    required TResult Function(ProductModel product) addProduct,
    required TResult Function(CartItem item) addToCart,
    required TResult Function(String productId, int quantity) updateQuantity,
    required TResult Function() fetchCartItems,
  }) {
    return updateQuantity(productId, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchProducts,
    TResult? Function(ProductModel product)? addProduct,
    TResult? Function(CartItem item)? addToCart,
    TResult? Function(String productId, int quantity)? updateQuantity,
    TResult? Function()? fetchCartItems,
  }) {
    return updateQuantity?.call(productId, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchProducts,
    TResult Function(ProductModel product)? addProduct,
    TResult Function(CartItem item)? addToCart,
    TResult Function(String productId, int quantity)? updateQuantity,
    TResult Function()? fetchCartItems,
    required TResult orElse(),
  }) {
    if (updateQuantity != null) {
      return updateQuantity(productId, quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchProducts value) fetchProducts,
    required TResult Function(AddProduct value) addProduct,
    required TResult Function(AddToCart value) addToCart,
    required TResult Function(UpdateQuantity value) updateQuantity,
    required TResult Function(FetchCartItems value) fetchCartItems,
  }) {
    return updateQuantity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchProducts value)? fetchProducts,
    TResult? Function(AddProduct value)? addProduct,
    TResult? Function(AddToCart value)? addToCart,
    TResult? Function(UpdateQuantity value)? updateQuantity,
    TResult? Function(FetchCartItems value)? fetchCartItems,
  }) {
    return updateQuantity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchProducts value)? fetchProducts,
    TResult Function(AddProduct value)? addProduct,
    TResult Function(AddToCart value)? addToCart,
    TResult Function(UpdateQuantity value)? updateQuantity,
    TResult Function(FetchCartItems value)? fetchCartItems,
    required TResult orElse(),
  }) {
    if (updateQuantity != null) {
      return updateQuantity(this);
    }
    return orElse();
  }
}

abstract class UpdateQuantity implements HomeEvent {
  const factory UpdateQuantity(final String productId, final int quantity) =
      _$UpdateQuantityImpl;

  String get productId;
  int get quantity;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateQuantityImplCopyWith<_$UpdateQuantityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchCartItemsImplCopyWith<$Res> {
  factory _$$FetchCartItemsImplCopyWith(_$FetchCartItemsImpl value,
          $Res Function(_$FetchCartItemsImpl) then) =
      __$$FetchCartItemsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchCartItemsImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$FetchCartItemsImpl>
    implements _$$FetchCartItemsImplCopyWith<$Res> {
  __$$FetchCartItemsImplCopyWithImpl(
      _$FetchCartItemsImpl _value, $Res Function(_$FetchCartItemsImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchCartItemsImpl implements FetchCartItems {
  const _$FetchCartItemsImpl();

  @override
  String toString() {
    return 'HomeEvent.fetchCartItems()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchCartItemsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchProducts,
    required TResult Function(ProductModel product) addProduct,
    required TResult Function(CartItem item) addToCart,
    required TResult Function(String productId, int quantity) updateQuantity,
    required TResult Function() fetchCartItems,
  }) {
    return fetchCartItems();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchProducts,
    TResult? Function(ProductModel product)? addProduct,
    TResult? Function(CartItem item)? addToCart,
    TResult? Function(String productId, int quantity)? updateQuantity,
    TResult? Function()? fetchCartItems,
  }) {
    return fetchCartItems?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchProducts,
    TResult Function(ProductModel product)? addProduct,
    TResult Function(CartItem item)? addToCart,
    TResult Function(String productId, int quantity)? updateQuantity,
    TResult Function()? fetchCartItems,
    required TResult orElse(),
  }) {
    if (fetchCartItems != null) {
      return fetchCartItems();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchProducts value) fetchProducts,
    required TResult Function(AddProduct value) addProduct,
    required TResult Function(AddToCart value) addToCart,
    required TResult Function(UpdateQuantity value) updateQuantity,
    required TResult Function(FetchCartItems value) fetchCartItems,
  }) {
    return fetchCartItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchProducts value)? fetchProducts,
    TResult? Function(AddProduct value)? addProduct,
    TResult? Function(AddToCart value)? addToCart,
    TResult? Function(UpdateQuantity value)? updateQuantity,
    TResult? Function(FetchCartItems value)? fetchCartItems,
  }) {
    return fetchCartItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchProducts value)? fetchProducts,
    TResult Function(AddProduct value)? addProduct,
    TResult Function(AddToCart value)? addToCart,
    TResult Function(UpdateQuantity value)? updateQuantity,
    TResult Function(FetchCartItems value)? fetchCartItems,
    required TResult orElse(),
  }) {
    if (fetchCartItems != null) {
      return fetchCartItems(this);
    }
    return orElse();
  }
}

abstract class FetchCartItems implements HomeEvent {
  const factory FetchCartItems() = _$FetchCartItemsImpl;
}

/// @nodoc
mixin _$HomeState {
  ScreenStatus get productsStatus => throw _privateConstructorUsedError;
  List<ProductModel>? get products => throw _privateConstructorUsedError;
  Failures? get productsFailures => throw _privateConstructorUsedError;
  ScreenStatus get cartItemsStatus => throw _privateConstructorUsedError;
  List<CartItem>? get cartItems => throw _privateConstructorUsedError;
  Failures? get cartItemsFailures => throw _privateConstructorUsedError;
  ScreenStatus get addToCartStatus => throw _privateConstructorUsedError;
  Failures? get addToCartFailures => throw _privateConstructorUsedError;
  ScreenStatus get anotherStatus => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {ScreenStatus productsStatus,
      List<ProductModel>? products,
      Failures? productsFailures,
      ScreenStatus cartItemsStatus,
      List<CartItem>? cartItems,
      Failures? cartItemsFailures,
      ScreenStatus addToCartStatus,
      Failures? addToCartFailures,
      ScreenStatus anotherStatus});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productsStatus = null,
    Object? products = freezed,
    Object? productsFailures = freezed,
    Object? cartItemsStatus = null,
    Object? cartItems = freezed,
    Object? cartItemsFailures = freezed,
    Object? addToCartStatus = null,
    Object? addToCartFailures = freezed,
    Object? anotherStatus = null,
  }) {
    return _then(_value.copyWith(
      productsStatus: null == productsStatus
          ? _value.productsStatus
          : productsStatus // ignore: cast_nullable_to_non_nullable
              as ScreenStatus,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>?,
      productsFailures: freezed == productsFailures
          ? _value.productsFailures
          : productsFailures // ignore: cast_nullable_to_non_nullable
              as Failures?,
      cartItemsStatus: null == cartItemsStatus
          ? _value.cartItemsStatus
          : cartItemsStatus // ignore: cast_nullable_to_non_nullable
              as ScreenStatus,
      cartItems: freezed == cartItems
          ? _value.cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<CartItem>?,
      cartItemsFailures: freezed == cartItemsFailures
          ? _value.cartItemsFailures
          : cartItemsFailures // ignore: cast_nullable_to_non_nullable
              as Failures?,
      addToCartStatus: null == addToCartStatus
          ? _value.addToCartStatus
          : addToCartStatus // ignore: cast_nullable_to_non_nullable
              as ScreenStatus,
      addToCartFailures: freezed == addToCartFailures
          ? _value.addToCartFailures
          : addToCartFailures // ignore: cast_nullable_to_non_nullable
              as Failures?,
      anotherStatus: null == anotherStatus
          ? _value.anotherStatus
          : anotherStatus // ignore: cast_nullable_to_non_nullable
              as ScreenStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ScreenStatus productsStatus,
      List<ProductModel>? products,
      Failures? productsFailures,
      ScreenStatus cartItemsStatus,
      List<CartItem>? cartItems,
      Failures? cartItemsFailures,
      ScreenStatus addToCartStatus,
      Failures? addToCartFailures,
      ScreenStatus anotherStatus});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productsStatus = null,
    Object? products = freezed,
    Object? productsFailures = freezed,
    Object? cartItemsStatus = null,
    Object? cartItems = freezed,
    Object? cartItemsFailures = freezed,
    Object? addToCartStatus = null,
    Object? addToCartFailures = freezed,
    Object? anotherStatus = null,
  }) {
    return _then(_$HomeStateImpl(
      productsStatus: null == productsStatus
          ? _value.productsStatus
          : productsStatus // ignore: cast_nullable_to_non_nullable
              as ScreenStatus,
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>?,
      productsFailures: freezed == productsFailures
          ? _value.productsFailures
          : productsFailures // ignore: cast_nullable_to_non_nullable
              as Failures?,
      cartItemsStatus: null == cartItemsStatus
          ? _value.cartItemsStatus
          : cartItemsStatus // ignore: cast_nullable_to_non_nullable
              as ScreenStatus,
      cartItems: freezed == cartItems
          ? _value._cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<CartItem>?,
      cartItemsFailures: freezed == cartItemsFailures
          ? _value.cartItemsFailures
          : cartItemsFailures // ignore: cast_nullable_to_non_nullable
              as Failures?,
      addToCartStatus: null == addToCartStatus
          ? _value.addToCartStatus
          : addToCartStatus // ignore: cast_nullable_to_non_nullable
              as ScreenStatus,
      addToCartFailures: freezed == addToCartFailures
          ? _value.addToCartFailures
          : addToCartFailures // ignore: cast_nullable_to_non_nullable
              as Failures?,
      anotherStatus: null == anotherStatus
          ? _value.anotherStatus
          : anotherStatus // ignore: cast_nullable_to_non_nullable
              as ScreenStatus,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {this.productsStatus = ScreenStatus.init,
      final List<ProductModel>? products,
      this.productsFailures,
      this.cartItemsStatus = ScreenStatus.init,
      final List<CartItem>? cartItems,
      this.cartItemsFailures,
      this.addToCartStatus = ScreenStatus.init,
      this.addToCartFailures,
      this.anotherStatus = ScreenStatus.init})
      : _products = products,
        _cartItems = cartItems;

  @override
  @JsonKey()
  final ScreenStatus productsStatus;
  final List<ProductModel>? _products;
  @override
  List<ProductModel>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Failures? productsFailures;
  @override
  @JsonKey()
  final ScreenStatus cartItemsStatus;
  final List<CartItem>? _cartItems;
  @override
  List<CartItem>? get cartItems {
    final value = _cartItems;
    if (value == null) return null;
    if (_cartItems is EqualUnmodifiableListView) return _cartItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Failures? cartItemsFailures;
  @override
  @JsonKey()
  final ScreenStatus addToCartStatus;
  @override
  final Failures? addToCartFailures;
  @override
  @JsonKey()
  final ScreenStatus anotherStatus;

  @override
  String toString() {
    return 'HomeState(productsStatus: $productsStatus, products: $products, productsFailures: $productsFailures, cartItemsStatus: $cartItemsStatus, cartItems: $cartItems, cartItemsFailures: $cartItemsFailures, addToCartStatus: $addToCartStatus, addToCartFailures: $addToCartFailures, anotherStatus: $anotherStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.productsStatus, productsStatus) ||
                other.productsStatus == productsStatus) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.productsFailures, productsFailures) ||
                other.productsFailures == productsFailures) &&
            (identical(other.cartItemsStatus, cartItemsStatus) ||
                other.cartItemsStatus == cartItemsStatus) &&
            const DeepCollectionEquality()
                .equals(other._cartItems, _cartItems) &&
            (identical(other.cartItemsFailures, cartItemsFailures) ||
                other.cartItemsFailures == cartItemsFailures) &&
            (identical(other.addToCartStatus, addToCartStatus) ||
                other.addToCartStatus == addToCartStatus) &&
            (identical(other.addToCartFailures, addToCartFailures) ||
                other.addToCartFailures == addToCartFailures) &&
            (identical(other.anotherStatus, anotherStatus) ||
                other.anotherStatus == anotherStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      productsStatus,
      const DeepCollectionEquality().hash(_products),
      productsFailures,
      cartItemsStatus,
      const DeepCollectionEquality().hash(_cartItems),
      cartItemsFailures,
      addToCartStatus,
      addToCartFailures,
      anotherStatus);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final ScreenStatus productsStatus,
      final List<ProductModel>? products,
      final Failures? productsFailures,
      final ScreenStatus cartItemsStatus,
      final List<CartItem>? cartItems,
      final Failures? cartItemsFailures,
      final ScreenStatus addToCartStatus,
      final Failures? addToCartFailures,
      final ScreenStatus anotherStatus}) = _$HomeStateImpl;

  @override
  ScreenStatus get productsStatus;
  @override
  List<ProductModel>? get products;
  @override
  Failures? get productsFailures;
  @override
  ScreenStatus get cartItemsStatus;
  @override
  List<CartItem>? get cartItems;
  @override
  Failures? get cartItemsFailures;
  @override
  ScreenStatus get addToCartStatus;
  @override
  Failures? get addToCartFailures;
  @override
  ScreenStatus get anotherStatus;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
