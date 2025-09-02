import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$FavoriteDriver {
  Fragment$FavoriteDriver({
    required this.id,
    this.firstName,
    this.lastName,
    this.car,
    this.carColor,
    this.carPlate,
    this.rating,
    required this.reviewCount,
    this.media,
    required this.enabledServices,
    this.$__typename = 'Driver',
  });

  factory Fragment$FavoriteDriver.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$car = json['car'];
    final l$carColor = json['carColor'];
    final l$carPlate = json['carPlate'];
    final l$rating = json['rating'];
    final l$reviewCount = json['reviewCount'];
    final l$media = json['media'];
    final l$enabledServices = json['enabledServices'];
    final l$$__typename = json['__typename'];
    return Fragment$FavoriteDriver(
      id: (l$id as String),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      car: l$car == null
          ? null
          : Fragment$FavoriteDriver$car.fromJson(
              (l$car as Map<String, dynamic>)),
      carColor: l$carColor == null
          ? null
          : Fragment$FavoriteDriver$carColor.fromJson(
              (l$carColor as Map<String, dynamic>)),
      carPlate: (l$carPlate as String?),
      rating: (l$rating as int?),
      reviewCount: (l$reviewCount as num).toDouble(),
      media: l$media == null
          ? null
          : Fragment$FavoriteDriver$media.fromJson(
              (l$media as Map<String, dynamic>)),
      enabledServices: (l$enabledServices as List<dynamic>)
          .map((e) => Fragment$FavoriteDriver$enabledServices.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? firstName;

  final String? lastName;

  final Fragment$FavoriteDriver$car? car;

  final Fragment$FavoriteDriver$carColor? carColor;

  final String? carPlate;

  final int? rating;

  final double reviewCount;

  final Fragment$FavoriteDriver$media? media;

  final List<Fragment$FavoriteDriver$enabledServices> enabledServices;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$car = car;
    _resultData['car'] = l$car?.toJson();
    final l$carColor = carColor;
    _resultData['carColor'] = l$carColor?.toJson();
    final l$carPlate = carPlate;
    _resultData['carPlate'] = l$carPlate;
    final l$rating = rating;
    _resultData['rating'] = l$rating;
    final l$reviewCount = reviewCount;
    _resultData['reviewCount'] = l$reviewCount;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$enabledServices = enabledServices;
    _resultData['enabledServices'] =
        l$enabledServices.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$car = car;
    final l$carColor = carColor;
    final l$carPlate = carPlate;
    final l$rating = rating;
    final l$reviewCount = reviewCount;
    final l$media = media;
    final l$enabledServices = enabledServices;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$firstName,
      l$lastName,
      l$car,
      l$carColor,
      l$carPlate,
      l$rating,
      l$reviewCount,
      l$media,
      Object.hashAll(l$enabledServices.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$FavoriteDriver || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$car = car;
    final lOther$car = other.car;
    if (l$car != lOther$car) {
      return false;
    }
    final l$carColor = carColor;
    final lOther$carColor = other.carColor;
    if (l$carColor != lOther$carColor) {
      return false;
    }
    final l$carPlate = carPlate;
    final lOther$carPlate = other.carPlate;
    if (l$carPlate != lOther$carPlate) {
      return false;
    }
    final l$rating = rating;
    final lOther$rating = other.rating;
    if (l$rating != lOther$rating) {
      return false;
    }
    final l$reviewCount = reviewCount;
    final lOther$reviewCount = other.reviewCount;
    if (l$reviewCount != lOther$reviewCount) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    final l$enabledServices = enabledServices;
    final lOther$enabledServices = other.enabledServices;
    if (l$enabledServices.length != lOther$enabledServices.length) {
      return false;
    }
    for (int i = 0; i < l$enabledServices.length; i++) {
      final l$enabledServices$entry = l$enabledServices[i];
      final lOther$enabledServices$entry = lOther$enabledServices[i];
      if (l$enabledServices$entry != lOther$enabledServices$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$FavoriteDriver on Fragment$FavoriteDriver {
  CopyWith$Fragment$FavoriteDriver<Fragment$FavoriteDriver> get copyWith =>
      CopyWith$Fragment$FavoriteDriver(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$FavoriteDriver<TRes> {
  factory CopyWith$Fragment$FavoriteDriver(
    Fragment$FavoriteDriver instance,
    TRes Function(Fragment$FavoriteDriver) then,
  ) = _CopyWithImpl$Fragment$FavoriteDriver;

  factory CopyWith$Fragment$FavoriteDriver.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FavoriteDriver;

  TRes call({
    String? id,
    String? firstName,
    String? lastName,
    Fragment$FavoriteDriver$car? car,
    Fragment$FavoriteDriver$carColor? carColor,
    String? carPlate,
    int? rating,
    double? reviewCount,
    Fragment$FavoriteDriver$media? media,
    List<Fragment$FavoriteDriver$enabledServices>? enabledServices,
    String? $__typename,
  });
  CopyWith$Fragment$FavoriteDriver$car<TRes> get car;
  CopyWith$Fragment$FavoriteDriver$carColor<TRes> get carColor;
  CopyWith$Fragment$FavoriteDriver$media<TRes> get media;
  TRes enabledServices(
      Iterable<Fragment$FavoriteDriver$enabledServices> Function(
              Iterable<
                  CopyWith$Fragment$FavoriteDriver$enabledServices<
                      Fragment$FavoriteDriver$enabledServices>>)
          _fn);
}

class _CopyWithImpl$Fragment$FavoriteDriver<TRes>
    implements CopyWith$Fragment$FavoriteDriver<TRes> {
  _CopyWithImpl$Fragment$FavoriteDriver(
    this._instance,
    this._then,
  );

  final Fragment$FavoriteDriver _instance;

  final TRes Function(Fragment$FavoriteDriver) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? car = _undefined,
    Object? carColor = _undefined,
    Object? carPlate = _undefined,
    Object? rating = _undefined,
    Object? reviewCount = _undefined,
    Object? media = _undefined,
    Object? enabledServices = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FavoriteDriver(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        firstName: firstName == _undefined
            ? _instance.firstName
            : (firstName as String?),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
        car: car == _undefined
            ? _instance.car
            : (car as Fragment$FavoriteDriver$car?),
        carColor: carColor == _undefined
            ? _instance.carColor
            : (carColor as Fragment$FavoriteDriver$carColor?),
        carPlate:
            carPlate == _undefined ? _instance.carPlate : (carPlate as String?),
        rating: rating == _undefined ? _instance.rating : (rating as int?),
        reviewCount: reviewCount == _undefined || reviewCount == null
            ? _instance.reviewCount
            : (reviewCount as double),
        media: media == _undefined
            ? _instance.media
            : (media as Fragment$FavoriteDriver$media?),
        enabledServices:
            enabledServices == _undefined || enabledServices == null
                ? _instance.enabledServices
                : (enabledServices
                    as List<Fragment$FavoriteDriver$enabledServices>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$FavoriteDriver$car<TRes> get car {
    final local$car = _instance.car;
    return local$car == null
        ? CopyWith$Fragment$FavoriteDriver$car.stub(_then(_instance))
        : CopyWith$Fragment$FavoriteDriver$car(local$car, (e) => call(car: e));
  }

  CopyWith$Fragment$FavoriteDriver$carColor<TRes> get carColor {
    final local$carColor = _instance.carColor;
    return local$carColor == null
        ? CopyWith$Fragment$FavoriteDriver$carColor.stub(_then(_instance))
        : CopyWith$Fragment$FavoriteDriver$carColor(
            local$carColor, (e) => call(carColor: e));
  }

  CopyWith$Fragment$FavoriteDriver$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Fragment$FavoriteDriver$media.stub(_then(_instance))
        : CopyWith$Fragment$FavoriteDriver$media(
            local$media, (e) => call(media: e));
  }

  TRes enabledServices(
          Iterable<Fragment$FavoriteDriver$enabledServices> Function(
                  Iterable<
                      CopyWith$Fragment$FavoriteDriver$enabledServices<
                          Fragment$FavoriteDriver$enabledServices>>)
              _fn) =>
      call(
          enabledServices: _fn(_instance.enabledServices
              .map((e) => CopyWith$Fragment$FavoriteDriver$enabledServices(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Fragment$FavoriteDriver<TRes>
    implements CopyWith$Fragment$FavoriteDriver<TRes> {
  _CopyWithStubImpl$Fragment$FavoriteDriver(this._res);

  TRes _res;

  call({
    String? id,
    String? firstName,
    String? lastName,
    Fragment$FavoriteDriver$car? car,
    Fragment$FavoriteDriver$carColor? carColor,
    String? carPlate,
    int? rating,
    double? reviewCount,
    Fragment$FavoriteDriver$media? media,
    List<Fragment$FavoriteDriver$enabledServices>? enabledServices,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$FavoriteDriver$car<TRes> get car =>
      CopyWith$Fragment$FavoriteDriver$car.stub(_res);

  CopyWith$Fragment$FavoriteDriver$carColor<TRes> get carColor =>
      CopyWith$Fragment$FavoriteDriver$carColor.stub(_res);

  CopyWith$Fragment$FavoriteDriver$media<TRes> get media =>
      CopyWith$Fragment$FavoriteDriver$media.stub(_res);

  enabledServices(_fn) => _res;
}

const fragmentDefinitionFavoriteDriver = FragmentDefinitionNode(
  name: NameNode(value: 'FavoriteDriver'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Driver'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'firstName'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'lastName'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'car'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'name'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'carColor'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'name'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'carPlate'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'rating'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'reviewCount'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'media'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'address'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'enabledServices'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'name'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentFavoriteDriver = DocumentNode(definitions: [
  fragmentDefinitionFavoriteDriver,
]);

extension ClientExtension$Fragment$FavoriteDriver on graphql.GraphQLClient {
  void writeFragment$FavoriteDriver({
    required Fragment$FavoriteDriver data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'FavoriteDriver',
            document: documentNodeFragmentFavoriteDriver,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$FavoriteDriver? readFragment$FavoriteDriver({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'FavoriteDriver',
          document: documentNodeFragmentFavoriteDriver,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$FavoriteDriver.fromJson(result);
  }
}

class Fragment$FavoriteDriver$car {
  Fragment$FavoriteDriver$car({
    required this.name,
    this.$__typename = 'CarModel',
  });

  factory Fragment$FavoriteDriver$car.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$FavoriteDriver$car(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$FavoriteDriver$car ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$FavoriteDriver$car
    on Fragment$FavoriteDriver$car {
  CopyWith$Fragment$FavoriteDriver$car<Fragment$FavoriteDriver$car>
      get copyWith => CopyWith$Fragment$FavoriteDriver$car(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FavoriteDriver$car<TRes> {
  factory CopyWith$Fragment$FavoriteDriver$car(
    Fragment$FavoriteDriver$car instance,
    TRes Function(Fragment$FavoriteDriver$car) then,
  ) = _CopyWithImpl$Fragment$FavoriteDriver$car;

  factory CopyWith$Fragment$FavoriteDriver$car.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FavoriteDriver$car;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$FavoriteDriver$car<TRes>
    implements CopyWith$Fragment$FavoriteDriver$car<TRes> {
  _CopyWithImpl$Fragment$FavoriteDriver$car(
    this._instance,
    this._then,
  );

  final Fragment$FavoriteDriver$car _instance;

  final TRes Function(Fragment$FavoriteDriver$car) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FavoriteDriver$car(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$FavoriteDriver$car<TRes>
    implements CopyWith$Fragment$FavoriteDriver$car<TRes> {
  _CopyWithStubImpl$Fragment$FavoriteDriver$car(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$FavoriteDriver$carColor {
  Fragment$FavoriteDriver$carColor({
    required this.name,
    this.$__typename = 'CarColor',
  });

  factory Fragment$FavoriteDriver$carColor.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$FavoriteDriver$carColor(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$FavoriteDriver$carColor ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$FavoriteDriver$carColor
    on Fragment$FavoriteDriver$carColor {
  CopyWith$Fragment$FavoriteDriver$carColor<Fragment$FavoriteDriver$carColor>
      get copyWith => CopyWith$Fragment$FavoriteDriver$carColor(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FavoriteDriver$carColor<TRes> {
  factory CopyWith$Fragment$FavoriteDriver$carColor(
    Fragment$FavoriteDriver$carColor instance,
    TRes Function(Fragment$FavoriteDriver$carColor) then,
  ) = _CopyWithImpl$Fragment$FavoriteDriver$carColor;

  factory CopyWith$Fragment$FavoriteDriver$carColor.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FavoriteDriver$carColor;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$FavoriteDriver$carColor<TRes>
    implements CopyWith$Fragment$FavoriteDriver$carColor<TRes> {
  _CopyWithImpl$Fragment$FavoriteDriver$carColor(
    this._instance,
    this._then,
  );

  final Fragment$FavoriteDriver$carColor _instance;

  final TRes Function(Fragment$FavoriteDriver$carColor) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FavoriteDriver$carColor(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$FavoriteDriver$carColor<TRes>
    implements CopyWith$Fragment$FavoriteDriver$carColor<TRes> {
  _CopyWithStubImpl$Fragment$FavoriteDriver$carColor(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$FavoriteDriver$media {
  Fragment$FavoriteDriver$media({
    required this.address,
    this.$__typename = 'Media',
  });

  factory Fragment$FavoriteDriver$media.fromJson(Map<String, dynamic> json) {
    final l$address = json['address'];
    final l$$__typename = json['__typename'];
    return Fragment$FavoriteDriver$media(
      address: (l$address as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String address;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$address = address;
    _resultData['address'] = l$address;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$address = address;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$address,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$FavoriteDriver$media ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$FavoriteDriver$media
    on Fragment$FavoriteDriver$media {
  CopyWith$Fragment$FavoriteDriver$media<Fragment$FavoriteDriver$media>
      get copyWith => CopyWith$Fragment$FavoriteDriver$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FavoriteDriver$media<TRes> {
  factory CopyWith$Fragment$FavoriteDriver$media(
    Fragment$FavoriteDriver$media instance,
    TRes Function(Fragment$FavoriteDriver$media) then,
  ) = _CopyWithImpl$Fragment$FavoriteDriver$media;

  factory CopyWith$Fragment$FavoriteDriver$media.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FavoriteDriver$media;

  TRes call({
    String? address,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$FavoriteDriver$media<TRes>
    implements CopyWith$Fragment$FavoriteDriver$media<TRes> {
  _CopyWithImpl$Fragment$FavoriteDriver$media(
    this._instance,
    this._then,
  );

  final Fragment$FavoriteDriver$media _instance;

  final TRes Function(Fragment$FavoriteDriver$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? address = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FavoriteDriver$media(
        address: address == _undefined || address == null
            ? _instance.address
            : (address as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$FavoriteDriver$media<TRes>
    implements CopyWith$Fragment$FavoriteDriver$media<TRes> {
  _CopyWithStubImpl$Fragment$FavoriteDriver$media(this._res);

  TRes _res;

  call({
    String? address,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$FavoriteDriver$enabledServices {
  Fragment$FavoriteDriver$enabledServices({
    required this.name,
    this.$__typename = 'Service',
  });

  factory Fragment$FavoriteDriver$enabledServices.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$FavoriteDriver$enabledServices(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$FavoriteDriver$enabledServices ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$FavoriteDriver$enabledServices
    on Fragment$FavoriteDriver$enabledServices {
  CopyWith$Fragment$FavoriteDriver$enabledServices<
          Fragment$FavoriteDriver$enabledServices>
      get copyWith => CopyWith$Fragment$FavoriteDriver$enabledServices(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FavoriteDriver$enabledServices<TRes> {
  factory CopyWith$Fragment$FavoriteDriver$enabledServices(
    Fragment$FavoriteDriver$enabledServices instance,
    TRes Function(Fragment$FavoriteDriver$enabledServices) then,
  ) = _CopyWithImpl$Fragment$FavoriteDriver$enabledServices;

  factory CopyWith$Fragment$FavoriteDriver$enabledServices.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FavoriteDriver$enabledServices;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$FavoriteDriver$enabledServices<TRes>
    implements CopyWith$Fragment$FavoriteDriver$enabledServices<TRes> {
  _CopyWithImpl$Fragment$FavoriteDriver$enabledServices(
    this._instance,
    this._then,
  );

  final Fragment$FavoriteDriver$enabledServices _instance;

  final TRes Function(Fragment$FavoriteDriver$enabledServices) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FavoriteDriver$enabledServices(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$FavoriteDriver$enabledServices<TRes>
    implements CopyWith$Fragment$FavoriteDriver$enabledServices<TRes> {
  _CopyWithStubImpl$Fragment$FavoriteDriver$enabledServices(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}
