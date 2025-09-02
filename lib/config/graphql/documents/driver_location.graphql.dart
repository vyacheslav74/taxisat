import '../fragments/point.fragment.graphql.dart';
import '../schema.gql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Query$DriverLocation {
  factory Variables$Query$DriverLocation({required Input$PointInput point}) =>
      Variables$Query$DriverLocation._({
        r'point': point,
      });

  Variables$Query$DriverLocation._(this._$data);

  factory Variables$Query$DriverLocation.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$point = data['point'];
    result$data['point'] =
        Input$PointInput.fromJson((l$point as Map<String, dynamic>));
    return Variables$Query$DriverLocation._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$PointInput get point => (_$data['point'] as Input$PointInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$point = point;
    result$data['point'] = l$point.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$DriverLocation<Variables$Query$DriverLocation>
      get copyWith => CopyWith$Variables$Query$DriverLocation(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$DriverLocation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$point = point;
    final lOther$point = other.point;
    if (l$point != lOther$point) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$point = point;
    return Object.hashAll([l$point]);
  }
}

abstract class CopyWith$Variables$Query$DriverLocation<TRes> {
  factory CopyWith$Variables$Query$DriverLocation(
    Variables$Query$DriverLocation instance,
    TRes Function(Variables$Query$DriverLocation) then,
  ) = _CopyWithImpl$Variables$Query$DriverLocation;

  factory CopyWith$Variables$Query$DriverLocation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$DriverLocation;

  TRes call({Input$PointInput? point});
}

