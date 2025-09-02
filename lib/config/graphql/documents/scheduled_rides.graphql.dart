import '../fragments/chat_message.fragment.graphql.dart';
import '../fragments/current_order.fragment.graphql.dart';
import '../fragments/media.fragment.graphql.dart';
import '../fragments/payment_gateway.fragment.graphql.dart';
import '../fragments/point.fragment.graphql.dart';
import '../fragments/ride_option.fragment.graphql.dart';
import '../fragments/saved_payment_method.fragment.graphql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Query$ScheduledRides {
  Query$ScheduledRides({
    required this.orders,
    this.$__typename = 'Query',
  });

  factory Query$ScheduledRides.fromJson(Map<String, dynamic> json) {
    final l$orders = json['orders'];
    final l$$__typename = json['__typename'];
    return Query$ScheduledRides(
      orders: Query$ScheduledRides$orders.fromJson(
          (l$orders as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ScheduledRides$orders orders;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$orders = orders;
    _resultData['orders'] = l$orders.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$orders = orders;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$orders,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ScheduledRides || runtimeType != other.runtimeType) {
      return false;
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

extension UtilityExtension$Query$ScheduledRides on Query$ScheduledRides {
  CopyWith$Query$ScheduledRides<Query$ScheduledRides> get copyWith =>
      CopyWith$Query$ScheduledRides(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ScheduledRides<TRes> {
  factory CopyWith$Query$ScheduledRides(
    Query$ScheduledRides instance,
    TRes Function(Query$ScheduledRides) then,
  ) = _CopyWithImpl$Query$ScheduledRides;

  factory CopyWith$Query$ScheduledRides.stub(TRes res) =
      _CopyWithStubImpl$Query$ScheduledRides;

  TRes call({
    Query$ScheduledRides$orders? orders,
    String? $__typename,
  });
  CopyWith$Query$ScheduledRides$orders<TRes> get orders;
}

class _CopyWithImpl$Query$ScheduledRides<TRes>
    implements CopyWith$Query$ScheduledRides<TRes> {
  _CopyWithImpl$Query$ScheduledRides(
    this._instance,
    this._then,
  );

  final Query$ScheduledRides _instance;

  final TRes Function(Query$ScheduledRides) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? orders = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ScheduledRides(
        orders: orders == _undefined || orders == null
            ? _instance.orders
            : (orders as Query$ScheduledRides$orders),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$ScheduledRides$orders<TRes> get orders {
    final local$orders = _instance.orders;
    return CopyWith$Query$ScheduledRides$orders(
        local$orders, (e) => call(orders: e));
  }
}

class _CopyWithStubImpl$Query$ScheduledRides<TRes>
    implements CopyWith$Query$ScheduledRides<TRes> {
  _CopyWithStubImpl$Query$ScheduledRides(this._res);

  TRes _res;

  call({
    Query$ScheduledRides$orders? orders,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$ScheduledRides$orders<TRes> get orders =>
      CopyWith$Query$ScheduledRides$orders.stub(_res);
}

const documentNodeQueryScheduledRides = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ScheduledRides'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'orders'),
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
                    value: EnumValueNode(name: NameNode(value: 'Booked')),
                  )
                ]),
              )
            ]),
          )
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
  fragmentDefinitionCurrentOrder,
  fragmentDefinitionPaymentGatewayFragment,
  fragmentDefinitionMediaFragment,
  fragmentDefinitionSavedPaymentMethodFragment,
  fragmentDefinitionPointFragment,
  fragmentDefinitionRideOption,
  fragmentDefinitionChatMessage,
]);
Query$ScheduledRides _parserFn$Query$ScheduledRides(
        Map<String, dynamic> data) =>
    Query$ScheduledRides.fromJson(data);
typedef OnQueryComplete$Query$ScheduledRides = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$ScheduledRides?,
);

