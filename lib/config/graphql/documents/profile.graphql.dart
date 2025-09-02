import '../fragments/favorite_driver.fragment.graphql.dart';
import '../fragments/media.fragment.graphql.dart';
import '../fragments/profile.fragment.graphql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Query$Profile {
  Query$Profile({
    required this.rider,
    this.$__typename = 'Query',
  });

  factory Query$Profile.fromJson(Map<String, dynamic> json) {
    final l$rider = json['rider'];
    final l$$__typename = json['__typename'];
    return Query$Profile(
      rider:
          Fragment$ProfileFragment.fromJson((l$rider as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$ProfileFragment rider;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$rider = rider;
    _resultData['rider'] = l$rider.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$rider = rider;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$rider,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Profile || runtimeType != other.runtimeType) {
      return false;
    }
    final l$rider = rider;
    final lOther$rider = other.rider;
    if (l$rider != lOther$rider) {
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

extension UtilityExtension$Query$Profile on Query$Profile {
  CopyWith$Query$Profile<Query$Profile> get copyWith => CopyWith$Query$Profile(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Profile<TRes> {
  factory CopyWith$Query$Profile(
    Query$Profile instance,
    TRes Function(Query$Profile) then,
  ) = _CopyWithImpl$Query$Profile;

  factory CopyWith$Query$Profile.stub(TRes res) =
      _CopyWithStubImpl$Query$Profile;

  TRes call({
    Fragment$ProfileFragment? rider,
    String? $__typename,
  });
  CopyWith$Fragment$ProfileFragment<TRes> get rider;
}

class _CopyWithImpl$Query$Profile<TRes>
    implements CopyWith$Query$Profile<TRes> {
  _CopyWithImpl$Query$Profile(
    this._instance,
    this._then,
  );

  final Query$Profile _instance;

  final TRes Function(Query$Profile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? rider = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Profile(
        rider: rider == _undefined || rider == null
            ? _instance.rider
            : (rider as Fragment$ProfileFragment),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ProfileFragment<TRes> get rider {
    final local$rider = _instance.rider;
    return CopyWith$Fragment$ProfileFragment(
        local$rider, (e) => call(rider: e));
  }
}

class _CopyWithStubImpl$Query$Profile<TRes>
    implements CopyWith$Query$Profile<TRes> {
  _CopyWithStubImpl$Query$Profile(this._res);

  TRes _res;

  call({
    Fragment$ProfileFragment? rider,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ProfileFragment<TRes> get rider =>
      CopyWith$Fragment$ProfileFragment.stub(_res);
}

const documentNodeQueryProfile = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Profile'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'rider'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: StringValueNode(
              value: '1',
              isBlock: false,
            ),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'ProfileFragment'),
            directives: [],
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
  fragmentDefinitionProfileFragment,
  fragmentDefinitionMediaFragment,
]);
Query$Profile _parserFn$Query$Profile(Map<String, dynamic> data) =>
    Query$Profile.fromJson(data);
typedef OnQueryComplete$Query$Profile = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Profile?,
);

class Options$Query$Profile extends graphql.QueryOptions<Query$Profile> {
  Options$Query$Profile({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Profile? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Profile? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
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
                    data == null ? null : _parserFn$Query$Profile(data),
                  ),
          onError: onError,
          document: documentNodeQueryProfile,
          parserFn: _parserFn$Query$Profile,
        );

  final OnQueryComplete$Query$Profile? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Profile
    extends graphql.WatchQueryOptions<Query$Profile> {
  WatchOptions$Query$Profile({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Profile? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryProfile,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Profile,
        );
}

class FetchMoreOptions$Query$Profile extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Profile({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryProfile,
        );
}

extension ClientExtension$Query$Profile on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Profile>> query$Profile(
          [Options$Query$Profile? options]) async =>
      await this.query(options ?? Options$Query$Profile());
  graphql.ObservableQuery<Query$Profile> watchQuery$Profile(
          [WatchOptions$Query$Profile? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Profile());
  void writeQuery$Profile({
    required Query$Profile data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryProfile)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Profile? readQuery$Profile({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryProfile)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Profile.fromJson(result);
  }
}

class Query$ProfileAggregations {
  Query$ProfileAggregations({
    required this.rider,
    this.$__typename = 'Query',
  });

  factory Query$ProfileAggregations.fromJson(Map<String, dynamic> json) {
    final l$rider = json['rider'];
    final l$$__typename = json['__typename'];
    return Query$ProfileAggregations(
      rider: Query$ProfileAggregations$rider.fromJson(
          (l$rider as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ProfileAggregations$rider rider;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$rider = rider;
    _resultData['rider'] = l$rider.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$rider = rider;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$rider,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ProfileAggregations ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$rider = rider;
    final lOther$rider = other.rider;
    if (l$rider != lOther$rider) {
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

extension UtilityExtension$Query$ProfileAggregations
    on Query$ProfileAggregations {
  CopyWith$Query$ProfileAggregations<Query$ProfileAggregations> get copyWith =>
      CopyWith$Query$ProfileAggregations(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ProfileAggregations<TRes> {
  factory CopyWith$Query$ProfileAggregations(
    Query$ProfileAggregations instance,
    TRes Function(Query$ProfileAggregations) then,
  ) = _CopyWithImpl$Query$ProfileAggregations;

  factory CopyWith$Query$ProfileAggregations.stub(TRes res) =
      _CopyWithStubImpl$Query$ProfileAggregations;

  TRes call({
    Query$ProfileAggregations$rider? rider,
    String? $__typename,
  });
  CopyWith$Query$ProfileAggregations$rider<TRes> get rider;
}

class _CopyWithImpl$Query$ProfileAggregations<TRes>
    implements CopyWith$Query$ProfileAggregations<TRes> {
  _CopyWithImpl$Query$ProfileAggregations(
    this._instance,
    this._then,
  );

  final Query$ProfileAggregations _instance;

  final TRes Function(Query$ProfileAggregations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? rider = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ProfileAggregations(
        rider: rider == _undefined || rider == null
            ? _instance.rider
            : (rider as Query$ProfileAggregations$rider),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$ProfileAggregations$rider<TRes> get rider {
    final local$rider = _instance.rider;
    return CopyWith$Query$ProfileAggregations$rider(
        local$rider, (e) => call(rider: e));
  }
}

class _CopyWithStubImpl$Query$ProfileAggregations<TRes>
    implements CopyWith$Query$ProfileAggregations<TRes> {
  _CopyWithStubImpl$Query$ProfileAggregations(this._res);

  TRes _res;

  call({
    Query$ProfileAggregations$rider? rider,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$ProfileAggregations$rider<TRes> get rider =>
      CopyWith$Query$ProfileAggregations$rider.stub(_res);
}

const documentNodeQueryProfileAggregations = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ProfileAggregations'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'rider'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: StringValueNode(
              value: '1',
              isBlock: false,
            ),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'ordersAggregate'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'filter'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'status'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: 'eq'),
                        value: EnumValueNode(name: NameNode(value: 'Finished')),
                      )
                    ]),
                  )
                ]),
              )
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'count'),
                alias: null,
                arguments: [],
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
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'sum'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'distanceBest'),
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
            name: NameNode(value: 'favoriteDriversAggregate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'count'),
                alias: null,
                arguments: [],
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
Query$ProfileAggregations _parserFn$Query$ProfileAggregations(
        Map<String, dynamic> data) =>
    Query$ProfileAggregations.fromJson(data);
typedef OnQueryComplete$Query$ProfileAggregations = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$ProfileAggregations?,
);

class Options$Query$ProfileAggregations
    extends graphql.QueryOptions<Query$ProfileAggregations> {
  Options$Query$ProfileAggregations({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ProfileAggregations? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ProfileAggregations? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
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
                    data == null
                        ? null
                        : _parserFn$Query$ProfileAggregations(data),
                  ),
          onError: onError,
          document: documentNodeQueryProfileAggregations,
          parserFn: _parserFn$Query$ProfileAggregations,
        );

  final OnQueryComplete$Query$ProfileAggregations? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$ProfileAggregations
    extends graphql.WatchQueryOptions<Query$ProfileAggregations> {
  WatchOptions$Query$ProfileAggregations({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ProfileAggregations? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryProfileAggregations,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$ProfileAggregations,
        );
}

class FetchMoreOptions$Query$ProfileAggregations
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ProfileAggregations(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryProfileAggregations,
        );
}

extension ClientExtension$Query$ProfileAggregations on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ProfileAggregations>>
      query$ProfileAggregations(
              [Options$Query$ProfileAggregations? options]) async =>
          await this.query(options ?? Options$Query$ProfileAggregations());
  graphql.ObservableQuery<Query$ProfileAggregations>
      watchQuery$ProfileAggregations(
              [WatchOptions$Query$ProfileAggregations? options]) =>
          this.watchQuery(options ?? WatchOptions$Query$ProfileAggregations());
  void writeQuery$ProfileAggregations({
    required Query$ProfileAggregations data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQueryProfileAggregations)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$ProfileAggregations? readQuery$ProfileAggregations(
      {bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryProfileAggregations)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ProfileAggregations.fromJson(result);
  }
}

class Query$ProfileAggregations$rider {
  Query$ProfileAggregations$rider({
    required this.ordersAggregate,
    required this.favoriteDriversAggregate,
    this.$__typename = 'Rider',
  });

  factory Query$ProfileAggregations$rider.fromJson(Map<String, dynamic> json) {
    final l$ordersAggregate = json['ordersAggregate'];
    final l$favoriteDriversAggregate = json['favoriteDriversAggregate'];
    final l$$__typename = json['__typename'];
    return Query$ProfileAggregations$rider(
      ordersAggregate: (l$ordersAggregate as List<dynamic>)
          .map((e) => Query$ProfileAggregations$rider$ordersAggregate.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      favoriteDriversAggregate: (l$favoriteDriversAggregate as List<dynamic>)
          .map((e) =>
              Query$ProfileAggregations$rider$favoriteDriversAggregate.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$ProfileAggregations$rider$ordersAggregate> ordersAggregate;

  final List<Query$ProfileAggregations$rider$favoriteDriversAggregate>
      favoriteDriversAggregate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$ordersAggregate = ordersAggregate;
    _resultData['ordersAggregate'] =
        l$ordersAggregate.map((e) => e.toJson()).toList();
    final l$favoriteDriversAggregate = favoriteDriversAggregate;
    _resultData['favoriteDriversAggregate'] =
        l$favoriteDriversAggregate.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$ordersAggregate = ordersAggregate;
    final l$favoriteDriversAggregate = favoriteDriversAggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$ordersAggregate.map((v) => v)),
      Object.hashAll(l$favoriteDriversAggregate.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ProfileAggregations$rider ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ordersAggregate = ordersAggregate;
    final lOther$ordersAggregate = other.ordersAggregate;
    if (l$ordersAggregate.length != lOther$ordersAggregate.length) {
      return false;
    }
    for (int i = 0; i < l$ordersAggregate.length; i++) {
      final l$ordersAggregate$entry = l$ordersAggregate[i];
      final lOther$ordersAggregate$entry = lOther$ordersAggregate[i];
      if (l$ordersAggregate$entry != lOther$ordersAggregate$entry) {
        return false;
      }
    }
    final l$favoriteDriversAggregate = favoriteDriversAggregate;
    final lOther$favoriteDriversAggregate = other.favoriteDriversAggregate;
    if (l$favoriteDriversAggregate.length !=
        lOther$favoriteDriversAggregate.length) {
      return false;
    }
    for (int i = 0; i < l$favoriteDriversAggregate.length; i++) {
      final l$favoriteDriversAggregate$entry = l$favoriteDriversAggregate[i];
      final lOther$favoriteDriversAggregate$entry =
          lOther$favoriteDriversAggregate[i];
      if (l$favoriteDriversAggregate$entry !=
          lOther$favoriteDriversAggregate$entry) {
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

extension UtilityExtension$Query$ProfileAggregations$rider
    on Query$ProfileAggregations$rider {
  CopyWith$Query$ProfileAggregations$rider<Query$ProfileAggregations$rider>
      get copyWith => CopyWith$Query$ProfileAggregations$rider(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ProfileAggregations$rider<TRes> {
  factory CopyWith$Query$ProfileAggregations$rider(
    Query$ProfileAggregations$rider instance,
    TRes Function(Query$ProfileAggregations$rider) then,
  ) = _CopyWithImpl$Query$ProfileAggregations$rider;

  factory CopyWith$Query$ProfileAggregations$rider.stub(TRes res) =
      _CopyWithStubImpl$Query$ProfileAggregations$rider;

  TRes call({
    List<Query$ProfileAggregations$rider$ordersAggregate>? ordersAggregate,
    List<Query$ProfileAggregations$rider$favoriteDriversAggregate>?
        favoriteDriversAggregate,
    String? $__typename,
  });
  TRes ordersAggregate(
      Iterable<Query$ProfileAggregations$rider$ordersAggregate> Function(
              Iterable<
                  CopyWith$Query$ProfileAggregations$rider$ordersAggregate<
                      Query$ProfileAggregations$rider$ordersAggregate>>)
          _fn);
  TRes favoriteDriversAggregate(
      Iterable<Query$ProfileAggregations$rider$favoriteDriversAggregate> Function(
              Iterable<
                  CopyWith$Query$ProfileAggregations$rider$favoriteDriversAggregate<
                      Query$ProfileAggregations$rider$favoriteDriversAggregate>>)
          _fn);
}

class _CopyWithImpl$Query$ProfileAggregations$rider<TRes>
    implements CopyWith$Query$ProfileAggregations$rider<TRes> {
  _CopyWithImpl$Query$ProfileAggregations$rider(
    this._instance,
    this._then,
  );

  final Query$ProfileAggregations$rider _instance;

  final TRes Function(Query$ProfileAggregations$rider) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ordersAggregate = _undefined,
    Object? favoriteDriversAggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ProfileAggregations$rider(
        ordersAggregate:
            ordersAggregate == _undefined || ordersAggregate == null
                ? _instance.ordersAggregate
                : (ordersAggregate
                    as List<Query$ProfileAggregations$rider$ordersAggregate>),
        favoriteDriversAggregate: favoriteDriversAggregate == _undefined ||
                favoriteDriversAggregate == null
            ? _instance.favoriteDriversAggregate
            : (favoriteDriversAggregate as List<
                Query$ProfileAggregations$rider$favoriteDriversAggregate>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes ordersAggregate(
          Iterable<Query$ProfileAggregations$rider$ordersAggregate> Function(
                  Iterable<
                      CopyWith$Query$ProfileAggregations$rider$ordersAggregate<
                          Query$ProfileAggregations$rider$ordersAggregate>>)
              _fn) =>
      call(
          ordersAggregate: _fn(_instance.ordersAggregate.map(
              (e) => CopyWith$Query$ProfileAggregations$rider$ordersAggregate(
                    e,
                    (i) => i,
                  ))).toList());

  TRes favoriteDriversAggregate(
          Iterable<Query$ProfileAggregations$rider$favoriteDriversAggregate> Function(
                  Iterable<
                      CopyWith$Query$ProfileAggregations$rider$favoriteDriversAggregate<
                          Query$ProfileAggregations$rider$favoriteDriversAggregate>>)
              _fn) =>
      call(
          favoriteDriversAggregate: _fn(_instance.favoriteDriversAggregate.map(
              (e) =>
                  CopyWith$Query$ProfileAggregations$rider$favoriteDriversAggregate(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$ProfileAggregations$rider<TRes>
    implements CopyWith$Query$ProfileAggregations$rider<TRes> {
  _CopyWithStubImpl$Query$ProfileAggregations$rider(this._res);

  TRes _res;

  call({
    List<Query$ProfileAggregations$rider$ordersAggregate>? ordersAggregate,
    List<Query$ProfileAggregations$rider$favoriteDriversAggregate>?
        favoriteDriversAggregate,
    String? $__typename,
  }) =>
      _res;

  ordersAggregate(_fn) => _res;

  favoriteDriversAggregate(_fn) => _res;
}

class Query$ProfileAggregations$rider$ordersAggregate {
  Query$ProfileAggregations$rider$ordersAggregate({
    this.count,
    this.sum,
    this.$__typename = 'RiderOrdersAggregateResponse',
  });

  factory Query$ProfileAggregations$rider$ordersAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$sum = json['sum'];
    final l$$__typename = json['__typename'];
    return Query$ProfileAggregations$rider$ordersAggregate(
      count: l$count == null
          ? null
          : Query$ProfileAggregations$rider$ordersAggregate$count.fromJson(
              (l$count as Map<String, dynamic>)),
      sum: l$sum == null
          ? null
          : Query$ProfileAggregations$rider$ordersAggregate$sum.fromJson(
              (l$sum as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ProfileAggregations$rider$ordersAggregate$count? count;

  final Query$ProfileAggregations$rider$ordersAggregate$sum? sum;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count?.toJson();
    final l$sum = sum;
    _resultData['sum'] = l$sum?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$sum = sum;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$sum,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ProfileAggregations$rider$ordersAggregate ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$sum = sum;
    final lOther$sum = other.sum;
    if (l$sum != lOther$sum) {
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

extension UtilityExtension$Query$ProfileAggregations$rider$ordersAggregate
    on Query$ProfileAggregations$rider$ordersAggregate {
  CopyWith$Query$ProfileAggregations$rider$ordersAggregate<
          Query$ProfileAggregations$rider$ordersAggregate>
      get copyWith => CopyWith$Query$ProfileAggregations$rider$ordersAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ProfileAggregations$rider$ordersAggregate<TRes> {
  factory CopyWith$Query$ProfileAggregations$rider$ordersAggregate(
    Query$ProfileAggregations$rider$ordersAggregate instance,
    TRes Function(Query$ProfileAggregations$rider$ordersAggregate) then,
  ) = _CopyWithImpl$Query$ProfileAggregations$rider$ordersAggregate;

  factory CopyWith$Query$ProfileAggregations$rider$ordersAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ProfileAggregations$rider$ordersAggregate;

  TRes call({
    Query$ProfileAggregations$rider$ordersAggregate$count? count,
    Query$ProfileAggregations$rider$ordersAggregate$sum? sum,
    String? $__typename,
  });
  CopyWith$Query$ProfileAggregations$rider$ordersAggregate$count<TRes>
      get count;
  CopyWith$Query$ProfileAggregations$rider$ordersAggregate$sum<TRes> get sum;
}

class _CopyWithImpl$Query$ProfileAggregations$rider$ordersAggregate<TRes>
    implements CopyWith$Query$ProfileAggregations$rider$ordersAggregate<TRes> {
  _CopyWithImpl$Query$ProfileAggregations$rider$ordersAggregate(
    this._instance,
    this._then,
  );

  final Query$ProfileAggregations$rider$ordersAggregate _instance;

  final TRes Function(Query$ProfileAggregations$rider$ordersAggregate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? sum = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ProfileAggregations$rider$ordersAggregate(
        count: count == _undefined
            ? _instance.count
            : (count as Query$ProfileAggregations$rider$ordersAggregate$count?),
        sum: sum == _undefined
            ? _instance.sum
            : (sum as Query$ProfileAggregations$rider$ordersAggregate$sum?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$ProfileAggregations$rider$ordersAggregate$count<TRes>
      get count {
    final local$count = _instance.count;
    return local$count == null
        ? CopyWith$Query$ProfileAggregations$rider$ordersAggregate$count.stub(
            _then(_instance))
        : CopyWith$Query$ProfileAggregations$rider$ordersAggregate$count(
            local$count, (e) => call(count: e));
  }

  CopyWith$Query$ProfileAggregations$rider$ordersAggregate$sum<TRes> get sum {
    final local$sum = _instance.sum;
    return local$sum == null
        ? CopyWith$Query$ProfileAggregations$rider$ordersAggregate$sum.stub(
            _then(_instance))
        : CopyWith$Query$ProfileAggregations$rider$ordersAggregate$sum(
            local$sum, (e) => call(sum: e));
  }
}

class _CopyWithStubImpl$Query$ProfileAggregations$rider$ordersAggregate<TRes>
    implements CopyWith$Query$ProfileAggregations$rider$ordersAggregate<TRes> {
  _CopyWithStubImpl$Query$ProfileAggregations$rider$ordersAggregate(this._res);

  TRes _res;

  call({
    Query$ProfileAggregations$rider$ordersAggregate$count? count,
    Query$ProfileAggregations$rider$ordersAggregate$sum? sum,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$ProfileAggregations$rider$ordersAggregate$count<TRes>
      get count =>
          CopyWith$Query$ProfileAggregations$rider$ordersAggregate$count.stub(
              _res);

  CopyWith$Query$ProfileAggregations$rider$ordersAggregate$sum<TRes> get sum =>
      CopyWith$Query$ProfileAggregations$rider$ordersAggregate$sum.stub(_res);
}

class Query$ProfileAggregations$rider$ordersAggregate$count {
  Query$ProfileAggregations$rider$ordersAggregate$count({
    this.id,
    this.$__typename = 'RiderOrdersCountAggregate',
  });

  factory Query$ProfileAggregations$rider$ordersAggregate$count.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$ProfileAggregations$rider$ordersAggregate$count(
      id: (l$id as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ProfileAggregations$rider$ordersAggregate$count ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$ProfileAggregations$rider$ordersAggregate$count
    on Query$ProfileAggregations$rider$ordersAggregate$count {
  CopyWith$Query$ProfileAggregations$rider$ordersAggregate$count<
          Query$ProfileAggregations$rider$ordersAggregate$count>
      get copyWith =>
          CopyWith$Query$ProfileAggregations$rider$ordersAggregate$count(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ProfileAggregations$rider$ordersAggregate$count<
    TRes> {
  factory CopyWith$Query$ProfileAggregations$rider$ordersAggregate$count(
    Query$ProfileAggregations$rider$ordersAggregate$count instance,
    TRes Function(Query$ProfileAggregations$rider$ordersAggregate$count) then,
  ) = _CopyWithImpl$Query$ProfileAggregations$rider$ordersAggregate$count;

  factory CopyWith$Query$ProfileAggregations$rider$ordersAggregate$count.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ProfileAggregations$rider$ordersAggregate$count;

  TRes call({
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ProfileAggregations$rider$ordersAggregate$count<TRes>
    implements
        CopyWith$Query$ProfileAggregations$rider$ordersAggregate$count<TRes> {
  _CopyWithImpl$Query$ProfileAggregations$rider$ordersAggregate$count(
    this._instance,
    this._then,
  );

  final Query$ProfileAggregations$rider$ordersAggregate$count _instance;

  final TRes Function(Query$ProfileAggregations$rider$ordersAggregate$count)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ProfileAggregations$rider$ordersAggregate$count(
        id: id == _undefined ? _instance.id : (id as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$ProfileAggregations$rider$ordersAggregate$count<
        TRes>
    implements
        CopyWith$Query$ProfileAggregations$rider$ordersAggregate$count<TRes> {
  _CopyWithStubImpl$Query$ProfileAggregations$rider$ordersAggregate$count(
      this._res);

  TRes _res;

  call({
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$ProfileAggregations$rider$ordersAggregate$sum {
  Query$ProfileAggregations$rider$ordersAggregate$sum({
    this.distanceBest,
    this.$__typename = 'RiderOrdersSumAggregate',
  });

  factory Query$ProfileAggregations$rider$ordersAggregate$sum.fromJson(
      Map<String, dynamic> json) {
    final l$distanceBest = json['distanceBest'];
    final l$$__typename = json['__typename'];
    return Query$ProfileAggregations$rider$ordersAggregate$sum(
      distanceBest: (l$distanceBest as num?)?.toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final double? distanceBest;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$distanceBest = distanceBest;
    _resultData['distanceBest'] = l$distanceBest;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$distanceBest = distanceBest;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$distanceBest,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ProfileAggregations$rider$ordersAggregate$sum ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$distanceBest = distanceBest;
    final lOther$distanceBest = other.distanceBest;
    if (l$distanceBest != lOther$distanceBest) {
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

extension UtilityExtension$Query$ProfileAggregations$rider$ordersAggregate$sum
    on Query$ProfileAggregations$rider$ordersAggregate$sum {
  CopyWith$Query$ProfileAggregations$rider$ordersAggregate$sum<
          Query$ProfileAggregations$rider$ordersAggregate$sum>
      get copyWith =>
          CopyWith$Query$ProfileAggregations$rider$ordersAggregate$sum(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ProfileAggregations$rider$ordersAggregate$sum<
    TRes> {
  factory CopyWith$Query$ProfileAggregations$rider$ordersAggregate$sum(
    Query$ProfileAggregations$rider$ordersAggregate$sum instance,
    TRes Function(Query$ProfileAggregations$rider$ordersAggregate$sum) then,
  ) = _CopyWithImpl$Query$ProfileAggregations$rider$ordersAggregate$sum;

  factory CopyWith$Query$ProfileAggregations$rider$ordersAggregate$sum.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ProfileAggregations$rider$ordersAggregate$sum;

  TRes call({
    double? distanceBest,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ProfileAggregations$rider$ordersAggregate$sum<TRes>
    implements
        CopyWith$Query$ProfileAggregations$rider$ordersAggregate$sum<TRes> {
  _CopyWithImpl$Query$ProfileAggregations$rider$ordersAggregate$sum(
    this._instance,
    this._then,
  );

  final Query$ProfileAggregations$rider$ordersAggregate$sum _instance;

  final TRes Function(Query$ProfileAggregations$rider$ordersAggregate$sum)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? distanceBest = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ProfileAggregations$rider$ordersAggregate$sum(
        distanceBest: distanceBest == _undefined
            ? _instance.distanceBest
            : (distanceBest as double?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$ProfileAggregations$rider$ordersAggregate$sum<
        TRes>
    implements
        CopyWith$Query$ProfileAggregations$rider$ordersAggregate$sum<TRes> {
  _CopyWithStubImpl$Query$ProfileAggregations$rider$ordersAggregate$sum(
      this._res);

  TRes _res;

  call({
    double? distanceBest,
    String? $__typename,
  }) =>
      _res;
}

class Query$ProfileAggregations$rider$favoriteDriversAggregate {
  Query$ProfileAggregations$rider$favoriteDriversAggregate({
    this.count,
    this.$__typename = 'RiderFavoriteDriversAggregateResponse',
  });

  factory Query$ProfileAggregations$rider$favoriteDriversAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$$__typename = json['__typename'];
    return Query$ProfileAggregations$rider$favoriteDriversAggregate(
      count: l$count == null
          ? null
          : Query$ProfileAggregations$rider$favoriteDriversAggregate$count
              .fromJson((l$count as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ProfileAggregations$rider$favoriteDriversAggregate$count? count;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ProfileAggregations$rider$favoriteDriversAggregate ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
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

extension UtilityExtension$Query$ProfileAggregations$rider$favoriteDriversAggregate
    on Query$ProfileAggregations$rider$favoriteDriversAggregate {
  CopyWith$Query$ProfileAggregations$rider$favoriteDriversAggregate<
          Query$ProfileAggregations$rider$favoriteDriversAggregate>
      get copyWith =>
          CopyWith$Query$ProfileAggregations$rider$favoriteDriversAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ProfileAggregations$rider$favoriteDriversAggregate<
    TRes> {
  factory CopyWith$Query$ProfileAggregations$rider$favoriteDriversAggregate(
    Query$ProfileAggregations$rider$favoriteDriversAggregate instance,
    TRes Function(Query$ProfileAggregations$rider$favoriteDriversAggregate)
        then,
  ) = _CopyWithImpl$Query$ProfileAggregations$rider$favoriteDriversAggregate;

  factory CopyWith$Query$ProfileAggregations$rider$favoriteDriversAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ProfileAggregations$rider$favoriteDriversAggregate;

  TRes call({
    Query$ProfileAggregations$rider$favoriteDriversAggregate$count? count,
    String? $__typename,
  });
  CopyWith$Query$ProfileAggregations$rider$favoriteDriversAggregate$count<TRes>
      get count;
}

class _CopyWithImpl$Query$ProfileAggregations$rider$favoriteDriversAggregate<
        TRes>
    implements
        CopyWith$Query$ProfileAggregations$rider$favoriteDriversAggregate<
            TRes> {
  _CopyWithImpl$Query$ProfileAggregations$rider$favoriteDriversAggregate(
    this._instance,
    this._then,
  );

  final Query$ProfileAggregations$rider$favoriteDriversAggregate _instance;

  final TRes Function(Query$ProfileAggregations$rider$favoriteDriversAggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ProfileAggregations$rider$favoriteDriversAggregate(
        count: count == _undefined
            ? _instance.count
            : (count
                as Query$ProfileAggregations$rider$favoriteDriversAggregate$count?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$ProfileAggregations$rider$favoriteDriversAggregate$count<TRes>
      get count {
    final local$count = _instance.count;
    return local$count == null
        ? CopyWith$Query$ProfileAggregations$rider$favoriteDriversAggregate$count
            .stub(_then(_instance))
        : CopyWith$Query$ProfileAggregations$rider$favoriteDriversAggregate$count(
            local$count, (e) => call(count: e));
  }
}

class _CopyWithStubImpl$Query$ProfileAggregations$rider$favoriteDriversAggregate<
        TRes>
    implements
        CopyWith$Query$ProfileAggregations$rider$favoriteDriversAggregate<
            TRes> {
  _CopyWithStubImpl$Query$ProfileAggregations$rider$favoriteDriversAggregate(
      this._res);

  TRes _res;

  call({
    Query$ProfileAggregations$rider$favoriteDriversAggregate$count? count,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$ProfileAggregations$rider$favoriteDriversAggregate$count<TRes>
      get count =>
          CopyWith$Query$ProfileAggregations$rider$favoriteDriversAggregate$count
              .stub(_res);
}

class Query$ProfileAggregations$rider$favoriteDriversAggregate$count {
  Query$ProfileAggregations$rider$favoriteDriversAggregate$count({
    this.id,
    this.$__typename = 'RiderFavoriteDriversCountAggregate',
  });

  factory Query$ProfileAggregations$rider$favoriteDriversAggregate$count.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$ProfileAggregations$rider$favoriteDriversAggregate$count(
      id: (l$id as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$ProfileAggregations$rider$favoriteDriversAggregate$count ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$ProfileAggregations$rider$favoriteDriversAggregate$count
    on Query$ProfileAggregations$rider$favoriteDriversAggregate$count {
  CopyWith$Query$ProfileAggregations$rider$favoriteDriversAggregate$count<
          Query$ProfileAggregations$rider$favoriteDriversAggregate$count>
      get copyWith =>
          CopyWith$Query$ProfileAggregations$rider$favoriteDriversAggregate$count(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ProfileAggregations$rider$favoriteDriversAggregate$count<
    TRes> {
  factory CopyWith$Query$ProfileAggregations$rider$favoriteDriversAggregate$count(
    Query$ProfileAggregations$rider$favoriteDriversAggregate$count instance,
    TRes Function(
            Query$ProfileAggregations$rider$favoriteDriversAggregate$count)
        then,
  ) = _CopyWithImpl$Query$ProfileAggregations$rider$favoriteDriversAggregate$count;

  factory CopyWith$Query$ProfileAggregations$rider$favoriteDriversAggregate$count.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ProfileAggregations$rider$favoriteDriversAggregate$count;

  TRes call({
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ProfileAggregations$rider$favoriteDriversAggregate$count<
        TRes>
    implements
        CopyWith$Query$ProfileAggregations$rider$favoriteDriversAggregate$count<
            TRes> {
  _CopyWithImpl$Query$ProfileAggregations$rider$favoriteDriversAggregate$count(
    this._instance,
    this._then,
  );

  final Query$ProfileAggregations$rider$favoriteDriversAggregate$count
      _instance;

  final TRes Function(
      Query$ProfileAggregations$rider$favoriteDriversAggregate$count) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ProfileAggregations$rider$favoriteDriversAggregate$count(
        id: id == _undefined ? _instance.id : (id as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$ProfileAggregations$rider$favoriteDriversAggregate$count<
        TRes>
    implements
        CopyWith$Query$ProfileAggregations$rider$favoriteDriversAggregate$count<
            TRes> {
  _CopyWithStubImpl$Query$ProfileAggregations$rider$favoriteDriversAggregate$count(
      this._res);

  TRes _res;

  call({
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FavoriteDrivers {
  Query$FavoriteDrivers({
    required this.rider,
    this.$__typename = 'Query',
  });

  factory Query$FavoriteDrivers.fromJson(Map<String, dynamic> json) {
    final l$rider = json['rider'];
    final l$$__typename = json['__typename'];
    return Query$FavoriteDrivers(
      rider: Query$FavoriteDrivers$rider.fromJson(
          (l$rider as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FavoriteDrivers$rider rider;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$rider = rider;
    _resultData['rider'] = l$rider.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$rider = rider;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$rider,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FavoriteDrivers || runtimeType != other.runtimeType) {
      return false;
    }
    final l$rider = rider;
    final lOther$rider = other.rider;
    if (l$rider != lOther$rider) {
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

extension UtilityExtension$Query$FavoriteDrivers on Query$FavoriteDrivers {
  CopyWith$Query$FavoriteDrivers<Query$FavoriteDrivers> get copyWith =>
      CopyWith$Query$FavoriteDrivers(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FavoriteDrivers<TRes> {
  factory CopyWith$Query$FavoriteDrivers(
    Query$FavoriteDrivers instance,
    TRes Function(Query$FavoriteDrivers) then,
  ) = _CopyWithImpl$Query$FavoriteDrivers;

  factory CopyWith$Query$FavoriteDrivers.stub(TRes res) =
      _CopyWithStubImpl$Query$FavoriteDrivers;

  TRes call({
    Query$FavoriteDrivers$rider? rider,
    String? $__typename,
  });
  CopyWith$Query$FavoriteDrivers$rider<TRes> get rider;
}

class _CopyWithImpl$Query$FavoriteDrivers<TRes>
    implements CopyWith$Query$FavoriteDrivers<TRes> {
  _CopyWithImpl$Query$FavoriteDrivers(
    this._instance,
    this._then,
  );

  final Query$FavoriteDrivers _instance;

  final TRes Function(Query$FavoriteDrivers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? rider = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FavoriteDrivers(
        rider: rider == _undefined || rider == null
            ? _instance.rider
            : (rider as Query$FavoriteDrivers$rider),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FavoriteDrivers$rider<TRes> get rider {
    final local$rider = _instance.rider;
    return CopyWith$Query$FavoriteDrivers$rider(
        local$rider, (e) => call(rider: e));
  }
}

class _CopyWithStubImpl$Query$FavoriteDrivers<TRes>
    implements CopyWith$Query$FavoriteDrivers<TRes> {
  _CopyWithStubImpl$Query$FavoriteDrivers(this._res);

  TRes _res;

  call({
    Query$FavoriteDrivers$rider? rider,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FavoriteDrivers$rider<TRes> get rider =>
      CopyWith$Query$FavoriteDrivers$rider.stub(_res);
}

const documentNodeQueryFavoriteDrivers = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FavoriteDrivers'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'rider'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: StringValueNode(
              value: '1',
              isBlock: false,
            ),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'favoriteDrivers'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'FavoriteDriver'),
                directives: [],
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
  fragmentDefinitionFavoriteDriver,
]);
Query$FavoriteDrivers _parserFn$Query$FavoriteDrivers(
        Map<String, dynamic> data) =>
    Query$FavoriteDrivers.fromJson(data);
typedef OnQueryComplete$Query$FavoriteDrivers = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$FavoriteDrivers?,
);

class Options$Query$FavoriteDrivers
    extends graphql.QueryOptions<Query$FavoriteDrivers> {
  Options$Query$FavoriteDrivers({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FavoriteDrivers? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$FavoriteDrivers? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
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
                    data == null ? null : _parserFn$Query$FavoriteDrivers(data),
                  ),
          onError: onError,
          document: documentNodeQueryFavoriteDrivers,
          parserFn: _parserFn$Query$FavoriteDrivers,
        );

  final OnQueryComplete$Query$FavoriteDrivers? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$FavoriteDrivers
    extends graphql.WatchQueryOptions<Query$FavoriteDrivers> {
  WatchOptions$Query$FavoriteDrivers({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FavoriteDrivers? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryFavoriteDrivers,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FavoriteDrivers,
        );
}

class FetchMoreOptions$Query$FavoriteDrivers extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FavoriteDrivers(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryFavoriteDrivers,
        );
}

extension ClientExtension$Query$FavoriteDrivers on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FavoriteDrivers>> query$FavoriteDrivers(
          [Options$Query$FavoriteDrivers? options]) async =>
      await this.query(options ?? Options$Query$FavoriteDrivers());
  graphql.ObservableQuery<Query$FavoriteDrivers> watchQuery$FavoriteDrivers(
          [WatchOptions$Query$FavoriteDrivers? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$FavoriteDrivers());
  void writeQuery$FavoriteDrivers({
    required Query$FavoriteDrivers data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryFavoriteDrivers)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FavoriteDrivers? readQuery$FavoriteDrivers({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryFavoriteDrivers)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FavoriteDrivers.fromJson(result);
  }
}

class Query$FavoriteDrivers$rider {
  Query$FavoriteDrivers$rider({
    required this.favoriteDrivers,
    this.$__typename = 'Rider',
  });

  factory Query$FavoriteDrivers$rider.fromJson(Map<String, dynamic> json) {
    final l$favoriteDrivers = json['favoriteDrivers'];
    final l$$__typename = json['__typename'];
    return Query$FavoriteDrivers$rider(
      favoriteDrivers: (l$favoriteDrivers as List<dynamic>)
          .map((e) =>
              Fragment$FavoriteDriver.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$FavoriteDriver> favoriteDrivers;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$favoriteDrivers = favoriteDrivers;
    _resultData['favoriteDrivers'] =
        l$favoriteDrivers.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$favoriteDrivers = favoriteDrivers;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$favoriteDrivers.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FavoriteDrivers$rider ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$favoriteDrivers = favoriteDrivers;
    final lOther$favoriteDrivers = other.favoriteDrivers;
    if (l$favoriteDrivers.length != lOther$favoriteDrivers.length) {
      return false;
    }
    for (int i = 0; i < l$favoriteDrivers.length; i++) {
      final l$favoriteDrivers$entry = l$favoriteDrivers[i];
      final lOther$favoriteDrivers$entry = lOther$favoriteDrivers[i];
      if (l$favoriteDrivers$entry != lOther$favoriteDrivers$entry) {
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

extension UtilityExtension$Query$FavoriteDrivers$rider
    on Query$FavoriteDrivers$rider {
  CopyWith$Query$FavoriteDrivers$rider<Query$FavoriteDrivers$rider>
      get copyWith => CopyWith$Query$FavoriteDrivers$rider(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FavoriteDrivers$rider<TRes> {
  factory CopyWith$Query$FavoriteDrivers$rider(
    Query$FavoriteDrivers$rider instance,
    TRes Function(Query$FavoriteDrivers$rider) then,
  ) = _CopyWithImpl$Query$FavoriteDrivers$rider;

  factory CopyWith$Query$FavoriteDrivers$rider.stub(TRes res) =
      _CopyWithStubImpl$Query$FavoriteDrivers$rider;

  TRes call({
    List<Fragment$FavoriteDriver>? favoriteDrivers,
    String? $__typename,
  });
  TRes favoriteDrivers(
      Iterable<Fragment$FavoriteDriver> Function(
              Iterable<
                  CopyWith$Fragment$FavoriteDriver<Fragment$FavoriteDriver>>)
          _fn);
}

class _CopyWithImpl$Query$FavoriteDrivers$rider<TRes>
    implements CopyWith$Query$FavoriteDrivers$rider<TRes> {
  _CopyWithImpl$Query$FavoriteDrivers$rider(
    this._instance,
    this._then,
  );

  final Query$FavoriteDrivers$rider _instance;

  final TRes Function(Query$FavoriteDrivers$rider) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? favoriteDrivers = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FavoriteDrivers$rider(
        favoriteDrivers:
            favoriteDrivers == _undefined || favoriteDrivers == null
                ? _instance.favoriteDrivers
                : (favoriteDrivers as List<Fragment$FavoriteDriver>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes favoriteDrivers(
          Iterable<Fragment$FavoriteDriver> Function(
                  Iterable<
                      CopyWith$Fragment$FavoriteDriver<
                          Fragment$FavoriteDriver>>)
              _fn) =>
      call(
          favoriteDrivers: _fn(_instance.favoriteDrivers
              .map((e) => CopyWith$Fragment$FavoriteDriver(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$FavoriteDrivers$rider<TRes>
    implements CopyWith$Query$FavoriteDrivers$rider<TRes> {
  _CopyWithStubImpl$Query$FavoriteDrivers$rider(this._res);

  TRes _res;

  call({
    List<Fragment$FavoriteDriver>? favoriteDrivers,
    String? $__typename,
  }) =>
      _res;

  favoriteDrivers(_fn) => _res;
}

class Variables$Mutation$UpdateProfileImage {
  factory Variables$Mutation$UpdateProfileImage({
    String? mediaId,
    int? presetImageId,
  }) =>
      Variables$Mutation$UpdateProfileImage._({
        if (mediaId != null) r'mediaId': mediaId,
        if (presetImageId != null) r'presetImageId': presetImageId,
      });

  Variables$Mutation$UpdateProfileImage._(this._$data);

  factory Variables$Mutation$UpdateProfileImage.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('mediaId')) {
      final l$mediaId = data['mediaId'];
      result$data['mediaId'] = (l$mediaId as String?);
    }
    if (data.containsKey('presetImageId')) {
      final l$presetImageId = data['presetImageId'];
      result$data['presetImageId'] = (l$presetImageId as int?);
    }
    return Variables$Mutation$UpdateProfileImage._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get mediaId => (_$data['mediaId'] as String?);

  int? get presetImageId => (_$data['presetImageId'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('mediaId')) {
      final l$mediaId = mediaId;
      result$data['mediaId'] = l$mediaId;
    }
    if (_$data.containsKey('presetImageId')) {
      final l$presetImageId = presetImageId;
      result$data['presetImageId'] = l$presetImageId;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateProfileImage<
          Variables$Mutation$UpdateProfileImage>
      get copyWith => CopyWith$Variables$Mutation$UpdateProfileImage(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateProfileImage ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mediaId = mediaId;
    final lOther$mediaId = other.mediaId;
    if (_$data.containsKey('mediaId') != other._$data.containsKey('mediaId')) {
      return false;
    }
    if (l$mediaId != lOther$mediaId) {
      return false;
    }
    final l$presetImageId = presetImageId;
    final lOther$presetImageId = other.presetImageId;
    if (_$data.containsKey('presetImageId') !=
        other._$data.containsKey('presetImageId')) {
      return false;
    }
    if (l$presetImageId != lOther$presetImageId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$mediaId = mediaId;
    final l$presetImageId = presetImageId;
    return Object.hashAll([
      _$data.containsKey('mediaId') ? l$mediaId : const {},
      _$data.containsKey('presetImageId') ? l$presetImageId : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateProfileImage<TRes> {
  factory CopyWith$Variables$Mutation$UpdateProfileImage(
    Variables$Mutation$UpdateProfileImage instance,
    TRes Function(Variables$Mutation$UpdateProfileImage) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateProfileImage;

  factory CopyWith$Variables$Mutation$UpdateProfileImage.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateProfileImage;

  TRes call({
    String? mediaId,
    int? presetImageId,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateProfileImage<TRes>
    implements CopyWith$Variables$Mutation$UpdateProfileImage<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateProfileImage(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateProfileImage _instance;

  final TRes Function(Variables$Mutation$UpdateProfileImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mediaId = _undefined,
    Object? presetImageId = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateProfileImage._({
        ..._instance._$data,
        if (mediaId != _undefined) 'mediaId': (mediaId as String?),
        if (presetImageId != _undefined)
          'presetImageId': (presetImageId as int?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateProfileImage<TRes>
    implements CopyWith$Variables$Mutation$UpdateProfileImage<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateProfileImage(this._res);

  TRes _res;

  call({
    String? mediaId,
    int? presetImageId,
  }) =>
      _res;
}

class Mutation$UpdateProfileImage {
  Mutation$UpdateProfileImage({
    required this.updateOneRider,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateProfileImage.fromJson(Map<String, dynamic> json) {
    final l$updateOneRider = json['updateOneRider'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateProfileImage(
      updateOneRider: Fragment$ProfileFragment.fromJson(
          (l$updateOneRider as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$ProfileFragment updateOneRider;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateOneRider = updateOneRider;
    _resultData['updateOneRider'] = l$updateOneRider.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateOneRider = updateOneRider;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateOneRider,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateProfileImage ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateOneRider = updateOneRider;
    final lOther$updateOneRider = other.updateOneRider;
    if (l$updateOneRider != lOther$updateOneRider) {
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

extension UtilityExtension$Mutation$UpdateProfileImage
    on Mutation$UpdateProfileImage {
  CopyWith$Mutation$UpdateProfileImage<Mutation$UpdateProfileImage>
      get copyWith => CopyWith$Mutation$UpdateProfileImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateProfileImage<TRes> {
  factory CopyWith$Mutation$UpdateProfileImage(
    Mutation$UpdateProfileImage instance,
    TRes Function(Mutation$UpdateProfileImage) then,
  ) = _CopyWithImpl$Mutation$UpdateProfileImage;

  factory CopyWith$Mutation$UpdateProfileImage.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateProfileImage;

  TRes call({
    Fragment$ProfileFragment? updateOneRider,
    String? $__typename,
  });
  CopyWith$Fragment$ProfileFragment<TRes> get updateOneRider;
}

class _CopyWithImpl$Mutation$UpdateProfileImage<TRes>
    implements CopyWith$Mutation$UpdateProfileImage<TRes> {
  _CopyWithImpl$Mutation$UpdateProfileImage(
    this._instance,
    this._then,
  );

  final Mutation$UpdateProfileImage _instance;

  final TRes Function(Mutation$UpdateProfileImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateOneRider = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateProfileImage(
        updateOneRider: updateOneRider == _undefined || updateOneRider == null
            ? _instance.updateOneRider
            : (updateOneRider as Fragment$ProfileFragment),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ProfileFragment<TRes> get updateOneRider {
    final local$updateOneRider = _instance.updateOneRider;
    return CopyWith$Fragment$ProfileFragment(
        local$updateOneRider, (e) => call(updateOneRider: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateProfileImage<TRes>
    implements CopyWith$Mutation$UpdateProfileImage<TRes> {
  _CopyWithStubImpl$Mutation$UpdateProfileImage(this._res);

  TRes _res;

  call({
    Fragment$ProfileFragment? updateOneRider,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ProfileFragment<TRes> get updateOneRider =>
      CopyWith$Fragment$ProfileFragment.stub(_res);
}

const documentNodeMutationUpdateProfileImage = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateProfileImage'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'mediaId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'presetImageId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateOneRider'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: StringValueNode(
                  value: '1',
                  isBlock: false,
                ),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'update'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'mediaId'),
                    value: VariableNode(name: NameNode(value: 'mediaId')),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'presetAvatarNumber'),
                    value: VariableNode(name: NameNode(value: 'presetImageId')),
                  ),
                ]),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'ProfileFragment'),
            directives: [],
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
  fragmentDefinitionProfileFragment,
  fragmentDefinitionMediaFragment,
]);
Mutation$UpdateProfileImage _parserFn$Mutation$UpdateProfileImage(
        Map<String, dynamic> data) =>
    Mutation$UpdateProfileImage.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateProfileImage = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UpdateProfileImage?,
);

class Options$Mutation$UpdateProfileImage
    extends graphql.MutationOptions<Mutation$UpdateProfileImage> {
  Options$Mutation$UpdateProfileImage({
    String? operationName,
    Variables$Mutation$UpdateProfileImage? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateProfileImage? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateProfileImage? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateProfileImage>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateProfileImage(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateProfileImage,
          parserFn: _parserFn$Mutation$UpdateProfileImage,
        );

  final OnMutationCompleted$Mutation$UpdateProfileImage? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateProfileImage
    extends graphql.WatchQueryOptions<Mutation$UpdateProfileImage> {
  WatchOptions$Mutation$UpdateProfileImage({
    String? operationName,
    Variables$Mutation$UpdateProfileImage? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateProfileImage? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationUpdateProfileImage,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateProfileImage,
        );
}

extension ClientExtension$Mutation$UpdateProfileImage on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateProfileImage>>
      mutate$UpdateProfileImage(
              [Options$Mutation$UpdateProfileImage? options]) async =>
          await this.mutate(options ?? Options$Mutation$UpdateProfileImage());
  graphql.ObservableQuery<
      Mutation$UpdateProfileImage> watchMutation$UpdateProfileImage(
          [WatchOptions$Mutation$UpdateProfileImage? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$UpdateProfileImage());
}

class Variables$Mutation$DeleteFavoriteDriver {
  factory Variables$Mutation$DeleteFavoriteDriver({required String driverId}) =>
      Variables$Mutation$DeleteFavoriteDriver._({
        r'driverId': driverId,
      });

  Variables$Mutation$DeleteFavoriteDriver._(this._$data);

  factory Variables$Mutation$DeleteFavoriteDriver.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$driverId = data['driverId'];
    result$data['driverId'] = (l$driverId as String);
    return Variables$Mutation$DeleteFavoriteDriver._(result$data);
  }

  Map<String, dynamic> _$data;

  String get driverId => (_$data['driverId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$driverId = driverId;
    result$data['driverId'] = l$driverId;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteFavoriteDriver<
          Variables$Mutation$DeleteFavoriteDriver>
      get copyWith => CopyWith$Variables$Mutation$DeleteFavoriteDriver(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$DeleteFavoriteDriver ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$driverId = driverId;
    final lOther$driverId = other.driverId;
    if (l$driverId != lOther$driverId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$driverId = driverId;
    return Object.hashAll([l$driverId]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteFavoriteDriver<TRes> {
  factory CopyWith$Variables$Mutation$DeleteFavoriteDriver(
    Variables$Mutation$DeleteFavoriteDriver instance,
    TRes Function(Variables$Mutation$DeleteFavoriteDriver) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteFavoriteDriver;

  factory CopyWith$Variables$Mutation$DeleteFavoriteDriver.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteFavoriteDriver;

  TRes call({String? driverId});
}

class _CopyWithImpl$Variables$Mutation$DeleteFavoriteDriver<TRes>
    implements CopyWith$Variables$Mutation$DeleteFavoriteDriver<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteFavoriteDriver(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteFavoriteDriver _instance;

  final TRes Function(Variables$Mutation$DeleteFavoriteDriver) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? driverId = _undefined}) =>
      _then(Variables$Mutation$DeleteFavoriteDriver._({
        ..._instance._$data,
        if (driverId != _undefined && driverId != null)
          'driverId': (driverId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteFavoriteDriver<TRes>
    implements CopyWith$Variables$Mutation$DeleteFavoriteDriver<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteFavoriteDriver(this._res);

  TRes _res;

  call({String? driverId}) => _res;
}

class Mutation$DeleteFavoriteDriver {
  Mutation$DeleteFavoriteDriver({
    required this.deleteFavoriteDriver,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteFavoriteDriver.fromJson(Map<String, dynamic> json) {
    final l$deleteFavoriteDriver = json['deleteFavoriteDriver'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteFavoriteDriver(
      deleteFavoriteDriver: (l$deleteFavoriteDriver as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool deleteFavoriteDriver;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteFavoriteDriver = deleteFavoriteDriver;
    _resultData['deleteFavoriteDriver'] = l$deleteFavoriteDriver;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteFavoriteDriver = deleteFavoriteDriver;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteFavoriteDriver,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteFavoriteDriver ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteFavoriteDriver = deleteFavoriteDriver;
    final lOther$deleteFavoriteDriver = other.deleteFavoriteDriver;
    if (l$deleteFavoriteDriver != lOther$deleteFavoriteDriver) {
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

extension UtilityExtension$Mutation$DeleteFavoriteDriver
    on Mutation$DeleteFavoriteDriver {
  CopyWith$Mutation$DeleteFavoriteDriver<Mutation$DeleteFavoriteDriver>
      get copyWith => CopyWith$Mutation$DeleteFavoriteDriver(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteFavoriteDriver<TRes> {
  factory CopyWith$Mutation$DeleteFavoriteDriver(
    Mutation$DeleteFavoriteDriver instance,
    TRes Function(Mutation$DeleteFavoriteDriver) then,
  ) = _CopyWithImpl$Mutation$DeleteFavoriteDriver;

  factory CopyWith$Mutation$DeleteFavoriteDriver.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteFavoriteDriver;

  TRes call({
    bool? deleteFavoriteDriver,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteFavoriteDriver<TRes>
    implements CopyWith$Mutation$DeleteFavoriteDriver<TRes> {
  _CopyWithImpl$Mutation$DeleteFavoriteDriver(
    this._instance,
    this._then,
  );

  final Mutation$DeleteFavoriteDriver _instance;

  final TRes Function(Mutation$DeleteFavoriteDriver) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteFavoriteDriver = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteFavoriteDriver(
        deleteFavoriteDriver:
            deleteFavoriteDriver == _undefined || deleteFavoriteDriver == null
                ? _instance.deleteFavoriteDriver
                : (deleteFavoriteDriver as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteFavoriteDriver<TRes>
    implements CopyWith$Mutation$DeleteFavoriteDriver<TRes> {
  _CopyWithStubImpl$Mutation$DeleteFavoriteDriver(this._res);

  TRes _res;

  call({
    bool? deleteFavoriteDriver,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationDeleteFavoriteDriver = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteFavoriteDriver'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'driverId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deleteFavoriteDriver'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'driverId'),
            value: VariableNode(name: NameNode(value: 'driverId')),
          )
        ],
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
]);
Mutation$DeleteFavoriteDriver _parserFn$Mutation$DeleteFavoriteDriver(
        Map<String, dynamic> data) =>
    Mutation$DeleteFavoriteDriver.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteFavoriteDriver = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$DeleteFavoriteDriver?,
);

class Options$Mutation$DeleteFavoriteDriver
    extends graphql.MutationOptions<Mutation$DeleteFavoriteDriver> {
  Options$Mutation$DeleteFavoriteDriver({
    String? operationName,
    required Variables$Mutation$DeleteFavoriteDriver variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteFavoriteDriver? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteFavoriteDriver? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteFavoriteDriver>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$DeleteFavoriteDriver(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteFavoriteDriver,
          parserFn: _parserFn$Mutation$DeleteFavoriteDriver,
        );

  final OnMutationCompleted$Mutation$DeleteFavoriteDriver?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteFavoriteDriver
    extends graphql.WatchQueryOptions<Mutation$DeleteFavoriteDriver> {
  WatchOptions$Mutation$DeleteFavoriteDriver({
    String? operationName,
    required Variables$Mutation$DeleteFavoriteDriver variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteFavoriteDriver? typedOptimisticResult,
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
          document: documentNodeMutationDeleteFavoriteDriver,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteFavoriteDriver,
        );
}

extension ClientExtension$Mutation$DeleteFavoriteDriver
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteFavoriteDriver>>
      mutate$DeleteFavoriteDriver(
              Options$Mutation$DeleteFavoriteDriver options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$DeleteFavoriteDriver>
      watchMutation$DeleteFavoriteDriver(
              WatchOptions$Mutation$DeleteFavoriteDriver options) =>
          this.watchMutation(options);
}

class Mutation$DeleteAccount {
  Mutation$DeleteAccount({
    required this.deleteUser,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteAccount.fromJson(Map<String, dynamic> json) {
    final l$deleteUser = json['deleteUser'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteAccount(
      deleteUser: Mutation$DeleteAccount$deleteUser.fromJson(
          (l$deleteUser as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteAccount$deleteUser deleteUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteUser = deleteUser;
    _resultData['deleteUser'] = l$deleteUser.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteUser = deleteUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteAccount || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteUser = deleteUser;
    final lOther$deleteUser = other.deleteUser;
    if (l$deleteUser != lOther$deleteUser) {
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

extension UtilityExtension$Mutation$DeleteAccount on Mutation$DeleteAccount {
  CopyWith$Mutation$DeleteAccount<Mutation$DeleteAccount> get copyWith =>
      CopyWith$Mutation$DeleteAccount(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteAccount<TRes> {
  factory CopyWith$Mutation$DeleteAccount(
    Mutation$DeleteAccount instance,
    TRes Function(Mutation$DeleteAccount) then,
  ) = _CopyWithImpl$Mutation$DeleteAccount;

  factory CopyWith$Mutation$DeleteAccount.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteAccount;

  TRes call({
    Mutation$DeleteAccount$deleteUser? deleteUser,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteAccount$deleteUser<TRes> get deleteUser;
}

class _CopyWithImpl$Mutation$DeleteAccount<TRes>
    implements CopyWith$Mutation$DeleteAccount<TRes> {
  _CopyWithImpl$Mutation$DeleteAccount(
    this._instance,
    this._then,
  );

  final Mutation$DeleteAccount _instance;

  final TRes Function(Mutation$DeleteAccount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteAccount(
        deleteUser: deleteUser == _undefined || deleteUser == null
            ? _instance.deleteUser
            : (deleteUser as Mutation$DeleteAccount$deleteUser),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$DeleteAccount$deleteUser<TRes> get deleteUser {
    final local$deleteUser = _instance.deleteUser;
    return CopyWith$Mutation$DeleteAccount$deleteUser(
        local$deleteUser, (e) => call(deleteUser: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteAccount<TRes>
    implements CopyWith$Mutation$DeleteAccount<TRes> {
  _CopyWithStubImpl$Mutation$DeleteAccount(this._res);

  TRes _res;

  call({
    Mutation$DeleteAccount$deleteUser? deleteUser,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$DeleteAccount$deleteUser<TRes> get deleteUser =>
      CopyWith$Mutation$DeleteAccount$deleteUser.stub(_res);
}

const documentNodeMutationDeleteAccount = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteAccount'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deleteUser'),
        alias: null,
        arguments: [],
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
Mutation$DeleteAccount _parserFn$Mutation$DeleteAccount(
        Map<String, dynamic> data) =>
    Mutation$DeleteAccount.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteAccount = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$DeleteAccount?,
);

class Options$Mutation$DeleteAccount
    extends graphql.MutationOptions<Mutation$DeleteAccount> {
  Options$Mutation$DeleteAccount({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteAccount? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteAccount? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteAccount>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$DeleteAccount(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteAccount,
          parserFn: _parserFn$Mutation$DeleteAccount,
        );

  final OnMutationCompleted$Mutation$DeleteAccount? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteAccount
    extends graphql.WatchQueryOptions<Mutation$DeleteAccount> {
  WatchOptions$Mutation$DeleteAccount({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteAccount? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationDeleteAccount,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteAccount,
        );
}

extension ClientExtension$Mutation$DeleteAccount on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteAccount>> mutate$DeleteAccount(
          [Options$Mutation$DeleteAccount? options]) async =>
      await this.mutate(options ?? Options$Mutation$DeleteAccount());
  graphql.ObservableQuery<Mutation$DeleteAccount> watchMutation$DeleteAccount(
          [WatchOptions$Mutation$DeleteAccount? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$DeleteAccount());
}

class Mutation$DeleteAccount$deleteUser {
  Mutation$DeleteAccount$deleteUser({
    required this.id,
    this.$__typename = 'Rider',
  });

  factory Mutation$DeleteAccount$deleteUser.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteAccount$deleteUser(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteAccount$deleteUser ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Mutation$DeleteAccount$deleteUser
    on Mutation$DeleteAccount$deleteUser {
  CopyWith$Mutation$DeleteAccount$deleteUser<Mutation$DeleteAccount$deleteUser>
      get copyWith => CopyWith$Mutation$DeleteAccount$deleteUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteAccount$deleteUser<TRes> {
  factory CopyWith$Mutation$DeleteAccount$deleteUser(
    Mutation$DeleteAccount$deleteUser instance,
    TRes Function(Mutation$DeleteAccount$deleteUser) then,
  ) = _CopyWithImpl$Mutation$DeleteAccount$deleteUser;

  factory CopyWith$Mutation$DeleteAccount$deleteUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteAccount$deleteUser;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteAccount$deleteUser<TRes>
    implements CopyWith$Mutation$DeleteAccount$deleteUser<TRes> {
  _CopyWithImpl$Mutation$DeleteAccount$deleteUser(
    this._instance,
    this._then,
  );

  final Mutation$DeleteAccount$deleteUser _instance;

  final TRes Function(Mutation$DeleteAccount$deleteUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteAccount$deleteUser(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteAccount$deleteUser<TRes>
    implements CopyWith$Mutation$DeleteAccount$deleteUser<TRes> {
  _CopyWithStubImpl$Mutation$DeleteAccount$deleteUser(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}
