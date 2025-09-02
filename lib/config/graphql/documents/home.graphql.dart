import '../fragments/chat_message.fragment.graphql.dart';
import '../fragments/current_order.fragment.graphql.dart';
import '../fragments/favorite_location.graphql.dart';
import '../fragments/media.fragment.graphql.dart';
import '../fragments/payment_gateway.fragment.graphql.dart';
import '../fragments/point.fragment.graphql.dart';
import '../fragments/profile.fragment.graphql.dart';
import '../fragments/ride_option.fragment.graphql.dart';
import '../fragments/saved_payment_method.fragment.graphql.dart';
import '../schema.gql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Query$CurrentOrder {
  Query$CurrentOrder({
    this.currentOrder,
    this.getCurrentOrderDriverLocation,
    this.$__typename = 'Query',
  });

  factory Query$CurrentOrder.fromJson(Map<String, dynamic> json) {
    final l$currentOrder = json['currentOrder'];
    final l$getCurrentOrderDriverLocation =
        json['getCurrentOrderDriverLocation'];
    final l$$__typename = json['__typename'];
    return Query$CurrentOrder(
      currentOrder: l$currentOrder == null
          ? null
          : Fragment$CurrentOrder.fromJson(
              (l$currentOrder as Map<String, dynamic>)),
      getCurrentOrderDriverLocation: l$getCurrentOrderDriverLocation == null
          ? null
          : Fragment$PointFragment.fromJson(
              (l$getCurrentOrderDriverLocation as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$CurrentOrder? currentOrder;

  final Fragment$PointFragment? getCurrentOrderDriverLocation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$currentOrder = currentOrder;
    _resultData['currentOrder'] = l$currentOrder?.toJson();
    final l$getCurrentOrderDriverLocation = getCurrentOrderDriverLocation;
    _resultData['getCurrentOrderDriverLocation'] =
        l$getCurrentOrderDriverLocation?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$currentOrder = currentOrder;
    final l$getCurrentOrderDriverLocation = getCurrentOrderDriverLocation;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$currentOrder,
      l$getCurrentOrderDriverLocation,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$CurrentOrder || runtimeType != other.runtimeType) {
      return false;
    }
    final l$currentOrder = currentOrder;
    final lOther$currentOrder = other.currentOrder;
    if (l$currentOrder != lOther$currentOrder) {
      return false;
    }
    final l$getCurrentOrderDriverLocation = getCurrentOrderDriverLocation;
    final lOther$getCurrentOrderDriverLocation =
        other.getCurrentOrderDriverLocation;
    if (l$getCurrentOrderDriverLocation !=
        lOther$getCurrentOrderDriverLocation) {
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

extension UtilityExtension$Query$CurrentOrder on Query$CurrentOrder {
  CopyWith$Query$CurrentOrder<Query$CurrentOrder> get copyWith =>
      CopyWith$Query$CurrentOrder(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CurrentOrder<TRes> {
  factory CopyWith$Query$CurrentOrder(
    Query$CurrentOrder instance,
    TRes Function(Query$CurrentOrder) then,
  ) = _CopyWithImpl$Query$CurrentOrder;

  factory CopyWith$Query$CurrentOrder.stub(TRes res) =
      _CopyWithStubImpl$Query$CurrentOrder;

  TRes call({
    Fragment$CurrentOrder? currentOrder,
    Fragment$PointFragment? getCurrentOrderDriverLocation,
    String? $__typename,
  });
  CopyWith$Fragment$CurrentOrder<TRes> get currentOrder;
  CopyWith$Fragment$PointFragment<TRes> get getCurrentOrderDriverLocation;
}

class _CopyWithImpl$Query$CurrentOrder<TRes>
    implements CopyWith$Query$CurrentOrder<TRes> {
  _CopyWithImpl$Query$CurrentOrder(
    this._instance,
    this._then,
  );

  final Query$CurrentOrder _instance;

  final TRes Function(Query$CurrentOrder) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? currentOrder = _undefined,
    Object? getCurrentOrderDriverLocation = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CurrentOrder(
        currentOrder: currentOrder == _undefined
            ? _instance.currentOrder
            : (currentOrder as Fragment$CurrentOrder?),
        getCurrentOrderDriverLocation:
            getCurrentOrderDriverLocation == _undefined
                ? _instance.getCurrentOrderDriverLocation
                : (getCurrentOrderDriverLocation as Fragment$PointFragment?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$CurrentOrder<TRes> get currentOrder {
    final local$currentOrder = _instance.currentOrder;
    return local$currentOrder == null
        ? CopyWith$Fragment$CurrentOrder.stub(_then(_instance))
        : CopyWith$Fragment$CurrentOrder(
            local$currentOrder, (e) => call(currentOrder: e));
  }

  CopyWith$Fragment$PointFragment<TRes> get getCurrentOrderDriverLocation {
    final local$getCurrentOrderDriverLocation =
        _instance.getCurrentOrderDriverLocation;
    return local$getCurrentOrderDriverLocation == null
        ? CopyWith$Fragment$PointFragment.stub(_then(_instance))
        : CopyWith$Fragment$PointFragment(local$getCurrentOrderDriverLocation,
            (e) => call(getCurrentOrderDriverLocation: e));
  }
}

class _CopyWithStubImpl$Query$CurrentOrder<TRes>
    implements CopyWith$Query$CurrentOrder<TRes> {
  _CopyWithStubImpl$Query$CurrentOrder(this._res);

  TRes _res;

  call({
    Fragment$CurrentOrder? currentOrder,
    Fragment$PointFragment? getCurrentOrderDriverLocation,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$CurrentOrder<TRes> get currentOrder =>
      CopyWith$Fragment$CurrentOrder.stub(_res);

  CopyWith$Fragment$PointFragment<TRes> get getCurrentOrderDriverLocation =>
      CopyWith$Fragment$PointFragment.stub(_res);
}

const documentNodeQueryCurrentOrder = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'CurrentOrder'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'currentOrder'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'CurrentOrder'),
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
        name: NameNode(value: 'getCurrentOrderDriverLocation'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'PointFragment'),
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
  fragmentDefinitionCurrentOrder,
  fragmentDefinitionPaymentGatewayFragment,
  fragmentDefinitionMediaFragment,
  fragmentDefinitionSavedPaymentMethodFragment,
  fragmentDefinitionPointFragment,
  fragmentDefinitionRideOption,
  fragmentDefinitionChatMessage,
]);
Query$CurrentOrder _parserFn$Query$CurrentOrder(Map<String, dynamic> data) =>
    Query$CurrentOrder.fromJson(data);
typedef OnQueryComplete$Query$CurrentOrder = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$CurrentOrder?,
);

class Options$Query$CurrentOrder
    extends graphql.QueryOptions<Query$CurrentOrder> {
  Options$Query$CurrentOrder({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$CurrentOrder? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$CurrentOrder? onComplete,
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
                    data == null ? null : _parserFn$Query$CurrentOrder(data),
                  ),
          onError: onError,
          document: documentNodeQueryCurrentOrder,
          parserFn: _parserFn$Query$CurrentOrder,
        );

  final OnQueryComplete$Query$CurrentOrder? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$CurrentOrder
    extends graphql.WatchQueryOptions<Query$CurrentOrder> {
  WatchOptions$Query$CurrentOrder({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$CurrentOrder? typedOptimisticResult,
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
          document: documentNodeQueryCurrentOrder,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$CurrentOrder,
        );
}

class FetchMoreOptions$Query$CurrentOrder extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$CurrentOrder(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryCurrentOrder,
        );
}

extension ClientExtension$Query$CurrentOrder on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$CurrentOrder>> query$CurrentOrder(
          [Options$Query$CurrentOrder? options]) async =>
      await this.query(options ?? Options$Query$CurrentOrder());
  graphql.ObservableQuery<Query$CurrentOrder> watchQuery$CurrentOrder(
          [WatchOptions$Query$CurrentOrder? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$CurrentOrder());
  void writeQuery$CurrentOrder({
    required Query$CurrentOrder data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryCurrentOrder)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$CurrentOrder? readQuery$CurrentOrder({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryCurrentOrder)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$CurrentOrder.fromJson(result);
  }
}

class Variables$Query$DriversAround {
  factory Variables$Query$DriversAround({required Input$PointInput center}) =>
      Variables$Query$DriversAround._({
        r'center': center,
      });

  Variables$Query$DriversAround._(this._$data);

  factory Variables$Query$DriversAround.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$center = data['center'];
    result$data['center'] =
        Input$PointInput.fromJson((l$center as Map<String, dynamic>));
    return Variables$Query$DriversAround._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$PointInput get center => (_$data['center'] as Input$PointInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$center = center;
    result$data['center'] = l$center.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$DriversAround<Variables$Query$DriversAround>
      get copyWith => CopyWith$Variables$Query$DriversAround(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$DriversAround ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$center = center;
    final lOther$center = other.center;
    if (l$center != lOther$center) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$center = center;
    return Object.hashAll([l$center]);
  }
}

abstract class CopyWith$Variables$Query$DriversAround<TRes> {
  factory CopyWith$Variables$Query$DriversAround(
    Variables$Query$DriversAround instance,
    TRes Function(Variables$Query$DriversAround) then,
  ) = _CopyWithImpl$Variables$Query$DriversAround;

  factory CopyWith$Variables$Query$DriversAround.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$DriversAround;

  TRes call({Input$PointInput? center});
}

class _CopyWithImpl$Variables$Query$DriversAround<TRes>
    implements CopyWith$Variables$Query$DriversAround<TRes> {
  _CopyWithImpl$Variables$Query$DriversAround(
    this._instance,
    this._then,
  );

  final Variables$Query$DriversAround _instance;

  final TRes Function(Variables$Query$DriversAround) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? center = _undefined}) =>
      _then(Variables$Query$DriversAround._({
        ..._instance._$data,
        if (center != _undefined && center != null)
          'center': (center as Input$PointInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$DriversAround<TRes>
    implements CopyWith$Variables$Query$DriversAround<TRes> {
  _CopyWithStubImpl$Variables$Query$DriversAround(this._res);

  TRes _res;

  call({Input$PointInput? center}) => _res;
}

class Query$DriversAround {
  Query$DriversAround({
    required this.getDriversLocation,
    this.$__typename = 'Query',
  });

  factory Query$DriversAround.fromJson(Map<String, dynamic> json) {
    final l$getDriversLocation = json['getDriversLocation'];
    final l$$__typename = json['__typename'];
    return Query$DriversAround(
      getDriversLocation: (l$getDriversLocation as List<dynamic>)
          .map((e) =>
              Fragment$PointFragment.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$PointFragment> getDriversLocation;

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
    if (other is! Query$DriversAround || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$DriversAround on Query$DriversAround {
  CopyWith$Query$DriversAround<Query$DriversAround> get copyWith =>
      CopyWith$Query$DriversAround(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$DriversAround<TRes> {
  factory CopyWith$Query$DriversAround(
    Query$DriversAround instance,
    TRes Function(Query$DriversAround) then,
  ) = _CopyWithImpl$Query$DriversAround;

  factory CopyWith$Query$DriversAround.stub(TRes res) =
      _CopyWithStubImpl$Query$DriversAround;

  TRes call({
    List<Fragment$PointFragment>? getDriversLocation,
    String? $__typename,
  });
  TRes getDriversLocation(
      Iterable<Fragment$PointFragment> Function(
              Iterable<CopyWith$Fragment$PointFragment<Fragment$PointFragment>>)
          _fn);
}

class _CopyWithImpl$Query$DriversAround<TRes>
    implements CopyWith$Query$DriversAround<TRes> {
  _CopyWithImpl$Query$DriversAround(
    this._instance,
    this._then,
  );

  final Query$DriversAround _instance;

  final TRes Function(Query$DriversAround) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? getDriversLocation = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$DriversAround(
        getDriversLocation:
            getDriversLocation == _undefined || getDriversLocation == null
                ? _instance.getDriversLocation
                : (getDriversLocation as List<Fragment$PointFragment>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes getDriversLocation(
          Iterable<Fragment$PointFragment> Function(
                  Iterable<
                      CopyWith$Fragment$PointFragment<Fragment$PointFragment>>)
              _fn) =>
      call(
          getDriversLocation: _fn(_instance.getDriversLocation
              .map((e) => CopyWith$Fragment$PointFragment(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$DriversAround<TRes>
    implements CopyWith$Query$DriversAround<TRes> {
  _CopyWithStubImpl$Query$DriversAround(this._res);

  TRes _res;

  call({
    List<Fragment$PointFragment>? getDriversLocation,
    String? $__typename,
  }) =>
      _res;

  getDriversLocation(_fn) => _res;
}

const documentNodeQueryDriversAround = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'DriversAround'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'center')),
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
            value: VariableNode(name: NameNode(value: 'center')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'PointFragment'),
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
  fragmentDefinitionPointFragment,
]);
Query$DriversAround _parserFn$Query$DriversAround(Map<String, dynamic> data) =>
    Query$DriversAround.fromJson(data);
typedef OnQueryComplete$Query$DriversAround = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$DriversAround?,
);

class Options$Query$DriversAround
    extends graphql.QueryOptions<Query$DriversAround> {
  Options$Query$DriversAround({
    String? operationName,
    required Variables$Query$DriversAround variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$DriversAround? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$DriversAround? onComplete,
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
                    data == null ? null : _parserFn$Query$DriversAround(data),
                  ),
          onError: onError,
          document: documentNodeQueryDriversAround,
          parserFn: _parserFn$Query$DriversAround,
        );

  final OnQueryComplete$Query$DriversAround? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$DriversAround
    extends graphql.WatchQueryOptions<Query$DriversAround> {
  WatchOptions$Query$DriversAround({
    String? operationName,
    required Variables$Query$DriversAround variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$DriversAround? typedOptimisticResult,
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
          document: documentNodeQueryDriversAround,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$DriversAround,
        );
}

class FetchMoreOptions$Query$DriversAround extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$DriversAround({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$DriversAround variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryDriversAround,
        );
}

extension ClientExtension$Query$DriversAround on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$DriversAround>> query$DriversAround(
          Options$Query$DriversAround options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$DriversAround> watchQuery$DriversAround(
          WatchOptions$Query$DriversAround options) =>
      this.watchQuery(options);
  void writeQuery$DriversAround({
    required Query$DriversAround data,
    required Variables$Query$DriversAround variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryDriversAround),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$DriversAround? readQuery$DriversAround({
    required Variables$Query$DriversAround variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryDriversAround),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$DriversAround.fromJson(result);
  }
}

class Query$DestinationSuggesions {
  Query$DestinationSuggesions({
    required this.riderAddresses,
    required this.orders,
    this.$__typename = 'Query',
  });

  factory Query$DestinationSuggesions.fromJson(Map<String, dynamic> json) {
    final l$riderAddresses = json['riderAddresses'];
    final l$orders = json['orders'];
    final l$$__typename = json['__typename'];
    return Query$DestinationSuggesions(
      riderAddresses: (l$riderAddresses as List<dynamic>)
          .map((e) => Fragment$FavoriteLocationFragment.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      orders: Query$DestinationSuggesions$orders.fromJson(
          (l$orders as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$FavoriteLocationFragment> riderAddresses;

  final Query$DestinationSuggesions$orders orders;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$riderAddresses = riderAddresses;
    _resultData['riderAddresses'] =
        l$riderAddresses.map((e) => e.toJson()).toList();
    final l$orders = orders;
    _resultData['orders'] = l$orders.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$riderAddresses = riderAddresses;
    final l$orders = orders;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$riderAddresses.map((v) => v)),
      l$orders,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$DestinationSuggesions ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$riderAddresses = riderAddresses;
    final lOther$riderAddresses = other.riderAddresses;
    if (l$riderAddresses.length != lOther$riderAddresses.length) {
      return false;
    }
    for (int i = 0; i < l$riderAddresses.length; i++) {
      final l$riderAddresses$entry = l$riderAddresses[i];
      final lOther$riderAddresses$entry = lOther$riderAddresses[i];
      if (l$riderAddresses$entry != lOther$riderAddresses$entry) {
        return false;
      }
    }
    final l$orders = orders;
    final lOther$orders = other.orders;
    if (l$orders != lOther$orders) {
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

extension UtilityExtension$Query$DestinationSuggesions
    on Query$DestinationSuggesions {
  CopyWith$Query$DestinationSuggesions<Query$DestinationSuggesions>
      get copyWith => CopyWith$Query$DestinationSuggesions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$DestinationSuggesions<TRes> {
  factory CopyWith$Query$DestinationSuggesions(
    Query$DestinationSuggesions instance,
    TRes Function(Query$DestinationSuggesions) then,
  ) = _CopyWithImpl$Query$DestinationSuggesions;

  factory CopyWith$Query$DestinationSuggesions.stub(TRes res) =
      _CopyWithStubImpl$Query$DestinationSuggesions;

  TRes call({
    List<Fragment$FavoriteLocationFragment>? riderAddresses,
    Query$DestinationSuggesions$orders? orders,
    String? $__typename,
  });
  TRes riderAddresses(
      Iterable<Fragment$FavoriteLocationFragment> Function(
              Iterable<
                  CopyWith$Fragment$FavoriteLocationFragment<
                      Fragment$FavoriteLocationFragment>>)
          _fn);
  CopyWith$Query$DestinationSuggesions$orders<TRes> get orders;
}

class _CopyWithImpl$Query$DestinationSuggesions<TRes>
    implements CopyWith$Query$DestinationSuggesions<TRes> {
  _CopyWithImpl$Query$DestinationSuggesions(
    this._instance,
    this._then,
  );

  final Query$DestinationSuggesions _instance;

  final TRes Function(Query$DestinationSuggesions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? riderAddresses = _undefined,
    Object? orders = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$DestinationSuggesions(
        riderAddresses: riderAddresses == _undefined || riderAddresses == null
            ? _instance.riderAddresses
            : (riderAddresses as List<Fragment$FavoriteLocationFragment>),
        orders: orders == _undefined || orders == null
            ? _instance.orders
            : (orders as Query$DestinationSuggesions$orders),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes riderAddresses(
          Iterable<Fragment$FavoriteLocationFragment> Function(
                  Iterable<
                      CopyWith$Fragment$FavoriteLocationFragment<
                          Fragment$FavoriteLocationFragment>>)
              _fn) =>
      call(
          riderAddresses: _fn(_instance.riderAddresses
              .map((e) => CopyWith$Fragment$FavoriteLocationFragment(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith$Query$DestinationSuggesions$orders<TRes> get orders {
    final local$orders = _instance.orders;
    return CopyWith$Query$DestinationSuggesions$orders(
        local$orders, (e) => call(orders: e));
  }
}

class _CopyWithStubImpl$Query$DestinationSuggesions<TRes>
    implements CopyWith$Query$DestinationSuggesions<TRes> {
  _CopyWithStubImpl$Query$DestinationSuggesions(this._res);

  TRes _res;

  call({
    List<Fragment$FavoriteLocationFragment>? riderAddresses,
    Query$DestinationSuggesions$orders? orders,
    String? $__typename,
  }) =>
      _res;

  riderAddresses(_fn) => _res;

  CopyWith$Query$DestinationSuggesions$orders<TRes> get orders =>
      CopyWith$Query$DestinationSuggesions$orders.stub(_res);
}

const documentNodeQueryDestinationSuggesions = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'DestinationSuggesions'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'riderAddresses'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'FavoriteLocationFragment'),
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
        name: NameNode(value: 'orders'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'sorting'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'field'),
                value: EnumValueNode(name: NameNode(value: 'id')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'direction'),
                value: EnumValueNode(name: NameNode(value: 'DESC')),
              ),
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: 'paging'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'first'),
                value: IntValueNode(value: '3'),
              )
            ]),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'edges'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'node'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'addresses'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'points'),
                    alias: null,
                    arguments: [],
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
  fragmentDefinitionFavoriteLocationFragment,
  fragmentDefinitionPointFragment,
]);
Query$DestinationSuggesions _parserFn$Query$DestinationSuggesions(
        Map<String, dynamic> data) =>
    Query$DestinationSuggesions.fromJson(data);
typedef OnQueryComplete$Query$DestinationSuggesions = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$DestinationSuggesions?,
);

class Options$Query$DestinationSuggesions
    extends graphql.QueryOptions<Query$DestinationSuggesions> {
  Options$Query$DestinationSuggesions({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$DestinationSuggesions? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$DestinationSuggesions? onComplete,
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
                        : _parserFn$Query$DestinationSuggesions(data),
                  ),
          onError: onError,
          document: documentNodeQueryDestinationSuggesions,
          parserFn: _parserFn$Query$DestinationSuggesions,
        );

  final OnQueryComplete$Query$DestinationSuggesions? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$DestinationSuggesions
    extends graphql.WatchQueryOptions<Query$DestinationSuggesions> {
  WatchOptions$Query$DestinationSuggesions({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$DestinationSuggesions? typedOptimisticResult,
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
          document: documentNodeQueryDestinationSuggesions,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$DestinationSuggesions,
        );
}

class FetchMoreOptions$Query$DestinationSuggesions
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$DestinationSuggesions(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryDestinationSuggesions,
        );
}

extension ClientExtension$Query$DestinationSuggesions on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$DestinationSuggesions>>
      query$DestinationSuggesions(
              [Options$Query$DestinationSuggesions? options]) async =>
          await this.query(options ?? Options$Query$DestinationSuggesions());
  graphql.ObservableQuery<
      Query$DestinationSuggesions> watchQuery$DestinationSuggesions(
          [WatchOptions$Query$DestinationSuggesions? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$DestinationSuggesions());
  void writeQuery$DestinationSuggesions({
    required Query$DestinationSuggesions data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQueryDestinationSuggesions)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$DestinationSuggesions? readQuery$DestinationSuggesions(
      {bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryDestinationSuggesions)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$DestinationSuggesions.fromJson(result);
  }
}

class Query$DestinationSuggesions$orders {
  Query$DestinationSuggesions$orders({
    required this.edges,
    this.$__typename = 'OrderConnection',
  });

  factory Query$DestinationSuggesions$orders.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$DestinationSuggesions$orders(
      edges: (l$edges as List<dynamic>)
          .map((e) => Query$DestinationSuggesions$orders$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$DestinationSuggesions$orders$edges> edges;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$edges.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$DestinationSuggesions$orders ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges.length != lOther$edges.length) {
      return false;
    }
    for (int i = 0; i < l$edges.length; i++) {
      final l$edges$entry = l$edges[i];
      final lOther$edges$entry = lOther$edges[i];
      if (l$edges$entry != lOther$edges$entry) {
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

extension UtilityExtension$Query$DestinationSuggesions$orders
    on Query$DestinationSuggesions$orders {
  CopyWith$Query$DestinationSuggesions$orders<
          Query$DestinationSuggesions$orders>
      get copyWith => CopyWith$Query$DestinationSuggesions$orders(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$DestinationSuggesions$orders<TRes> {
  factory CopyWith$Query$DestinationSuggesions$orders(
    Query$DestinationSuggesions$orders instance,
    TRes Function(Query$DestinationSuggesions$orders) then,
  ) = _CopyWithImpl$Query$DestinationSuggesions$orders;

  factory CopyWith$Query$DestinationSuggesions$orders.stub(TRes res) =
      _CopyWithStubImpl$Query$DestinationSuggesions$orders;

  TRes call({
    List<Query$DestinationSuggesions$orders$edges>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$DestinationSuggesions$orders$edges> Function(
              Iterable<
                  CopyWith$Query$DestinationSuggesions$orders$edges<
                      Query$DestinationSuggesions$orders$edges>>)
          _fn);
}

class _CopyWithImpl$Query$DestinationSuggesions$orders<TRes>
    implements CopyWith$Query$DestinationSuggesions$orders<TRes> {
  _CopyWithImpl$Query$DestinationSuggesions$orders(
    this._instance,
    this._then,
  );

  final Query$DestinationSuggesions$orders _instance;

  final TRes Function(Query$DestinationSuggesions$orders) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$DestinationSuggesions$orders(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Query$DestinationSuggesions$orders$edges>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$DestinationSuggesions$orders$edges> Function(
                  Iterable<
                      CopyWith$Query$DestinationSuggesions$orders$edges<
                          Query$DestinationSuggesions$orders$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              .map((e) => CopyWith$Query$DestinationSuggesions$orders$edges(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$DestinationSuggesions$orders<TRes>
    implements CopyWith$Query$DestinationSuggesions$orders<TRes> {
  _CopyWithStubImpl$Query$DestinationSuggesions$orders(this._res);

  TRes _res;

  call({
    List<Query$DestinationSuggesions$orders$edges>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Query$DestinationSuggesions$orders$edges {
  Query$DestinationSuggesions$orders$edges({
    required this.node,
    this.$__typename = 'OrderEdge',
  });

  factory Query$DestinationSuggesions$orders$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$DestinationSuggesions$orders$edges(
      node: Query$DestinationSuggesions$orders$edges$node.fromJson(
          (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$DestinationSuggesions$orders$edges$node node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$node = node;
    _resultData['node'] = l$node.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$DestinationSuggesions$orders$edges ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
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

extension UtilityExtension$Query$DestinationSuggesions$orders$edges
    on Query$DestinationSuggesions$orders$edges {
  CopyWith$Query$DestinationSuggesions$orders$edges<
          Query$DestinationSuggesions$orders$edges>
      get copyWith => CopyWith$Query$DestinationSuggesions$orders$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$DestinationSuggesions$orders$edges<TRes> {
  factory CopyWith$Query$DestinationSuggesions$orders$edges(
    Query$DestinationSuggesions$orders$edges instance,
    TRes Function(Query$DestinationSuggesions$orders$edges) then,
  ) = _CopyWithImpl$Query$DestinationSuggesions$orders$edges;

  factory CopyWith$Query$DestinationSuggesions$orders$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$DestinationSuggesions$orders$edges;

  TRes call({
    Query$DestinationSuggesions$orders$edges$node? node,
    String? $__typename,
  });
  CopyWith$Query$DestinationSuggesions$orders$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$DestinationSuggesions$orders$edges<TRes>
    implements CopyWith$Query$DestinationSuggesions$orders$edges<TRes> {
  _CopyWithImpl$Query$DestinationSuggesions$orders$edges(
    this._instance,
    this._then,
  );

  final Query$DestinationSuggesions$orders$edges _instance;

  final TRes Function(Query$DestinationSuggesions$orders$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$DestinationSuggesions$orders$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Query$DestinationSuggesions$orders$edges$node),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$DestinationSuggesions$orders$edges$node<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Query$DestinationSuggesions$orders$edges$node(
        local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$DestinationSuggesions$orders$edges<TRes>
    implements CopyWith$Query$DestinationSuggesions$orders$edges<TRes> {
  _CopyWithStubImpl$Query$DestinationSuggesions$orders$edges(this._res);

  TRes _res;

  call({
    Query$DestinationSuggesions$orders$edges$node? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$DestinationSuggesions$orders$edges$node<TRes> get node =>
      CopyWith$Query$DestinationSuggesions$orders$edges$node.stub(_res);
}

class Query$DestinationSuggesions$orders$edges$node {
  Query$DestinationSuggesions$orders$edges$node({
    required this.addresses,
    required this.points,
    this.$__typename = 'Order',
  });

  factory Query$DestinationSuggesions$orders$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$addresses = json['addresses'];
    final l$points = json['points'];
    final l$$__typename = json['__typename'];
    return Query$DestinationSuggesions$orders$edges$node(
      addresses:
          (l$addresses as List<dynamic>).map((e) => (e as String)).toList(),
      points: (l$points as List<dynamic>)
          .map((e) =>
              Query$DestinationSuggesions$orders$edges$node$points.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String> addresses;

  final List<Query$DestinationSuggesions$orders$edges$node$points> points;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$addresses = addresses;
    _resultData['addresses'] = l$addresses.map((e) => e).toList();
    final l$points = points;
    _resultData['points'] = l$points.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$addresses = addresses;
    final l$points = points;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$addresses.map((v) => v)),
      Object.hashAll(l$points.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$DestinationSuggesions$orders$edges$node ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$addresses = addresses;
    final lOther$addresses = other.addresses;
    if (l$addresses.length != lOther$addresses.length) {
      return false;
    }
    for (int i = 0; i < l$addresses.length; i++) {
      final l$addresses$entry = l$addresses[i];
      final lOther$addresses$entry = lOther$addresses[i];
      if (l$addresses$entry != lOther$addresses$entry) {
        return false;
      }
    }
    final l$points = points;
    final lOther$points = other.points;
    if (l$points.length != lOther$points.length) {
      return false;
    }
    for (int i = 0; i < l$points.length; i++) {
      final l$points$entry = l$points[i];
      final lOther$points$entry = lOther$points[i];
      if (l$points$entry != lOther$points$entry) {
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

extension UtilityExtension$Query$DestinationSuggesions$orders$edges$node
    on Query$DestinationSuggesions$orders$edges$node {
  CopyWith$Query$DestinationSuggesions$orders$edges$node<
          Query$DestinationSuggesions$orders$edges$node>
      get copyWith => CopyWith$Query$DestinationSuggesions$orders$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$DestinationSuggesions$orders$edges$node<TRes> {
  factory CopyWith$Query$DestinationSuggesions$orders$edges$node(
    Query$DestinationSuggesions$orders$edges$node instance,
    TRes Function(Query$DestinationSuggesions$orders$edges$node) then,
  ) = _CopyWithImpl$Query$DestinationSuggesions$orders$edges$node;

  factory CopyWith$Query$DestinationSuggesions$orders$edges$node.stub(
          TRes res) =
      _CopyWithStubImpl$Query$DestinationSuggesions$orders$edges$node;

  TRes call({
    List<String>? addresses,
    List<Query$DestinationSuggesions$orders$edges$node$points>? points,
    String? $__typename,
  });
  TRes points(
      Iterable<Query$DestinationSuggesions$orders$edges$node$points> Function(
              Iterable<
                  CopyWith$Query$DestinationSuggesions$orders$edges$node$points<
                      Query$DestinationSuggesions$orders$edges$node$points>>)
          _fn);
}

class _CopyWithImpl$Query$DestinationSuggesions$orders$edges$node<TRes>
    implements CopyWith$Query$DestinationSuggesions$orders$edges$node<TRes> {
  _CopyWithImpl$Query$DestinationSuggesions$orders$edges$node(
    this._instance,
    this._then,
  );

  final Query$DestinationSuggesions$orders$edges$node _instance;

  final TRes Function(Query$DestinationSuggesions$orders$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? addresses = _undefined,
    Object? points = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$DestinationSuggesions$orders$edges$node(
        addresses: addresses == _undefined || addresses == null
            ? _instance.addresses
            : (addresses as List<String>),
        points: points == _undefined || points == null
            ? _instance.points
            : (points
                as List<Query$DestinationSuggesions$orders$edges$node$points>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes points(
          Iterable<Query$DestinationSuggesions$orders$edges$node$points> Function(
                  Iterable<
                      CopyWith$Query$DestinationSuggesions$orders$edges$node$points<
                          Query$DestinationSuggesions$orders$edges$node$points>>)
              _fn) =>
      call(
          points: _fn(_instance.points.map((e) =>
              CopyWith$Query$DestinationSuggesions$orders$edges$node$points(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$DestinationSuggesions$orders$edges$node<TRes>
    implements CopyWith$Query$DestinationSuggesions$orders$edges$node<TRes> {
  _CopyWithStubImpl$Query$DestinationSuggesions$orders$edges$node(this._res);

  TRes _res;

  call({
    List<String>? addresses,
    List<Query$DestinationSuggesions$orders$edges$node$points>? points,
    String? $__typename,
  }) =>
      _res;

  points(_fn) => _res;
}

class Query$DestinationSuggesions$orders$edges$node$points
    implements Fragment$PointFragment {
  Query$DestinationSuggesions$orders$edges$node$points({
    required this.lat,
    required this.lng,
    this.heading,
    this.$__typename = 'Point',
  });

  factory Query$DestinationSuggesions$orders$edges$node$points.fromJson(
      Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lng = json['lng'];
    final l$heading = json['heading'];
    final l$$__typename = json['__typename'];
    return Query$DestinationSuggesions$orders$edges$node$points(
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
    if (other is! Query$DestinationSuggesions$orders$edges$node$points ||
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

extension UtilityExtension$Query$DestinationSuggesions$orders$edges$node$points
    on Query$DestinationSuggesions$orders$edges$node$points {
  CopyWith$Query$DestinationSuggesions$orders$edges$node$points<
          Query$DestinationSuggesions$orders$edges$node$points>
      get copyWith =>
          CopyWith$Query$DestinationSuggesions$orders$edges$node$points(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$DestinationSuggesions$orders$edges$node$points<
    TRes> {
  factory CopyWith$Query$DestinationSuggesions$orders$edges$node$points(
    Query$DestinationSuggesions$orders$edges$node$points instance,
    TRes Function(Query$DestinationSuggesions$orders$edges$node$points) then,
  ) = _CopyWithImpl$Query$DestinationSuggesions$orders$edges$node$points;

  factory CopyWith$Query$DestinationSuggesions$orders$edges$node$points.stub(
          TRes res) =
      _CopyWithStubImpl$Query$DestinationSuggesions$orders$edges$node$points;

  TRes call({
    double? lat,
    double? lng,
    int? heading,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$DestinationSuggesions$orders$edges$node$points<TRes>
    implements
        CopyWith$Query$DestinationSuggesions$orders$edges$node$points<TRes> {
  _CopyWithImpl$Query$DestinationSuggesions$orders$edges$node$points(
    this._instance,
    this._then,
  );

  final Query$DestinationSuggesions$orders$edges$node$points _instance;

  final TRes Function(Query$DestinationSuggesions$orders$edges$node$points)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
    Object? heading = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$DestinationSuggesions$orders$edges$node$points(
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lng: lng == _undefined || lng == null ? _instance.lng : (lng as double),
        heading: heading == _undefined ? _instance.heading : (heading as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$DestinationSuggesions$orders$edges$node$points<
        TRes>
    implements
        CopyWith$Query$DestinationSuggesions$orders$edges$node$points<TRes> {
  _CopyWithStubImpl$Query$DestinationSuggesions$orders$edges$node$points(
      this._res);

  TRes _res;

  call({
    double? lat,
    double? lng,
    int? heading,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$UpdateFcmToken {
  factory Variables$Mutation$UpdateFcmToken({required String token}) =>
      Variables$Mutation$UpdateFcmToken._({
        r'token': token,
      });

  Variables$Mutation$UpdateFcmToken._(this._$data);

  factory Variables$Mutation$UpdateFcmToken.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$token = data['token'];
    result$data['token'] = (l$token as String);
    return Variables$Mutation$UpdateFcmToken._(result$data);
  }

  Map<String, dynamic> _$data;

  String get token => (_$data['token'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$token = token;
    result$data['token'] = l$token;
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateFcmToken<Variables$Mutation$UpdateFcmToken>
      get copyWith => CopyWith$Variables$Mutation$UpdateFcmToken(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateFcmToken ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$token = token;
    return Object.hashAll([l$token]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateFcmToken<TRes> {
  factory CopyWith$Variables$Mutation$UpdateFcmToken(
    Variables$Mutation$UpdateFcmToken instance,
    TRes Function(Variables$Mutation$UpdateFcmToken) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateFcmToken;

  factory CopyWith$Variables$Mutation$UpdateFcmToken.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateFcmToken;

  TRes call({String? token});
}

class _CopyWithImpl$Variables$Mutation$UpdateFcmToken<TRes>
    implements CopyWith$Variables$Mutation$UpdateFcmToken<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateFcmToken(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateFcmToken _instance;

  final TRes Function(Variables$Mutation$UpdateFcmToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? token = _undefined}) =>
      _then(Variables$Mutation$UpdateFcmToken._({
        ..._instance._$data,
        if (token != _undefined && token != null) 'token': (token as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateFcmToken<TRes>
    implements CopyWith$Variables$Mutation$UpdateFcmToken<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateFcmToken(this._res);

  TRes _res;

  call({String? token}) => _res;
}

class Mutation$UpdateFcmToken {
  Mutation$UpdateFcmToken({
    required this.updateOneRider,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateFcmToken.fromJson(Map<String, dynamic> json) {
    final l$updateOneRider = json['updateOneRider'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateFcmToken(
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
    if (other is! Mutation$UpdateFcmToken || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$UpdateFcmToken on Mutation$UpdateFcmToken {
  CopyWith$Mutation$UpdateFcmToken<Mutation$UpdateFcmToken> get copyWith =>
      CopyWith$Mutation$UpdateFcmToken(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateFcmToken<TRes> {
  factory CopyWith$Mutation$UpdateFcmToken(
    Mutation$UpdateFcmToken instance,
    TRes Function(Mutation$UpdateFcmToken) then,
  ) = _CopyWithImpl$Mutation$UpdateFcmToken;

  factory CopyWith$Mutation$UpdateFcmToken.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateFcmToken;

  TRes call({
    Fragment$ProfileFragment? updateOneRider,
    String? $__typename,
  });
  CopyWith$Fragment$ProfileFragment<TRes> get updateOneRider;
}

class _CopyWithImpl$Mutation$UpdateFcmToken<TRes>
    implements CopyWith$Mutation$UpdateFcmToken<TRes> {
  _CopyWithImpl$Mutation$UpdateFcmToken(
    this._instance,
    this._then,
  );

  final Mutation$UpdateFcmToken _instance;

  final TRes Function(Mutation$UpdateFcmToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateOneRider = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateFcmToken(
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

class _CopyWithStubImpl$Mutation$UpdateFcmToken<TRes>
    implements CopyWith$Mutation$UpdateFcmToken<TRes> {
  _CopyWithStubImpl$Mutation$UpdateFcmToken(this._res);

  TRes _res;

  call({
    Fragment$ProfileFragment? updateOneRider,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ProfileFragment<TRes> get updateOneRider =>
      CopyWith$Fragment$ProfileFragment.stub(_res);
}

const documentNodeMutationUpdateFcmToken = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateFcmToken'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'token')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
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
                    name: NameNode(value: 'notificationPlayerId'),
                    value: VariableNode(name: NameNode(value: 'token')),
                  )
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
Mutation$UpdateFcmToken _parserFn$Mutation$UpdateFcmToken(
        Map<String, dynamic> data) =>
    Mutation$UpdateFcmToken.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateFcmToken = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$UpdateFcmToken?,
);

class Options$Mutation$UpdateFcmToken
    extends graphql.MutationOptions<Mutation$UpdateFcmToken> {
  Options$Mutation$UpdateFcmToken({
    String? operationName,
    required Variables$Mutation$UpdateFcmToken variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateFcmToken? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateFcmToken? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateFcmToken>? update,
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
                        : _parserFn$Mutation$UpdateFcmToken(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateFcmToken,
          parserFn: _parserFn$Mutation$UpdateFcmToken,
        );

  final OnMutationCompleted$Mutation$UpdateFcmToken? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateFcmToken
    extends graphql.WatchQueryOptions<Mutation$UpdateFcmToken> {
  WatchOptions$Mutation$UpdateFcmToken({
    String? operationName,
    required Variables$Mutation$UpdateFcmToken variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateFcmToken? typedOptimisticResult,
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
          document: documentNodeMutationUpdateFcmToken,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateFcmToken,
        );
}

extension ClientExtension$Mutation$UpdateFcmToken on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateFcmToken>> mutate$UpdateFcmToken(
          Options$Mutation$UpdateFcmToken options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateFcmToken> watchMutation$UpdateFcmToken(
          WatchOptions$Mutation$UpdateFcmToken options) =>
      this.watchMutation(options);
}
