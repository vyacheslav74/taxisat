import '../schema.gql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Query$ReverseGeocode {
  factory Variables$Query$ReverseGeocode({
    required double lat,
    required double lng,
    required String language,
    required Enum$GeoProvider provider,
  }) =>
      Variables$Query$ReverseGeocode._({
        r'lat': lat,
        r'lng': lng,
        r'language': language,
        r'provider': provider,
      });

  Variables$Query$ReverseGeocode._(this._$data);

  factory Variables$Query$ReverseGeocode.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$lat = data['lat'];
    result$data['lat'] = (l$lat as num).toDouble();
    final l$lng = data['lng'];
    result$data['lng'] = (l$lng as num).toDouble();
    final l$language = data['language'];
    result$data['language'] = (l$language as String);
    final l$provider = data['provider'];
    result$data['provider'] = fromJson$Enum$GeoProvider((l$provider as String));
    return Variables$Query$ReverseGeocode._(result$data);
  }

  Map<String, dynamic> _$data;

  double get lat => (_$data['lat'] as double);

  double get lng => (_$data['lng'] as double);

  String get language => (_$data['language'] as String);

  Enum$GeoProvider get provider => (_$data['provider'] as Enum$GeoProvider);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$lat = lat;
    result$data['lat'] = l$lat;
    final l$lng = lng;
    result$data['lng'] = l$lng;
    final l$language = language;
    result$data['language'] = l$language;
    final l$provider = provider;
    result$data['provider'] = toJson$Enum$GeoProvider(l$provider);
    return result$data;
  }

  CopyWith$Variables$Query$ReverseGeocode<Variables$Query$ReverseGeocode>
      get copyWith => CopyWith$Variables$Query$ReverseGeocode(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$ReverseGeocode ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$lat = lat;
    final lOther$lat = other.lat;
    if (l$lat != lOther$lat) {
      return false;
    }
    final l$lng = lng;
    final lOther$lng = other.lng;
    if (l$lng != lOther$lng) {
      return false;
    }
    final l$language = language;
    final lOther$language = other.language;
    if (l$language != lOther$language) {
      return false;
    }
    final l$provider = provider;
    final lOther$provider = other.provider;
    if (l$provider != lOther$provider) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$lat = lat;
    final l$lng = lng;
    final l$language = language;
    final l$provider = provider;
    return Object.hashAll([
      l$lat,
      l$lng,
      l$language,
      l$provider,
    ]);
  }
}

abstract class CopyWith$Variables$Query$ReverseGeocode<TRes> {
  factory CopyWith$Variables$Query$ReverseGeocode(
    Variables$Query$ReverseGeocode instance,
    TRes Function(Variables$Query$ReverseGeocode) then,
  ) = _CopyWithImpl$Variables$Query$ReverseGeocode;

  factory CopyWith$Variables$Query$ReverseGeocode.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ReverseGeocode;

  TRes call({
    double? lat,
    double? lng,
    String? language,
    Enum$GeoProvider? provider,
  });
}

class _CopyWithImpl$Variables$Query$ReverseGeocode<TRes>
    implements CopyWith$Variables$Query$ReverseGeocode<TRes> {
  _CopyWithImpl$Variables$Query$ReverseGeocode(
    this._instance,
    this._then,
  );

  final Variables$Query$ReverseGeocode _instance;

  final TRes Function(Variables$Query$ReverseGeocode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
    Object? language = _undefined,
    Object? provider = _undefined,
  }) =>
      _then(Variables$Query$ReverseGeocode._({
        ..._instance._$data,
        if (lat != _undefined && lat != null) 'lat': (lat as double),
        if (lng != _undefined && lng != null) 'lng': (lng as double),
        if (language != _undefined && language != null)
          'language': (language as String),
        if (provider != _undefined && provider != null)
          'provider': (provider as Enum$GeoProvider),
      }));
}

class _CopyWithStubImpl$Variables$Query$ReverseGeocode<TRes>
    implements CopyWith$Variables$Query$ReverseGeocode<TRes> {
  _CopyWithStubImpl$Variables$Query$ReverseGeocode(this._res);

  TRes _res;

  call({
    double? lat,
    double? lng,
    String? language,
    Enum$GeoProvider? provider,
  }) =>
      _res;
}