class Options$Query$ScheduledRides
    extends graphql.QueryOptions<Query$ScheduledRides> {
  Options$Query$ScheduledRides({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ScheduledRides? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ScheduledRides? onComplete,
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
                    data == null ? null : _parserFn$Query$ScheduledRides(data),
                  ),
          onError: onError,
          document: documentNodeQueryScheduledRides,
          parserFn: _parserFn$Query$ScheduledRides,
        );

  final OnQueryComplete$Query$ScheduledRides? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$ScheduledRides
    extends graphql.WatchQueryOptions<Query$ScheduledRides> {
  WatchOptions$Query$ScheduledRides({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ScheduledRides? typedOptimisticResult,
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
          document: documentNodeQueryScheduledRides,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$ScheduledRides,
        );
}

class FetchMoreOptions$Query$ScheduledRides extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ScheduledRides(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryScheduledRides,
        );
}

extension ClientExtension$Query$ScheduledRides on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ScheduledRides>> query$ScheduledRides(
          [Options$Query$ScheduledRides? options]) async =>
      await this.query(options ?? Options$Query$ScheduledRides());
  graphql.ObservableQuery<Query$ScheduledRides> watchQuery$ScheduledRides(
          [WatchOptions$Query$ScheduledRides? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$ScheduledRides());
  void writeQuery$ScheduledRides({
    required Query$ScheduledRides data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryScheduledRides)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$ScheduledRides? readQuery$ScheduledRides({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryScheduledRides)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ScheduledRides.fromJson(result);
  }
}

class Query$ScheduledRides$orders {
  Query$ScheduledRides$orders({
    required this.edges,
    this.$__typename = 'OrderConnection',
  });

  factory Query$ScheduledRides$orders.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$ScheduledRides$orders(
      edges: (l$edges as List<dynamic>)
          .map((e) => Query$ScheduledRides$orders$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$ScheduledRides$orders$edges> edges;

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
    if (other is! Query$ScheduledRides$orders ||
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

extension UtilityExtension$Query$ScheduledRides$orders
    on Query$ScheduledRides$orders {
  CopyWith$Query$ScheduledRides$orders<Query$ScheduledRides$orders>
      get copyWith => CopyWith$Query$ScheduledRides$orders(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ScheduledRides$orders<TRes> {
  factory CopyWith$Query$ScheduledRides$orders(
    Query$ScheduledRides$orders instance,
    TRes Function(Query$ScheduledRides$orders) then,
  ) = _CopyWithImpl$Query$ScheduledRides$orders;

  factory CopyWith$Query$ScheduledRides$orders.stub(TRes res) =
      _CopyWithStubImpl$Query$ScheduledRides$orders;

  TRes call({
    List<Query$ScheduledRides$orders$edges>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$ScheduledRides$orders$edges> Function(
              Iterable<
                  CopyWith$Query$ScheduledRides$orders$edges<
                      Query$ScheduledRides$orders$edges>>)
          _fn);
}

class _CopyWithImpl$Query$ScheduledRides$orders<TRes>
    implements CopyWith$Query$ScheduledRides$orders<TRes> {
  _CopyWithImpl$Query$ScheduledRides$orders(
    this._instance,
    this._then,
  );

  final Query$ScheduledRides$orders _instance;

  final TRes Function(Query$ScheduledRides$orders) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ScheduledRides$orders(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Query$ScheduledRides$orders$edges>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$ScheduledRides$orders$edges> Function(
                  Iterable<
                      CopyWith$Query$ScheduledRides$orders$edges<
                          Query$ScheduledRides$orders$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              .map((e) => CopyWith$Query$ScheduledRides$orders$edges(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$ScheduledRides$orders<TRes>
    implements CopyWith$Query$ScheduledRides$orders<TRes> {
  _CopyWithStubImpl$Query$ScheduledRides$orders(this._res);

  TRes _res;

  call({
    List<Query$ScheduledRides$orders$edges>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Query$ScheduledRides$orders$edges {
  Query$ScheduledRides$orders$edges({
    required this.node,
    this.$__typename = 'OrderEdge',
  });

  factory Query$ScheduledRides$orders$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$ScheduledRides$orders$edges(
      node: Fragment$CurrentOrder.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$CurrentOrder node;

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
    if (other is! Query$ScheduledRides$orders$edges ||
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

extension UtilityExtension$Query$ScheduledRides$orders$edges
    on Query$ScheduledRides$orders$edges {
  CopyWith$Query$ScheduledRides$orders$edges<Query$ScheduledRides$orders$edges>
      get copyWith => CopyWith$Query$ScheduledRides$orders$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ScheduledRides$orders$edges<TRes> {
  factory CopyWith$Query$ScheduledRides$orders$edges(
    Query$ScheduledRides$orders$edges instance,
    TRes Function(Query$ScheduledRides$orders$edges) then,
  ) = _CopyWithImpl$Query$ScheduledRides$orders$edges;

  factory CopyWith$Query$ScheduledRides$orders$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$ScheduledRides$orders$edges;

  TRes call({
    Fragment$CurrentOrder? node,
    String? $__typename,
  });
  CopyWith$Fragment$CurrentOrder<TRes> get node;
}

class _CopyWithImpl$Query$ScheduledRides$orders$edges<TRes>
    implements CopyWith$Query$ScheduledRides$orders$edges<TRes> {
  _CopyWithImpl$Query$ScheduledRides$orders$edges(
    this._instance,
    this._then,
  );

  final Query$ScheduledRides$orders$edges _instance;

  final TRes Function(Query$ScheduledRides$orders$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ScheduledRides$orders$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$CurrentOrder),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$CurrentOrder<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$CurrentOrder(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$ScheduledRides$orders$edges<TRes>
    implements CopyWith$Query$ScheduledRides$orders$edges<TRes> {
  _CopyWithStubImpl$Query$ScheduledRides$orders$edges(this._res);

  TRes _res;

  call({
    Fragment$CurrentOrder? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$CurrentOrder<TRes> get node =>
      CopyWith$Fragment$CurrentOrder.stub(_res);
}

class Variables$Mutation$CancelBooking {
  factory Variables$Mutation$CancelBooking({required String orderId}) =>
      Variables$Mutation$CancelBooking._({
        r'orderId': orderId,
      });

  Variables$Mutation$CancelBooking._(this._$data);

  factory Variables$Mutation$CancelBooking.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$orderId = data['orderId'];
    result$data['orderId'] = (l$orderId as String);
    return Variables$Mutation$CancelBooking._(result$data);
  }

  Map<String, dynamic> _$data;

  String get orderId => (_$data['orderId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$orderId = orderId;
    result$data['orderId'] = l$orderId;
    return result$data;
  }

  CopyWith$Variables$Mutation$CancelBooking<Variables$Mutation$CancelBooking>
      get copyWith => CopyWith$Variables$Mutation$CancelBooking(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CancelBooking ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$orderId = orderId;
    final lOther$orderId = other.orderId;
    if (l$orderId != lOther$orderId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$orderId = orderId;
    return Object.hashAll([l$orderId]);
  }
}

abstract class CopyWith$Variables$Mutation$CancelBooking<TRes> {
  factory CopyWith$Variables$Mutation$CancelBooking(
    Variables$Mutation$CancelBooking instance,
    TRes Function(Variables$Mutation$CancelBooking) then,
  ) = _CopyWithImpl$Variables$Mutation$CancelBooking;

  factory CopyWith$Variables$Mutation$CancelBooking.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CancelBooking;

  TRes call({String? orderId});
}

class _CopyWithImpl$Variables$Mutation$CancelBooking<TRes>
    implements CopyWith$Variables$Mutation$CancelBooking<TRes> {
  _CopyWithImpl$Variables$Mutation$CancelBooking(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CancelBooking _instance;

  final TRes Function(Variables$Mutation$CancelBooking) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? orderId = _undefined}) =>
      _then(Variables$Mutation$CancelBooking._({
        ..._instance._$data,
        if (orderId != _undefined && orderId != null)
          'orderId': (orderId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CancelBooking<TRes>
    implements CopyWith$Variables$Mutation$CancelBooking<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CancelBooking(this._res);

  TRes _res;

  call({String? orderId}) => _res;
}

class Mutation$CancelBooking {
  Mutation$CancelBooking({
    required this.cancelBooking,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CancelBooking.fromJson(Map<String, dynamic> json) {
    final l$cancelBooking = json['cancelBooking'];
    final l$$__typename = json['__typename'];
    return Mutation$CancelBooking(
      cancelBooking: Mutation$CancelBooking$cancelBooking.fromJson(
          (l$cancelBooking as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CancelBooking$cancelBooking cancelBooking;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$cancelBooking = cancelBooking;
    _resultData['cancelBooking'] = l$cancelBooking.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$cancelBooking = cancelBooking;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$cancelBooking,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CancelBooking || runtimeType != other.runtimeType) {
      return false;
    }
    final l$cancelBooking = cancelBooking;
    final lOther$cancelBooking = other.cancelBooking;
    if (l$cancelBooking != lOther$cancelBooking) {
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

extension UtilityExtension$Mutation$CancelBooking on Mutation$CancelBooking {
  CopyWith$Mutation$CancelBooking<Mutation$CancelBooking> get copyWith =>
      CopyWith$Mutation$CancelBooking(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CancelBooking<TRes> {
  factory CopyWith$Mutation$CancelBooking(
    Mutation$CancelBooking instance,
    TRes Function(Mutation$CancelBooking) then,
  ) = _CopyWithImpl$Mutation$CancelBooking;

  factory CopyWith$Mutation$CancelBooking.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CancelBooking;

  TRes call({
    Mutation$CancelBooking$cancelBooking? cancelBooking,
    String? $__typename,
  });
  CopyWith$Mutation$CancelBooking$cancelBooking<TRes> get cancelBooking;
}

class _CopyWithImpl$Mutation$CancelBooking<TRes>
    implements CopyWith$Mutation$CancelBooking<TRes> {
  _CopyWithImpl$Mutation$CancelBooking(
    this._instance,
    this._then,
  );

  final Mutation$CancelBooking _instance;

  final TRes Function(Mutation$CancelBooking) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? cancelBooking = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CancelBooking(
        cancelBooking: cancelBooking == _undefined || cancelBooking == null
            ? _instance.cancelBooking
            : (cancelBooking as Mutation$CancelBooking$cancelBooking),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CancelBooking$cancelBooking<TRes> get cancelBooking {
    final local$cancelBooking = _instance.cancelBooking;
    return CopyWith$Mutation$CancelBooking$cancelBooking(
        local$cancelBooking, (e) => call(cancelBooking: e));
  }
}

class _CopyWithStubImpl$Mutation$CancelBooking<TRes>
    implements CopyWith$Mutation$CancelBooking<TRes> {
  _CopyWithStubImpl$Mutation$CancelBooking(this._res);

  TRes _res;

  call({
    Mutation$CancelBooking$cancelBooking? cancelBooking,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CancelBooking$cancelBooking<TRes> get cancelBooking =>
      CopyWith$Mutation$CancelBooking$cancelBooking.stub(_res);
}

const documentNodeMutationCancelBooking = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CancelBooking'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderId')),
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
        name: NameNode(value: 'cancelBooking'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'orderId')),
          )
        ],
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
Mutation$CancelBooking _parserFn$Mutation$CancelBooking(
        Map<String, dynamic> data) =>
    Mutation$CancelBooking.fromJson(data);
typedef OnMutationCompleted$Mutation$CancelBooking = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$CancelBooking?,
);

class Options$Mutation$CancelBooking
    extends graphql.MutationOptions<Mutation$CancelBooking> {
  Options$Mutation$CancelBooking({
    String? operationName,
    required Variables$Mutation$CancelBooking variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CancelBooking? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CancelBooking? onCompleted,
    graphql.OnMutationUpdate<Mutation$CancelBooking>? update,
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
                        : _parserFn$Mutation$CancelBooking(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCancelBooking,
          parserFn: _parserFn$Mutation$CancelBooking,
        );

  final OnMutationCompleted$Mutation$CancelBooking? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CancelBooking
    extends graphql.WatchQueryOptions<Mutation$CancelBooking> {
  WatchOptions$Mutation$CancelBooking({
    String? operationName,
    required Variables$Mutation$CancelBooking variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CancelBooking? typedOptimisticResult,
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
          document: documentNodeMutationCancelBooking,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CancelBooking,
        );
}

extension ClientExtension$Mutation$CancelBooking on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CancelBooking>> mutate$CancelBooking(
          Options$Mutation$CancelBooking options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$CancelBooking> watchMutation$CancelBooking(
          WatchOptions$Mutation$CancelBooking options) =>
      this.watchMutation(options);
}

class Mutation$CancelBooking$cancelBooking {
  Mutation$CancelBooking$cancelBooking({
    required this.id,
    this.$__typename = 'Order',
  });

  factory Mutation$CancelBooking$cancelBooking.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$CancelBooking$cancelBooking(
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
    if (other is! Mutation$CancelBooking$cancelBooking ||
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

extension UtilityExtension$Mutation$CancelBooking$cancelBooking
    on Mutation$CancelBooking$cancelBooking {
  CopyWith$Mutation$CancelBooking$cancelBooking<
          Mutation$CancelBooking$cancelBooking>
      get copyWith => CopyWith$Mutation$CancelBooking$cancelBooking(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CancelBooking$cancelBooking<TRes> {
  factory CopyWith$Mutation$CancelBooking$cancelBooking(
    Mutation$CancelBooking$cancelBooking instance,
    TRes Function(Mutation$CancelBooking$cancelBooking) then,
  ) = _CopyWithImpl$Mutation$CancelBooking$cancelBooking;

  factory CopyWith$Mutation$CancelBooking$cancelBooking.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CancelBooking$cancelBooking;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CancelBooking$cancelBooking<TRes>
    implements CopyWith$Mutation$CancelBooking$cancelBooking<TRes> {
  _CopyWithImpl$Mutation$CancelBooking$cancelBooking(
    this._instance,
    this._then,
  );

  final Mutation$CancelBooking$cancelBooking _instance;

  final TRes Function(Mutation$CancelBooking$cancelBooking) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CancelBooking$cancelBooking(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CancelBooking$cancelBooking<TRes>
    implements CopyWith$Mutation$CancelBooking$cancelBooking<TRes> {
  _CopyWithStubImpl$Mutation$CancelBooking$cancelBooking(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}