class _CopyWithImpl$Variables$Query$DriverLocation<TRes>
    implements CopyWith$Variables$Query$DriverLocation<TRes> {
  _CopyWithImpl$Variables$Query$DriverLocation(
    this._instance,
    this._then,
  );

  final Variables$Query$DriverLocation _instance;

  final TRes Function(Variables$Query$DriverLocation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? point = _undefined}) =>
      _then(Variables$Query$DriverLocation._({
        ..._instance._$data,
        if (point != _undefined && point != null)
          'point': (point as Input$PointInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$DriverLocation<TRes>
    implements CopyWith$Variables$Query$DriverLocation<TRes> {
  _CopyWithStubImpl$Variables$Query$DriverLocation(this._res);

  TRes _res;

  call({Input$PointInput? point}) => _res;
}

class Query$DriverLocation {
  Query$DriverLocation({
    required this.getDriversLocation,
    this.$__typename = 'Query',
  });

  factory Query$DriverLocation.fromJson(Map<String, dynamic> json) {
    final l$getDriversLocation = json['getDriversLocation'];
    final l$$__typename = json['__typename'];
    return Query$DriverLocation(
      getDriversLocation: (l$getDriversLocation as List<dynamic>)
          .map((e) => Query$DriverLocation$getDriversLocation.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$DriverLocation$getDriversLocation> getDriversLocation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$getDriversLocation = getDriversLocation;
    _resultData['getDriversLocation'] =
        l$getDriversLocation.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$getDriversLocation = getDriversLocation;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$getDriversLocation.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$DriverLocation || runtimeType != other.runtimeType) {
      return false;
    }
    final l$getDriversLocation = getDriversLocation;
    final lOther$getDriversLocation = other.getDriversLocation;
    if (l$getDriversLocation.length != lOther$getDriversLocation.length) {
      return false;
    }
    for (int i = 0; i < l$getDriversLocation.length; i++) {
      final l$getDriversLocation$entry = l$getDriversLocation[i];
      final lOther$getDriversLocation$entry = lOther$getDriversLocation[i];
      if (l$getDriversLocation$entry != lOther$getDriversLocation$entry) {
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

extension UtilityExtension$Query$DriverLocation on Query$DriverLocation {
  CopyWith$Query$DriverLocation<Query$DriverLocation> get copyWith =>
      CopyWith$Query$DriverLocation(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$DriverLocation<TRes> {
  factory CopyWith$Query$DriverLocation(
    Query$DriverLocation instance,
    TRes Function(Query$DriverLocation) then,
  ) = _CopyWithImpl$Query$DriverLocation;

  factory CopyWith$Query$DriverLocation.stub(TRes res) =
      _CopyWithStubImpl$Query$DriverLocation;

  TRes call({
    List<Query$DriverLocation$getDriversLocation>? getDriversLocation,
    String? $__typename,
  });
  TRes getDriversLocation(
      Iterable<Query$DriverLocation$getDriversLocation> Function(
              Iterable<
                  CopyWith$Query$DriverLocation$getDriversLocation<
                      Query$DriverLocation$getDriversLocation>>)
          _fn);
}

class _CopyWithImpl$Query$DriverLocation<TRes>
    implements CopyWith$Query$DriverLocation<TRes> {
  _CopyWithImpl$Query$DriverLocation(
    this._instance,
    this._then,
  );

  final Query$DriverLocation _instance;

  final TRes Function(Query$DriverLocation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? getDriversLocation = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$DriverLocation(
        getDriversLocation:
            getDriversLocation == _undefined || getDriversLocation == null
                ? _instance.getDriversLocation
                : (getDriversLocation
                    as List<Query$DriverLocation$getDriversLocation>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes getDriversLocation(
          Iterable<Query$DriverLocation$getDriversLocation> Function(
                  Iterable<
                      CopyWith$Query$DriverLocation$getDriversLocation<
                          Query$DriverLocation$getDriversLocation>>)
              _fn) =>
      call(
          getDriversLocation: _fn(_instance.getDriversLocation
              .map((e) => CopyWith$Query$DriverLocation$getDriversLocation(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$DriverLocation<TRes>
    implements CopyWith$Query$DriverLocation<TRes> {
  _CopyWithStubImpl$Query$DriverLocation(this._res);

  TRes _res;

  call({
    List<Query$DriverLocation$getDriversLocation>? getDriversLocation,
    String? $__typename,
  }) =>
      _res;

  getDriversLocation(_fn) => _res;
}

const documentNodeQueryDriverLocation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'DriverLocation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'point')),
        type: NamedTypeNode(
          name: NameNode(value: 'PointInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'getDriversLocation'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'center'),
            value: VariableNode(name: NameNode(value: 'point')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'PointFragment'),
            directives: [],
          ),
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
  fragmentDefinitionPointFragment,
]);
Query$DriverLocation _parserFn$Query$DriverLocation(
        Map<String, dynamic> data) =>
    Query$DriverLocation.fromJson(data);
typedef OnQueryComplete$Query$DriverLocation = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$DriverLocation?,
);

class Options$Query$DriverLocation
    extends graphql.QueryOptions<Query$DriverLocation> {
  Options$Query$DriverLocation({
    String? operationName,
    required Variables$Query$DriverLocation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$DriverLocation? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$DriverLocation? onComplete,
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
                    data == null ? null : _parserFn$Query$DriverLocation(data),
                  ),
          onError: onError,
          document: documentNodeQueryDriverLocation,
          parserFn: _parserFn$Query$DriverLocation,
        );

  final OnQueryComplete$Query$DriverLocation? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$DriverLocation
    extends graphql.WatchQueryOptions<Query$DriverLocation> {
  WatchOptions$Query$DriverLocation({
    String? operationName,
    required Variables$Query$DriverLocation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$DriverLocation? typedOptimisticResult,
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
          document: documentNodeQueryDriverLocation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$DriverLocation,
        );
}

class FetchMoreOptions$Query$DriverLocation extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$DriverLocation({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$DriverLocation variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryDriverLocation,
        );
}

extension ClientExtension$Query$DriverLocation on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$DriverLocation>> query$DriverLocation(
          Options$Query$DriverLocation options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$DriverLocation> watchQuery$DriverLocation(
          WatchOptions$Query$DriverLocation options) =>
      this.watchQuery(options);
  void writeQuery$DriverLocation({
    required Query$DriverLocation data,
    required Variables$Query$DriverLocation variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryDriverLocation),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$DriverLocation? readQuery$DriverLocation({
    required Variables$Query$DriverLocation variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryDriverLocation),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$DriverLocation.fromJson(result);
  }
}

class Query$DriverLocation$getDriversLocation
    implements Fragment$PointFragment {
  Query$DriverLocation$getDriversLocation({
    required this.lat,
    required this.lng,
    this.heading,
    this.$__typename = 'Point',
  });

  factory Query$DriverLocation$getDriversLocation.fromJson(
      Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lng = json['lng'];
    final l$heading = json['heading'];
    final l$$__typename = json['__typename'];
    return Query$DriverLocation$getDriversLocation(
      lat: (l$lat as num).toDouble(),
      lng: (l$lng as num).toDouble(),
      heading: (l$heading as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final double lat;

  final double lng;

  final int? heading;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$lat = lat;
    _resultData['lat'] = l$lat;
    final l$lng = lng;
    _resultData['lng'] = l$lng;
    final l$heading = heading;
    _resultData['heading'] = l$heading;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$lat = lat;
    final l$lng = lng;
    final l$heading = heading;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$lat,
      l$lng,
      l$heading,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$DriverLocation$getDriversLocation ||
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
    final l$heading = heading;
    final lOther$heading = other.heading;
    if (l$heading != lOther$heading) {
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

extension UtilityExtension$Query$DriverLocation$getDriversLocation
    on Query$DriverLocation$getDriversLocation {
  CopyWith$Query$DriverLocation$getDriversLocation<
          Query$DriverLocation$getDriversLocation>
      get copyWith => CopyWith$Query$DriverLocation$getDriversLocation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$DriverLocation$getDriversLocation<TRes> {
  factory CopyWith$Query$DriverLocation$getDriversLocation(
    Query$DriverLocation$getDriversLocation instance,
    TRes Function(Query$DriverLocation$getDriversLocation) then,
  ) = _CopyWithImpl$Query$DriverLocation$getDriversLocation;

  factory CopyWith$Query$DriverLocation$getDriversLocation.stub(TRes res) =
      _CopyWithStubImpl$Query$DriverLocation$getDriversLocation;

  TRes call({
    double? lat,
    double? lng,
    int? heading,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$DriverLocation$getDriversLocation<TRes>
    implements CopyWith$Query$DriverLocation$getDriversLocation<TRes> {
  _CopyWithImpl$Query$DriverLocation$getDriversLocation(
    this._instance,
    this._then,
  );

  final Query$DriverLocation$getDriversLocation _instance;

  final TRes Function(Query$DriverLocation$getDriversLocation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
    Object? heading = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$DriverLocation$getDriversLocation(
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lng: lng == _undefined || lng == null ? _instance.lng : (lng as double),
        heading: heading == _undefined ? _instance.heading : (heading as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$DriverLocation$getDriversLocation<TRes>
    implements CopyWith$Query$DriverLocation$getDriversLocation<TRes> {
  _CopyWithStubImpl$Query$DriverLocation$getDriversLocation(this._res);

  TRes _res;

  call({
    double? lat,
    double? lng,
    int? heading,
    String? $__typename,
  }) =>
      _res;
}