class Query$ReverseGeocode {
  Query$ReverseGeocode({
    required this.reverseGeocode,
    this.$__typename = 'Query',
  });

  factory Query$ReverseGeocode.fromJson(Map<String, dynamic> json) {
    final l$reverseGeocode = json['reverseGeocode'];
    final l$$__typename = json['__typename'];
    return Query$ReverseGeocode(
      reverseGeocode: Query$ReverseGeocode$reverseGeocode.fromJson(
          (l$reverseGeocode as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ReverseGeocode$reverseGeocode reverseGeocode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$reverseGeocode = reverseGeocode;
    _resultData['reverseGeocode'] = l$reverseGeocode.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$reverseGeocode = reverseGeocode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$reverseGeocode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ReverseGeocode || runtimeType != other.runtimeType) {
      return false;
    }
    final l$reverseGeocode = reverseGeocode;
    final lOther$reverseGeocode = other.reverseGeocode;
    if (l$reverseGeocode != lOther$reverseGeocode) {
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

extension UtilityExtension$Query$ReverseGeocode on Query$ReverseGeocode {
  CopyWith$Query$ReverseGeocode<Query$ReverseGeocode> get copyWith =>
      CopyWith$Query$ReverseGeocode(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ReverseGeocode<TRes> {
  factory CopyWith$Query$ReverseGeocode(
    Query$ReverseGeocode instance,
    TRes Function(Query$ReverseGeocode) then,
  ) = _CopyWithImpl$Query$ReverseGeocode;

  factory CopyWith$Query$ReverseGeocode.stub(TRes res) =
      _CopyWithStubImpl$Query$ReverseGeocode;

  TRes call({
    Query$ReverseGeocode$reverseGeocode? reverseGeocode,
    String? $__typename,
  });
  CopyWith$Query$ReverseGeocode$reverseGeocode<TRes> get reverseGeocode;
}

class _CopyWithImpl$Query$ReverseGeocode<TRes>
    implements CopyWith$Query$ReverseGeocode<TRes> {
  _CopyWithImpl$Query$ReverseGeocode(
    this._instance,
    this._then,
  );

  final Query$ReverseGeocode _instance;

  final TRes Function(Query$ReverseGeocode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? reverseGeocode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ReverseGeocode(
        reverseGeocode: reverseGeocode == _undefined || reverseGeocode == null
            ? _instance.reverseGeocode
            : (reverseGeocode as Query$ReverseGeocode$reverseGeocode),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$ReverseGeocode$reverseGeocode<TRes> get reverseGeocode {
    final local$reverseGeocode = _instance.reverseGeocode;
    return CopyWith$Query$ReverseGeocode$reverseGeocode(
        local$reverseGeocode, (e) => call(reverseGeocode: e));
  }
}

class _CopyWithStubImpl$Query$ReverseGeocode<TRes>
    implements CopyWith$Query$ReverseGeocode<TRes> {
  _CopyWithStubImpl$Query$ReverseGeocode(this._res);

  TRes _res;

  call({
    Query$ReverseGeocode$reverseGeocode? reverseGeocode,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$ReverseGeocode$reverseGeocode<TRes> get reverseGeocode =>
      CopyWith$Query$ReverseGeocode$reverseGeocode.stub(_res);
}

const documentNodeQueryReverseGeocode = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ReverseGeocode'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'lat')),
        type: NamedTypeNode(
          name: NameNode(value: 'Float'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'lng')),
        type: NamedTypeNode(
          name: NameNode(value: 'Float'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'language')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'provider')),
        type: NamedTypeNode(
          name: NameNode(value: 'GeoProvider'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'reverseGeocode'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'location'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'lat'),
                value: VariableNode(name: NameNode(value: 'lat')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'lng'),
                value: VariableNode(name: NameNode(value: 'lng')),
              ),
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: 'language'),
            value: VariableNode(name: NameNode(value: 'language')),
          ),
          ArgumentNode(
            name: NameNode(value: 'provider'),
            value: VariableNode(name: NameNode(value: 'provider')),
          ),
        ],
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
            name: NameNode(value: 'point'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'lat'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'lng'),
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
]);
Query$ReverseGeocode _parserFn$Query$ReverseGeocode(
        Map<String, dynamic> data) =>
    Query$ReverseGeocode.fromJson(data);
typedef OnQueryComplete$Query$ReverseGeocode = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$ReverseGeocode?,
);

class Options$Query$ReverseGeocode
    extends graphql.QueryOptions<Query$ReverseGeocode> {
  Options$Query$ReverseGeocode({
    String? operationName,
    required Variables$Query$ReverseGeocode variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ReverseGeocode? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ReverseGeocode? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$ReverseGeocode(data),
                  ),
          onError: onError,
          document: documentNodeQueryReverseGeocode,
          parserFn: _parserFn$Query$ReverseGeocode,
        );

  final OnQueryComplete$Query$ReverseGeocode? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$ReverseGeocode
    extends graphql.WatchQueryOptions<Query$ReverseGeocode> {
  WatchOptions$Query$ReverseGeocode({
    String? operationName,
    required Variables$Query$ReverseGeocode variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ReverseGeocode? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryReverseGeocode,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$ReverseGeocode,
        );
}

class FetchMoreOptions$Query$ReverseGeocode extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ReverseGeocode({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$ReverseGeocode variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryReverseGeocode,
        );
}

extension ClientExtension$Query$ReverseGeocode on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ReverseGeocode>> query$ReverseGeocode(
          Options$Query$ReverseGeocode options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$ReverseGeocode> watchQuery$ReverseGeocode(
          WatchOptions$Query$ReverseGeocode options) =>
      this.watchQuery(options);
  void writeQuery$ReverseGeocode({
    required Query$ReverseGeocode data,
    required Variables$Query$ReverseGeocode variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryReverseGeocode),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$ReverseGeocode? readQuery$ReverseGeocode({
    required Variables$Query$ReverseGeocode variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryReverseGeocode),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ReverseGeocode.fromJson(result);
  }
}

class Query$ReverseGeocode$reverseGeocode {
  Query$ReverseGeocode$reverseGeocode({
    required this.address,
    required this.point,
    this.$__typename = 'PlaceDTO',
  });

  factory Query$ReverseGeocode$reverseGeocode.fromJson(
      Map<String, dynamic> json) {
    final l$address = json['address'];
    final l$point = json['point'];
    final l$$__typename = json['__typename'];
    return Query$ReverseGeocode$reverseGeocode(
      address: (l$address as String),
      point: Query$ReverseGeocode$reverseGeocode$point.fromJson(
          (l$point as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String address;

  final Query$ReverseGeocode$reverseGeocode$point point;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$address = address;
    _resultData['address'] = l$address;
    final l$point = point;
    _resultData['point'] = l$point.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$address = address;
    final l$point = point;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$address,
      l$point,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ReverseGeocode$reverseGeocode ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    final l$point = point;
    final lOther$point = other.point;
    if (l$point != lOther$point) {
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

extension UtilityExtension$Query$ReverseGeocode$reverseGeocode
    on Query$ReverseGeocode$reverseGeocode {
  CopyWith$Query$ReverseGeocode$reverseGeocode<
          Query$ReverseGeocode$reverseGeocode>
      get copyWith => CopyWith$Query$ReverseGeocode$reverseGeocode(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ReverseGeocode$reverseGeocode<TRes> {
  factory CopyWith$Query$ReverseGeocode$reverseGeocode(
    Query$ReverseGeocode$reverseGeocode instance,
    TRes Function(Query$ReverseGeocode$reverseGeocode) then,
  ) = _CopyWithImpl$Query$ReverseGeocode$reverseGeocode;

  factory CopyWith$Query$ReverseGeocode$reverseGeocode.stub(TRes res) =
      _CopyWithStubImpl$Query$ReverseGeocode$reverseGeocode;

  TRes call({
    String? address,
    Query$ReverseGeocode$reverseGeocode$point? point,
    String? $__typename,
  });
  CopyWith$Query$ReverseGeocode$reverseGeocode$point<TRes> get point;
}

class _CopyWithImpl$Query$ReverseGeocode$reverseGeocode<TRes>
    implements CopyWith$Query$ReverseGeocode$reverseGeocode<TRes> {
  _CopyWithImpl$Query$ReverseGeocode$reverseGeocode(
    this._instance,
    this._then,
  );

  final Query$ReverseGeocode$reverseGeocode _instance;

  final TRes Function(Query$ReverseGeocode$reverseGeocode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? address = _undefined,
    Object? point = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ReverseGeocode$reverseGeocode(
        address: address == _undefined || address == null
            ? _instance.address
            : (address as String),
        point: point == _undefined || point == null
            ? _instance.point
            : (point as Query$ReverseGeocode$reverseGeocode$point),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$ReverseGeocode$reverseGeocode$point<TRes> get point {
    final local$point = _instance.point;
    return CopyWith$Query$ReverseGeocode$reverseGeocode$point(
        local$point, (e) => call(point: e));
  }
}

class _CopyWithStubImpl$Query$ReverseGeocode$reverseGeocode<TRes>
    implements CopyWith$Query$ReverseGeocode$reverseGeocode<TRes> {
  _CopyWithStubImpl$Query$ReverseGeocode$reverseGeocode(this._res);

  TRes _res;

  call({
    String? address,
    Query$ReverseGeocode$reverseGeocode$point? point,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$ReverseGeocode$reverseGeocode$point<TRes> get point =>
      CopyWith$Query$ReverseGeocode$reverseGeocode$point.stub(_res);
}

class Query$ReverseGeocode$reverseGeocode$point {
  Query$ReverseGeocode$reverseGeocode$point({
    required this.lat,
    required this.lng,
    this.$__typename = 'Point',
  });

  factory Query$ReverseGeocode$reverseGeocode$point.fromJson(
      Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lng = json['lng'];
    final l$$__typename = json['__typename'];
    return Query$ReverseGeocode$reverseGeocode$point(
      lat: (l$lat as num).toDouble(),
      lng: (l$lng as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final double lat;

  final double lng;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$lat = lat;
    _resultData['lat'] = l$lat;
    final l$lng = lng;
    _resultData['lng'] = l$lng;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$lat = lat;
    final l$lng = lng;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$lat,
      l$lng,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ReverseGeocode$reverseGeocode$point ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$lat = lat;
    final lOther$lat = other.lat;
    if (l$lat != lOther$lat) {
      return false;
    }
    final l$lng = lng;
    final lOther$lng = other.lng;
    if (l$lng != lOther$lng) {
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

extension UtilityExtension$Query$ReverseGeocode$reverseGeocode$point
    on Query$ReverseGeocode$reverseGeocode$point {
  CopyWith$Query$ReverseGeocode$reverseGeocode$point<
          Query$ReverseGeocode$reverseGeocode$point>
      get copyWith => CopyWith$Query$ReverseGeocode$reverseGeocode$point(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ReverseGeocode$reverseGeocode$point<TRes> {
  factory CopyWith$Query$ReverseGeocode$reverseGeocode$point(
    Query$ReverseGeocode$reverseGeocode$point instance,
    TRes Function(Query$ReverseGeocode$reverseGeocode$point) then,
  ) = _CopyWithImpl$Query$ReverseGeocode$reverseGeocode$point;

  factory CopyWith$Query$ReverseGeocode$reverseGeocode$point.stub(TRes res) =
      _CopyWithStubImpl$Query$ReverseGeocode$reverseGeocode$point;

  TRes call({
    double? lat,
    double? lng,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ReverseGeocode$reverseGeocode$point<TRes>
    implements CopyWith$Query$ReverseGeocode$reverseGeocode$point<TRes> {
  _CopyWithImpl$Query$ReverseGeocode$reverseGeocode$point(
    this._instance,
    this._then,
  );

  final Query$ReverseGeocode$reverseGeocode$point _instance;

  final TRes Function(Query$ReverseGeocode$reverseGeocode$point) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ReverseGeocode$reverseGeocode$point(
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lng: lng == _undefined || lng == null ? _instance.lng : (lng as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$ReverseGeocode$reverseGeocode$point<TRes>
    implements CopyWith$Query$ReverseGeocode$reverseGeocode$point<TRes> {
  _CopyWithStubImpl$Query$ReverseGeocode$reverseGeocode$point(this._res);

  TRes _res;

  call({
    double? lat,
    double? lng,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetPlaces {
  factory Variables$Query$GetPlaces({
    required String query,
    Input$PointInput? location,
    required int radius,
    required String language,
    required Enum$GeoProvider provider,
  }) =>
      Variables$Query$GetPlaces._({
        r'query': query,
        if (location != null) r'location': location,
        r'radius': radius,
        r'language': language,
        r'provider': provider,
      });

  Variables$Query$GetPlaces._(this._$data);

  factory Variables$Query$GetPlaces.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$query = data['query'];
    result$data['query'] = (l$query as String);
    if (data.containsKey('location')) {
      final l$location = data['location'];
      result$data['location'] = l$location == null
          ? null
          : Input$PointInput.fromJson((l$location as Map<String, dynamic>));
    }
    final l$radius = data['radius'];
    result$data['radius'] = (l$radius as int);
    final l$language = data['language'];
    result$data['language'] = (l$language as String);
    final l$provider = data['provider'];
    result$data['provider'] = fromJson$Enum$GeoProvider((l$provider as String));
    return Variables$Query$GetPlaces._(result$data);
  }

  Map<String, dynamic> _$data;

  String get query => (_$data['query'] as String);

  Input$PointInput? get location => (_$data['location'] as Input$PointInput?);

  int get radius => (_$data['radius'] as int);

  String get language => (_$data['language'] as String);

  Enum$GeoProvider get provider => (_$data['provider'] as Enum$GeoProvider);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$query = query;
    result$data['query'] = l$query;
    if (_$data.containsKey('location')) {
      final l$location = location;
      result$data['location'] = l$location?.toJson();
    }
    final l$radius = radius;
    result$data['radius'] = l$radius;
    final l$language = language;
    result$data['language'] = l$language;
    final l$provider = provider;
    result$data['provider'] = toJson$Enum$GeoProvider(l$provider);
    return result$data;
  }

  CopyWith$Variables$Query$GetPlaces<Variables$Query$GetPlaces> get copyWith =>
      CopyWith$Variables$Query$GetPlaces(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetPlaces ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$query = query;
    final lOther$query = other.query;
    if (l$query != lOther$query) {
      return false;
    }
    final l$location = location;
    final lOther$location = other.location;
    if (_$data.containsKey('location') !=
        other._$data.containsKey('location')) {
      return false;
    }
    if (l$location != lOther$location) {
      return false;
    }
    final l$radius = radius;
    final lOther$radius = other.radius;
    if (l$radius != lOther$radius) {
      return false;
    }
    final l$language = language;
    final lOther$language = other.language;
    if (l$language != lOther$language) {
      return false;
    }
    final l$provider = provider;
    final lOther$provider = other.provider;
    if (l$provider != lOther$provider) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$query = query;
    final l$location = location;
    final l$radius = radius;
    final l$language = language;
    final l$provider = provider;
    return Object.hashAll([
      l$query,
      _$data.containsKey('location') ? l$location : const {},
      l$radius,
      l$language,
      l$provider,
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetPlaces<TRes> {
  factory CopyWith$Variables$Query$GetPlaces(
    Variables$Query$GetPlaces instance,
    TRes Function(Variables$Query$GetPlaces) then,
  ) = _CopyWithImpl$Variables$Query$GetPlaces;

  factory CopyWith$Variables$Query$GetPlaces.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetPlaces;

  TRes call({
    String? query,
    Input$PointInput? location,
    int? radius,
    String? language,
    Enum$GeoProvider? provider,
  });
}

class _CopyWithImpl$Variables$Query$GetPlaces<TRes>
    implements CopyWith$Variables$Query$GetPlaces<TRes> {
  _CopyWithImpl$Variables$Query$GetPlaces(
    this._instance,
    this._then,
  );

  final Variables$Query$GetPlaces _instance;

  final TRes Function(Variables$Query$GetPlaces) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? query = _undefined,
    Object? location = _undefined,
    Object? radius = _undefined,
    Object? language = _undefined,
    Object? provider = _undefined,
  }) =>
      _then(Variables$Query$GetPlaces._({
        ..._instance._$data,
        if (query != _undefined && query != null) 'query': (query as String),
        if (location != _undefined) 'location': (location as Input$PointInput?),
        if (radius != _undefined && radius != null) 'radius': (radius as int),
        if (language != _undefined && language != null)
          'language': (language as String),
        if (provider != _undefined && provider != null)
          'provider': (provider as Enum$GeoProvider),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetPlaces<TRes>
    implements CopyWith$Variables$Query$GetPlaces<TRes> {
  _CopyWithStubImpl$Variables$Query$GetPlaces(this._res);

  TRes _res;

  call({
    String? query,
    Input$PointInput? location,
    int? radius,
    String? language,
    Enum$GeoProvider? provider,
  }) =>
      _res;
}

class Query$GetPlaces {
  Query$GetPlaces({
    required this.getPlaces,
    this.$__typename = 'Query',
  });

  factory Query$GetPlaces.fromJson(Map<String, dynamic> json) {
    final l$getPlaces = json['getPlaces'];
    final l$$__typename = json['__typename'];
    return Query$GetPlaces(
      getPlaces: (l$getPlaces as List<dynamic>)
          .map((e) =>
              Query$GetPlaces$getPlaces.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetPlaces$getPlaces> getPlaces;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$getPlaces = getPlaces;
    _resultData['getPlaces'] = l$getPlaces.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$getPlaces = getPlaces;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$getPlaces.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetPlaces || runtimeType != other.runtimeType) {
      return false;
    }
    final l$getPlaces = getPlaces;
    final lOther$getPlaces = other.getPlaces;
    if (l$getPlaces.length != lOther$getPlaces.length) {
      return false;
    }
    for (int i = 0; i < l$getPlaces.length; i++) {
      final l$getPlaces$entry = l$getPlaces[i];
      final lOther$getPlaces$entry = lOther$getPlaces[i];
      if (l$getPlaces$entry != lOther$getPlaces$entry) {
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

extension UtilityExtension$Query$GetPlaces on Query$GetPlaces {
  CopyWith$Query$GetPlaces<Query$GetPlaces> get copyWith =>
      CopyWith$Query$GetPlaces(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetPlaces<TRes> {
  factory CopyWith$Query$GetPlaces(
    Query$GetPlaces instance,
    TRes Function(Query$GetPlaces) then,
  ) = _CopyWithImpl$Query$GetPlaces;

  factory CopyWith$Query$GetPlaces.stub(TRes res) =
      _CopyWithStubImpl$Query$GetPlaces;

  TRes call({
    List<Query$GetPlaces$getPlaces>? getPlaces,
    String? $__typename,
  });
  TRes getPlaces(
      Iterable<Query$GetPlaces$getPlaces> Function(
              Iterable<
                  CopyWith$Query$GetPlaces$getPlaces<
                      Query$GetPlaces$getPlaces>>)
          _fn);
}

class _CopyWithImpl$Query$GetPlaces<TRes>
    implements CopyWith$Query$GetPlaces<TRes> {
  _CopyWithImpl$Query$GetPlaces(
    this._instance,
    this._then,
  );

  final Query$GetPlaces _instance;

  final TRes Function(Query$GetPlaces) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? getPlaces = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPlaces(
        getPlaces: getPlaces == _undefined || getPlaces == null
            ? _instance.getPlaces
            : (getPlaces as List<Query$GetPlaces$getPlaces>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes getPlaces(
          Iterable<Query$GetPlaces$getPlaces> Function(
                  Iterable<
                      CopyWith$Query$GetPlaces$getPlaces<
                          Query$GetPlaces$getPlaces>>)
              _fn) =>
      call(
          getPlaces: _fn(
              _instance.getPlaces.map((e) => CopyWith$Query$GetPlaces$getPlaces(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetPlaces<TRes>
    implements CopyWith$Query$GetPlaces<TRes> {
  _CopyWithStubImpl$Query$GetPlaces(this._res);

  TRes _res;

  call({
    List<Query$GetPlaces$getPlaces>? getPlaces,
    String? $__typename,
  }) =>
      _res;

  getPlaces(_fn) => _res;
}

const documentNodeQueryGetPlaces = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetPlaces'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'query')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'location')),
        type: NamedTypeNode(
          name: NameNode(value: 'PointInput'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'radius')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'language')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'provider')),
        type: NamedTypeNode(
          name: NameNode(value: 'GeoProvider'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'getPlaces'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'keyword'),
            value: VariableNode(name: NameNode(value: 'query')),
          ),
          ArgumentNode(
            name: NameNode(value: 'location'),
            value: VariableNode(name: NameNode(value: 'location')),
          ),
          ArgumentNode(
            name: NameNode(value: 'radius'),
            value: VariableNode(name: NameNode(value: 'radius')),
          ),
          ArgumentNode(
            name: NameNode(value: 'language'),
            value: VariableNode(name: NameNode(value: 'language')),
          ),
          ArgumentNode(
            name: NameNode(value: 'provider'),
            value: VariableNode(name: NameNode(value: 'provider')),
          ),
        ],
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
            name: NameNode(value: 'title'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'point'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'lat'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'lng'),
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
]);
Query$GetPlaces _parserFn$Query$GetPlaces(Map<String, dynamic> data) =>
    Query$GetPlaces.fromJson(data);
typedef OnQueryComplete$Query$GetPlaces = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetPlaces?,
);

class Options$Query$GetPlaces extends graphql.QueryOptions<Query$GetPlaces> {
  Options$Query$GetPlaces({
    String? operationName,
    required Variables$Query$GetPlaces variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetPlaces? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetPlaces? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$GetPlaces(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetPlaces,
          parserFn: _parserFn$Query$GetPlaces,
        );

  final OnQueryComplete$Query$GetPlaces? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetPlaces
    extends graphql.WatchQueryOptions<Query$GetPlaces> {
  WatchOptions$Query$GetPlaces({
    String? operationName,
    required Variables$Query$GetPlaces variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetPlaces? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryGetPlaces,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetPlaces,
        );
}

class FetchMoreOptions$Query$GetPlaces extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetPlaces({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetPlaces variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetPlaces,
        );
}

extension ClientExtension$Query$GetPlaces on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetPlaces>> query$GetPlaces(
          Options$Query$GetPlaces options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$GetPlaces> watchQuery$GetPlaces(
          WatchOptions$Query$GetPlaces options) =>
      this.watchQuery(options);
  void writeQuery$GetPlaces({
    required Query$GetPlaces data,
    required Variables$Query$GetPlaces variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetPlaces),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetPlaces? readQuery$GetPlaces({
    required Variables$Query$GetPlaces variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetPlaces),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetPlaces.fromJson(result);
  }
}

class Query$GetPlaces$getPlaces {
  Query$GetPlaces$getPlaces({
    required this.address,
    this.title,
    required this.point,
    this.$__typename = 'PlaceDTO',
  });

  factory Query$GetPlaces$getPlaces.fromJson(Map<String, dynamic> json) {
    final l$address = json['address'];
    final l$title = json['title'];
    final l$point = json['point'];
    final l$$__typename = json['__typename'];
    return Query$GetPlaces$getPlaces(
      address: (l$address as String),
      title: (l$title as String?),
      point: Query$GetPlaces$getPlaces$point.fromJson(
          (l$point as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String address;

  final String? title;

  final Query$GetPlaces$getPlaces$point point;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$address = address;
    _resultData['address'] = l$address;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$point = point;
    _resultData['point'] = l$point.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$address = address;
    final l$title = title;
    final l$point = point;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$address,
      l$title,
      l$point,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetPlaces$getPlaces ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$point = point;
    final lOther$point = other.point;
    if (l$point != lOther$point) {
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

extension UtilityExtension$Query$GetPlaces$getPlaces
    on Query$GetPlaces$getPlaces {
  CopyWith$Query$GetPlaces$getPlaces<Query$GetPlaces$getPlaces> get copyWith =>
      CopyWith$Query$GetPlaces$getPlaces(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetPlaces$getPlaces<TRes> {
  factory CopyWith$Query$GetPlaces$getPlaces(
    Query$GetPlaces$getPlaces instance,
    TRes Function(Query$GetPlaces$getPlaces) then,
  ) = _CopyWithImpl$Query$GetPlaces$getPlaces;

  factory CopyWith$Query$GetPlaces$getPlaces.stub(TRes res) =
      _CopyWithStubImpl$Query$GetPlaces$getPlaces;

  TRes call({
    String? address,
    String? title,
    Query$GetPlaces$getPlaces$point? point,
    String? $__typename,
  });
  CopyWith$Query$GetPlaces$getPlaces$point<TRes> get point;
}

class _CopyWithImpl$Query$GetPlaces$getPlaces<TRes>
    implements CopyWith$Query$GetPlaces$getPlaces<TRes> {
  _CopyWithImpl$Query$GetPlaces$getPlaces(
    this._instance,
    this._then,
  );

  final Query$GetPlaces$getPlaces _instance;

  final TRes Function(Query$GetPlaces$getPlaces) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? address = _undefined,
    Object? title = _undefined,
    Object? point = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPlaces$getPlaces(
        address: address == _undefined || address == null
            ? _instance.address
            : (address as String),
        title: title == _undefined ? _instance.title : (title as String?),
        point: point == _undefined || point == null
            ? _instance.point
            : (point as Query$GetPlaces$getPlaces$point),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetPlaces$getPlaces$point<TRes> get point {
    final local$point = _instance.point;
    return CopyWith$Query$GetPlaces$getPlaces$point(
        local$point, (e) => call(point: e));
  }
}

class _CopyWithStubImpl$Query$GetPlaces$getPlaces<TRes>
    implements CopyWith$Query$GetPlaces$getPlaces<TRes> {
  _CopyWithStubImpl$Query$GetPlaces$getPlaces(this._res);

  TRes _res;

  call({
    String? address,
    String? title,
    Query$GetPlaces$getPlaces$point? point,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetPlaces$getPlaces$point<TRes> get point =>
      CopyWith$Query$GetPlaces$getPlaces$point.stub(_res);
}

class Query$GetPlaces$getPlaces$point {
  Query$GetPlaces$getPlaces$point({
    required this.lat,
    required this.lng,
    this.$__typename = 'Point',
  });

  factory Query$GetPlaces$getPlaces$point.fromJson(Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lng = json['lng'];
    final l$$__typename = json['__typename'];
    return Query$GetPlaces$getPlaces$point(
      lat: (l$lat as num).toDouble(),
      lng: (l$lng as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final double lat;

  final double lng;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$lat = lat;
    _resultData['lat'] = l$lat;
    final l$lng = lng;
    _resultData['lng'] = l$lng;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$lat = lat;
    final l$lng = lng;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$lat,
      l$lng,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetPlaces$getPlaces$point ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$lat = lat;
    final lOther$lat = other.lat;
    if (l$lat != lOther$lat) {
      return false;
    }
    final l$lng = lng;
    final lOther$lng = other.lng;
    if (l$lng != lOther$lng) {
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

extension UtilityExtension$Query$GetPlaces$getPlaces$point
    on Query$GetPlaces$getPlaces$point {
  CopyWith$Query$GetPlaces$getPlaces$point<Query$GetPlaces$getPlaces$point>
      get copyWith => CopyWith$Query$GetPlaces$getPlaces$point(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetPlaces$getPlaces$point<TRes> {
  factory CopyWith$Query$GetPlaces$getPlaces$point(
    Query$GetPlaces$getPlaces$point instance,
    TRes Function(Query$GetPlaces$getPlaces$point) then,
  ) = _CopyWithImpl$Query$GetPlaces$getPlaces$point;

  factory CopyWith$Query$GetPlaces$getPlaces$point.stub(TRes res) =
      _CopyWithStubImpl$Query$GetPlaces$getPlaces$point;

  TRes call({
    double? lat,
    double? lng,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetPlaces$getPlaces$point<TRes>
    implements CopyWith$Query$GetPlaces$getPlaces$point<TRes> {
  _CopyWithImpl$Query$GetPlaces$getPlaces$point(
    this._instance,
    this._then,
  );

  final Query$GetPlaces$getPlaces$point _instance;

  final TRes Function(Query$GetPlaces$getPlaces$point) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPlaces$getPlaces$point(
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lng: lng == _undefined || lng == null ? _instance.lng : (lng as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetPlaces$getPlaces$point<TRes>
    implements CopyWith$Query$GetPlaces$getPlaces$point<TRes> {
  _CopyWithStubImpl$Query$GetPlaces$getPlaces$point(this._res);

  TRes _res;

  call({
    double? lat,
    double? lng,
    String? $__typename,
  }) =>
      _res;
}
