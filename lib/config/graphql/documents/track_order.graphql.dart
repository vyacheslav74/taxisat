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

class Variables$Mutation$CancelOrder {
  factory Variables$Mutation$CancelOrder({
    required String orderId,
    String? cancelReasonId,
    String? cancelReasonNote,
  }) =>
      Variables$Mutation$CancelOrder._({
        r'orderId': orderId,
        if (cancelReasonId != null) r'cancelReasonId': cancelReasonId,
        if (cancelReasonNote != null) r'cancelReasonNote': cancelReasonNote,
      });

  Variables$Mutation$CancelOrder._(this._$data);

  factory Variables$Mutation$CancelOrder.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$orderId = data['orderId'];
    result$data['orderId'] = (l$orderId as String);
    if (data.containsKey('cancelReasonId')) {
      final l$cancelReasonId = data['cancelReasonId'];
      result$data['cancelReasonId'] = (l$cancelReasonId as String?);
    }
    if (data.containsKey('cancelReasonNote')) {
      final l$cancelReasonNote = data['cancelReasonNote'];
      result$data['cancelReasonNote'] = (l$cancelReasonNote as String?);
    }
    return Variables$Mutation$CancelOrder._(result$data);
  }

  Map<String, dynamic> _$data;

  String get orderId => (_$data['orderId'] as String);

  String? get cancelReasonId => (_$data['cancelReasonId'] as String?);

  String? get cancelReasonNote => (_$data['cancelReasonNote'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$orderId = orderId;
    result$data['orderId'] = l$orderId;
    if (_$data.containsKey('cancelReasonId')) {
      final l$cancelReasonId = cancelReasonId;
      result$data['cancelReasonId'] = l$cancelReasonId;
    }
    if (_$data.containsKey('cancelReasonNote')) {
      final l$cancelReasonNote = cancelReasonNote;
      result$data['cancelReasonNote'] = l$cancelReasonNote;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$CancelOrder<Variables$Mutation$CancelOrder>
      get copyWith => CopyWith$Variables$Mutation$CancelOrder(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CancelOrder ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$orderId = orderId;
    final lOther$orderId = other.orderId;
    if (l$orderId != lOther$orderId) {
      return false;
    }
    final l$cancelReasonId = cancelReasonId;
    final lOther$cancelReasonId = other.cancelReasonId;
    if (_$data.containsKey('cancelReasonId') !=
        other._$data.containsKey('cancelReasonId')) {
      return false;
    }
    if (l$cancelReasonId != lOther$cancelReasonId) {
      return false;
    }
    final l$cancelReasonNote = cancelReasonNote;
    final lOther$cancelReasonNote = other.cancelReasonNote;
    if (_$data.containsKey('cancelReasonNote') !=
        other._$data.containsKey('cancelReasonNote')) {
      return false;
    }
    if (l$cancelReasonNote != lOther$cancelReasonNote) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$orderId = orderId;
    final l$cancelReasonId = cancelReasonId;
    final l$cancelReasonNote = cancelReasonNote;
    return Object.hashAll([
      l$orderId,
      _$data.containsKey('cancelReasonId') ? l$cancelReasonId : const {},
      _$data.containsKey('cancelReasonNote') ? l$cancelReasonNote : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$CancelOrder<TRes> {
  factory CopyWith$Variables$Mutation$CancelOrder(
    Variables$Mutation$CancelOrder instance,
    TRes Function(Variables$Mutation$CancelOrder) then,
  ) = _CopyWithImpl$Variables$Mutation$CancelOrder;

  factory CopyWith$Variables$Mutation$CancelOrder.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CancelOrder;

  TRes call({
    String? orderId,
    String? cancelReasonId,
    String? cancelReasonNote,
  });
}

class _CopyWithImpl$Variables$Mutation$CancelOrder<TRes>
    implements CopyWith$Variables$Mutation$CancelOrder<TRes> {
  _CopyWithImpl$Variables$Mutation$CancelOrder(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CancelOrder _instance;

  final TRes Function(Variables$Mutation$CancelOrder) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? orderId = _undefined,
    Object? cancelReasonId = _undefined,
    Object? cancelReasonNote = _undefined,
  }) =>
      _then(Variables$Mutation$CancelOrder._({
        ..._instance._$data,
        if (orderId != _undefined && orderId != null)
          'orderId': (orderId as String),
        if (cancelReasonId != _undefined)
          'cancelReasonId': (cancelReasonId as String?),
        if (cancelReasonNote != _undefined)
          'cancelReasonNote': (cancelReasonNote as String?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CancelOrder<TRes>
    implements CopyWith$Variables$Mutation$CancelOrder<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CancelOrder(this._res);

  TRes _res;

  call({
    String? orderId,
    String? cancelReasonId,
    String? cancelReasonNote,
  }) =>
      _res;
}

class Mutation$CancelOrder {
  Mutation$CancelOrder({
    required this.cancelOrder,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CancelOrder.fromJson(Map<String, dynamic> json) {
    final l$cancelOrder = json['cancelOrder'];
    final l$$__typename = json['__typename'];
    return Mutation$CancelOrder(
      cancelOrder: Fragment$CurrentOrder.fromJson(
          (l$cancelOrder as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$CurrentOrder cancelOrder;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$cancelOrder = cancelOrder;
    _resultData['cancelOrder'] = l$cancelOrder.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$cancelOrder = cancelOrder;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$cancelOrder,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CancelOrder || runtimeType != other.runtimeType) {
      return false;
    }
    final l$cancelOrder = cancelOrder;
    final lOther$cancelOrder = other.cancelOrder;
    if (l$cancelOrder != lOther$cancelOrder) {
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

extension UtilityExtension$Mutation$CancelOrder on Mutation$CancelOrder {
  CopyWith$Mutation$CancelOrder<Mutation$CancelOrder> get copyWith =>
      CopyWith$Mutation$CancelOrder(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CancelOrder<TRes> {
  factory CopyWith$Mutation$CancelOrder(
    Mutation$CancelOrder instance,
    TRes Function(Mutation$CancelOrder) then,
  ) = _CopyWithImpl$Mutation$CancelOrder;

  factory CopyWith$Mutation$CancelOrder.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CancelOrder;

  TRes call({
    Fragment$CurrentOrder? cancelOrder,
    String? $__typename,
  });
  CopyWith$Fragment$CurrentOrder<TRes> get cancelOrder;
}

class _CopyWithImpl$Mutation$CancelOrder<TRes>
    implements CopyWith$Mutation$CancelOrder<TRes> {
  _CopyWithImpl$Mutation$CancelOrder(
    this._instance,
    this._then,
  );

  final Mutation$CancelOrder _instance;

  final TRes Function(Mutation$CancelOrder) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? cancelOrder = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CancelOrder(
        cancelOrder: cancelOrder == _undefined || cancelOrder == null
            ? _instance.cancelOrder
            : (cancelOrder as Fragment$CurrentOrder),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$CurrentOrder<TRes> get cancelOrder {
    final local$cancelOrder = _instance.cancelOrder;
    return CopyWith$Fragment$CurrentOrder(
        local$cancelOrder, (e) => call(cancelOrder: e));
  }
}

class _CopyWithStubImpl$Mutation$CancelOrder<TRes>
    implements CopyWith$Mutation$CancelOrder<TRes> {
  _CopyWithStubImpl$Mutation$CancelOrder(this._res);

  TRes _res;

  call({
    Fragment$CurrentOrder? cancelOrder,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$CurrentOrder<TRes> get cancelOrder =>
      CopyWith$Fragment$CurrentOrder.stub(_res);
}

const documentNodeMutationCancelOrder = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CancelOrder'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'cancelReasonId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'cancelReasonNote')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'cancelOrder'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'orderId'),
            value: VariableNode(name: NameNode(value: 'orderId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'cancelReasonId'),
            value: VariableNode(name: NameNode(value: 'cancelReasonId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'cancelReasonNote'),
            value: VariableNode(name: NameNode(value: 'cancelReasonNote')),
          ),
        ],
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
  fragmentDefinitionCurrentOrder,
  fragmentDefinitionPaymentGatewayFragment,
  fragmentDefinitionMediaFragment,
  fragmentDefinitionSavedPaymentMethodFragment,
  fragmentDefinitionPointFragment,
  fragmentDefinitionRideOption,
  fragmentDefinitionChatMessage,
]);
Mutation$CancelOrder _parserFn$Mutation$CancelOrder(
        Map<String, dynamic> data) =>
    Mutation$CancelOrder.fromJson(data);
typedef OnMutationCompleted$Mutation$CancelOrder = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$CancelOrder?,
);

class Options$Mutation$CancelOrder
    extends graphql.MutationOptions<Mutation$CancelOrder> {
  Options$Mutation$CancelOrder({
    String? operationName,
    required Variables$Mutation$CancelOrder variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CancelOrder? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CancelOrder? onCompleted,
    graphql.OnMutationUpdate<Mutation$CancelOrder>? update,
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
                    data == null ? null : _parserFn$Mutation$CancelOrder(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCancelOrder,
          parserFn: _parserFn$Mutation$CancelOrder,
        );

  final OnMutationCompleted$Mutation$CancelOrder? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CancelOrder
    extends graphql.WatchQueryOptions<Mutation$CancelOrder> {
  WatchOptions$Mutation$CancelOrder({
    String? operationName,
    required Variables$Mutation$CancelOrder variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CancelOrder? typedOptimisticResult,
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
          document: documentNodeMutationCancelOrder,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CancelOrder,
        );
}

extension ClientExtension$Mutation$CancelOrder on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CancelOrder>> mutate$CancelOrder(
          Options$Mutation$CancelOrder options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$CancelOrder> watchMutation$CancelOrder(
          WatchOptions$Mutation$CancelOrder options) =>
      this.watchMutation(options);
}

class Subscription$OrderUpdateSubsctipion {
  Subscription$OrderUpdateSubsctipion({required this.orderUpdated});

  factory Subscription$OrderUpdateSubsctipion.fromJson(
      Map<String, dynamic> json) {
    final l$orderUpdated = json['orderUpdated'];
    return Subscription$OrderUpdateSubsctipion(
        orderUpdated: Fragment$CurrentOrder.fromJson(
            (l$orderUpdated as Map<String, dynamic>)));
  }

  final Fragment$CurrentOrder orderUpdated;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$orderUpdated = orderUpdated;
    _resultData['orderUpdated'] = l$orderUpdated.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$orderUpdated = orderUpdated;
    return Object.hashAll([l$orderUpdated]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Subscription$OrderUpdateSubsctipion ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$orderUpdated = orderUpdated;
    final lOther$orderUpdated = other.orderUpdated;
    if (l$orderUpdated != lOther$orderUpdated) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$OrderUpdateSubsctipion
    on Subscription$OrderUpdateSubsctipion {
  CopyWith$Subscription$OrderUpdateSubsctipion<
          Subscription$OrderUpdateSubsctipion>
      get copyWith => CopyWith$Subscription$OrderUpdateSubsctipion(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$OrderUpdateSubsctipion<TRes> {
  factory CopyWith$Subscription$OrderUpdateSubsctipion(
    Subscription$OrderUpdateSubsctipion instance,
    TRes Function(Subscription$OrderUpdateSubsctipion) then,
  ) = _CopyWithImpl$Subscription$OrderUpdateSubsctipion;

  factory CopyWith$Subscription$OrderUpdateSubsctipion.stub(TRes res) =
      _CopyWithStubImpl$Subscription$OrderUpdateSubsctipion;

  TRes call({Fragment$CurrentOrder? orderUpdated});
  CopyWith$Fragment$CurrentOrder<TRes> get orderUpdated;
}

class _CopyWithImpl$Subscription$OrderUpdateSubsctipion<TRes>
    implements CopyWith$Subscription$OrderUpdateSubsctipion<TRes> {
  _CopyWithImpl$Subscription$OrderUpdateSubsctipion(
    this._instance,
    this._then,
  );

  final Subscription$OrderUpdateSubsctipion _instance;

  final TRes Function(Subscription$OrderUpdateSubsctipion) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? orderUpdated = _undefined}) =>
      _then(Subscription$OrderUpdateSubsctipion(
          orderUpdated: orderUpdated == _undefined || orderUpdated == null
              ? _instance.orderUpdated
              : (orderUpdated as Fragment$CurrentOrder)));

  CopyWith$Fragment$CurrentOrder<TRes> get orderUpdated {
    final local$orderUpdated = _instance.orderUpdated;
    return CopyWith$Fragment$CurrentOrder(
        local$orderUpdated, (e) => call(orderUpdated: e));
  }
}

class _CopyWithStubImpl$Subscription$OrderUpdateSubsctipion<TRes>
    implements CopyWith$Subscription$OrderUpdateSubsctipion<TRes> {
  _CopyWithStubImpl$Subscription$OrderUpdateSubsctipion(this._res);

  TRes _res;

  call({Fragment$CurrentOrder? orderUpdated}) => _res;

  CopyWith$Fragment$CurrentOrder<TRes> get orderUpdated =>
      CopyWith$Fragment$CurrentOrder.stub(_res);
}

const documentNodeSubscriptionOrderUpdateSubsctipion =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'OrderUpdateSubsctipion'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'orderUpdated'),
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
      )
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
Subscription$OrderUpdateSubsctipion
    _parserFn$Subscription$OrderUpdateSubsctipion(Map<String, dynamic> data) =>
        Subscription$OrderUpdateSubsctipion.fromJson(data);

class Options$Subscription$OrderUpdateSubsctipion
    extends graphql.SubscriptionOptions<Subscription$OrderUpdateSubsctipion> {
  Options$Subscription$OrderUpdateSubsctipion({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$OrderUpdateSubsctipion? typedOptimisticResult,
    graphql.Context? context,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionOrderUpdateSubsctipion,
          parserFn: _parserFn$Subscription$OrderUpdateSubsctipion,
        );
}

class WatchOptions$Subscription$OrderUpdateSubsctipion
    extends graphql.WatchQueryOptions<Subscription$OrderUpdateSubsctipion> {
  WatchOptions$Subscription$OrderUpdateSubsctipion({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$OrderUpdateSubsctipion? typedOptimisticResult,
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
          document: documentNodeSubscriptionOrderUpdateSubsctipion,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Subscription$OrderUpdateSubsctipion,
        );
}

class FetchMoreOptions$Subscription$OrderUpdateSubsctipion
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Subscription$OrderUpdateSubsctipion(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeSubscriptionOrderUpdateSubsctipion,
        );
}

extension ClientExtension$Subscription$OrderUpdateSubsctipion
    on graphql.GraphQLClient {
  Stream<graphql.QueryResult<Subscription$OrderUpdateSubsctipion>>
      subscribe$OrderUpdateSubsctipion(
              [Options$Subscription$OrderUpdateSubsctipion? options]) =>
          this.subscribe(
              options ?? Options$Subscription$OrderUpdateSubsctipion());
  graphql.ObservableQuery<Subscription$OrderUpdateSubsctipion>
      watchSubscription$OrderUpdateSubsctipion(
              [WatchOptions$Subscription$OrderUpdateSubsctipion? options]) =>
          this.watchQuery(
              options ?? WatchOptions$Subscription$OrderUpdateSubsctipion());
}

class Subscription$DriverLocationUpdated {
  Subscription$DriverLocationUpdated({required this.driverLocationUpdated});

  factory Subscription$DriverLocationUpdated.fromJson(
      Map<String, dynamic> json) {
    final l$driverLocationUpdated = json['driverLocationUpdated'];
    return Subscription$DriverLocationUpdated(
        driverLocationUpdated: Fragment$PointFragment.fromJson(
            (l$driverLocationUpdated as Map<String, dynamic>)));
  }

  final Fragment$PointFragment driverLocationUpdated;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$driverLocationUpdated = driverLocationUpdated;
    _resultData['driverLocationUpdated'] = l$driverLocationUpdated.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$driverLocationUpdated = driverLocationUpdated;
    return Object.hashAll([l$driverLocationUpdated]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Subscription$DriverLocationUpdated ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$driverLocationUpdated = driverLocationUpdated;
    final lOther$driverLocationUpdated = other.driverLocationUpdated;
    if (l$driverLocationUpdated != lOther$driverLocationUpdated) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$DriverLocationUpdated
    on Subscription$DriverLocationUpdated {
  CopyWith$Subscription$DriverLocationUpdated<
          Subscription$DriverLocationUpdated>
      get copyWith => CopyWith$Subscription$DriverLocationUpdated(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$DriverLocationUpdated<TRes> {
  factory CopyWith$Subscription$DriverLocationUpdated(
    Subscription$DriverLocationUpdated instance,
    TRes Function(Subscription$DriverLocationUpdated) then,
  ) = _CopyWithImpl$Subscription$DriverLocationUpdated;

  factory CopyWith$Subscription$DriverLocationUpdated.stub(TRes res) =
      _CopyWithStubImpl$Subscription$DriverLocationUpdated;

  TRes call({Fragment$PointFragment? driverLocationUpdated});
  CopyWith$Fragment$PointFragment<TRes> get driverLocationUpdated;
}

class _CopyWithImpl$Subscription$DriverLocationUpdated<TRes>
    implements CopyWith$Subscription$DriverLocationUpdated<TRes> {
  _CopyWithImpl$Subscription$DriverLocationUpdated(
    this._instance,
    this._then,
  );

  final Subscription$DriverLocationUpdated _instance;

  final TRes Function(Subscription$DriverLocationUpdated) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? driverLocationUpdated = _undefined}) =>
      _then(Subscription$DriverLocationUpdated(
          driverLocationUpdated: driverLocationUpdated == _undefined ||
                  driverLocationUpdated == null
              ? _instance.driverLocationUpdated
              : (driverLocationUpdated as Fragment$PointFragment)));

  CopyWith$Fragment$PointFragment<TRes> get driverLocationUpdated {
    final local$driverLocationUpdated = _instance.driverLocationUpdated;
    return CopyWith$Fragment$PointFragment(
        local$driverLocationUpdated, (e) => call(driverLocationUpdated: e));
  }
}

class _CopyWithStubImpl$Subscription$DriverLocationUpdated<TRes>
    implements CopyWith$Subscription$DriverLocationUpdated<TRes> {
  _CopyWithStubImpl$Subscription$DriverLocationUpdated(this._res);

  TRes _res;

  call({Fragment$PointFragment? driverLocationUpdated}) => _res;

  CopyWith$Fragment$PointFragment<TRes> get driverLocationUpdated =>
      CopyWith$Fragment$PointFragment.stub(_res);
}

const documentNodeSubscriptionDriverLocationUpdated =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'DriverLocationUpdated'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'driverLocationUpdated'),
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
      )
    ]),
  ),
  fragmentDefinitionPointFragment,
]);
Subscription$DriverLocationUpdated _parserFn$Subscription$DriverLocationUpdated(
        Map<String, dynamic> data) =>
    Subscription$DriverLocationUpdated.fromJson(data);

class Options$Subscription$DriverLocationUpdated
    extends graphql.SubscriptionOptions<Subscription$DriverLocationUpdated> {
  Options$Subscription$DriverLocationUpdated({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$DriverLocationUpdated? typedOptimisticResult,
    graphql.Context? context,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionDriverLocationUpdated,
          parserFn: _parserFn$Subscription$DriverLocationUpdated,
        );
}

class WatchOptions$Subscription$DriverLocationUpdated
    extends graphql.WatchQueryOptions<Subscription$DriverLocationUpdated> {
  WatchOptions$Subscription$DriverLocationUpdated({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$DriverLocationUpdated? typedOptimisticResult,
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
          document: documentNodeSubscriptionDriverLocationUpdated,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Subscription$DriverLocationUpdated,
        );
}

class FetchMoreOptions$Subscription$DriverLocationUpdated
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Subscription$DriverLocationUpdated(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeSubscriptionDriverLocationUpdated,
        );
}

extension ClientExtension$Subscription$DriverLocationUpdated
    on graphql.GraphQLClient {
  Stream<graphql.QueryResult<Subscription$DriverLocationUpdated>>
      subscribe$DriverLocationUpdated(
              [Options$Subscription$DriverLocationUpdated? options]) =>
          this.subscribe(
              options ?? Options$Subscription$DriverLocationUpdated());
  graphql.ObservableQuery<Subscription$DriverLocationUpdated>
      watchSubscription$DriverLocationUpdated(
              [WatchOptions$Subscription$DriverLocationUpdated? options]) =>
          this.watchQuery(
              options ?? WatchOptions$Subscription$DriverLocationUpdated());
}

class Subscription$NewMessageReceived {
  Subscription$NewMessageReceived({required this.newMessageReceived});

  factory Subscription$NewMessageReceived.fromJson(Map<String, dynamic> json) {
    final l$newMessageReceived = json['newMessageReceived'];
    return Subscription$NewMessageReceived(
        newMessageReceived: Fragment$ChatMessage.fromJson(
            (l$newMessageReceived as Map<String, dynamic>)));
  }

  final Fragment$ChatMessage newMessageReceived;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$newMessageReceived = newMessageReceived;
    _resultData['newMessageReceived'] = l$newMessageReceived.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$newMessageReceived = newMessageReceived;
    return Object.hashAll([l$newMessageReceived]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Subscription$NewMessageReceived ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$newMessageReceived = newMessageReceived;
    final lOther$newMessageReceived = other.newMessageReceived;
    if (l$newMessageReceived != lOther$newMessageReceived) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$NewMessageReceived
    on Subscription$NewMessageReceived {
  CopyWith$Subscription$NewMessageReceived<Subscription$NewMessageReceived>
      get copyWith => CopyWith$Subscription$NewMessageReceived(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$NewMessageReceived<TRes> {
  factory CopyWith$Subscription$NewMessageReceived(
    Subscription$NewMessageReceived instance,
    TRes Function(Subscription$NewMessageReceived) then,
  ) = _CopyWithImpl$Subscription$NewMessageReceived;

  factory CopyWith$Subscription$NewMessageReceived.stub(TRes res) =
      _CopyWithStubImpl$Subscription$NewMessageReceived;

  TRes call({Fragment$ChatMessage? newMessageReceived});
  CopyWith$Fragment$ChatMessage<TRes> get newMessageReceived;
}

class _CopyWithImpl$Subscription$NewMessageReceived<TRes>
    implements CopyWith$Subscription$NewMessageReceived<TRes> {
  _CopyWithImpl$Subscription$NewMessageReceived(
    this._instance,
    this._then,
  );

  final Subscription$NewMessageReceived _instance;

  final TRes Function(Subscription$NewMessageReceived) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? newMessageReceived = _undefined}) =>
      _then(Subscription$NewMessageReceived(
          newMessageReceived:
              newMessageReceived == _undefined || newMessageReceived == null
                  ? _instance.newMessageReceived
                  : (newMessageReceived as Fragment$ChatMessage)));

  CopyWith$Fragment$ChatMessage<TRes> get newMessageReceived {
    final local$newMessageReceived = _instance.newMessageReceived;
    return CopyWith$Fragment$ChatMessage(
        local$newMessageReceived, (e) => call(newMessageReceived: e));
  }
}

class _CopyWithStubImpl$Subscription$NewMessageReceived<TRes>
    implements CopyWith$Subscription$NewMessageReceived<TRes> {
  _CopyWithStubImpl$Subscription$NewMessageReceived(this._res);

  TRes _res;

  call({Fragment$ChatMessage? newMessageReceived}) => _res;

  CopyWith$Fragment$ChatMessage<TRes> get newMessageReceived =>
      CopyWith$Fragment$ChatMessage.stub(_res);
}

const documentNodeSubscriptionNewMessageReceived = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'NewMessageReceived'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'newMessageReceived'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'ChatMessage'),
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
      )
    ]),
  ),
  fragmentDefinitionChatMessage,
]);
Subscription$NewMessageReceived _parserFn$Subscription$NewMessageReceived(
        Map<String, dynamic> data) =>
    Subscription$NewMessageReceived.fromJson(data);

class Options$Subscription$NewMessageReceived
    extends graphql.SubscriptionOptions<Subscription$NewMessageReceived> {
  Options$Subscription$NewMessageReceived({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$NewMessageReceived? typedOptimisticResult,
    graphql.Context? context,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionNewMessageReceived,
          parserFn: _parserFn$Subscription$NewMessageReceived,
        );
}

class WatchOptions$Subscription$NewMessageReceived
    extends graphql.WatchQueryOptions<Subscription$NewMessageReceived> {
  WatchOptions$Subscription$NewMessageReceived({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$NewMessageReceived? typedOptimisticResult,
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
          document: documentNodeSubscriptionNewMessageReceived,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Subscription$NewMessageReceived,
        );
}

class FetchMoreOptions$Subscription$NewMessageReceived
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Subscription$NewMessageReceived(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeSubscriptionNewMessageReceived,
        );
}

extension ClientExtension$Subscription$NewMessageReceived
    on graphql.GraphQLClient {
  Stream<graphql.QueryResult<Subscription$NewMessageReceived>>
      subscribe$NewMessageReceived(
              [Options$Subscription$NewMessageReceived? options]) =>
          this.subscribe(options ?? Options$Subscription$NewMessageReceived());
  graphql.ObservableQuery<Subscription$NewMessageReceived>
      watchSubscription$NewMessageReceived(
              [WatchOptions$Subscription$NewMessageReceived? options]) =>
          this.watchQuery(
              options ?? WatchOptions$Subscription$NewMessageReceived());
}

class Query$CancelReasons {
  Query$CancelReasons({
    required this.orderCancelReasons,
    this.$__typename = 'Query',
  });

  factory Query$CancelReasons.fromJson(Map<String, dynamic> json) {
    final l$orderCancelReasons = json['orderCancelReasons'];
    final l$$__typename = json['__typename'];
    return Query$CancelReasons(
      orderCancelReasons: (l$orderCancelReasons as List<dynamic>)
          .map((e) => Query$CancelReasons$orderCancelReasons.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$CancelReasons$orderCancelReasons> orderCancelReasons;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$orderCancelReasons = orderCancelReasons;
    _resultData['orderCancelReasons'] =
        l$orderCancelReasons.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$orderCancelReasons = orderCancelReasons;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$orderCancelReasons.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$CancelReasons || runtimeType != other.runtimeType) {
      return false;
    }
    final l$orderCancelReasons = orderCancelReasons;
    final lOther$orderCancelReasons = other.orderCancelReasons;
    if (l$orderCancelReasons.length != lOther$orderCancelReasons.length) {
      return false;
    }
    for (int i = 0; i < l$orderCancelReasons.length; i++) {
      final l$orderCancelReasons$entry = l$orderCancelReasons[i];
      final lOther$orderCancelReasons$entry = lOther$orderCancelReasons[i];
      if (l$orderCancelReasons$entry != lOther$orderCancelReasons$entry) {
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

extension UtilityExtension$Query$CancelReasons on Query$CancelReasons {
  CopyWith$Query$CancelReasons<Query$CancelReasons> get copyWith =>
      CopyWith$Query$CancelReasons(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CancelReasons<TRes> {
  factory CopyWith$Query$CancelReasons(
    Query$CancelReasons instance,
    TRes Function(Query$CancelReasons) then,
  ) = _CopyWithImpl$Query$CancelReasons;

  factory CopyWith$Query$CancelReasons.stub(TRes res) =
      _CopyWithStubImpl$Query$CancelReasons;

  TRes call({
    List<Query$CancelReasons$orderCancelReasons>? orderCancelReasons,
    String? $__typename,
  });
  TRes orderCancelReasons(
      Iterable<Query$CancelReasons$orderCancelReasons> Function(
              Iterable<
                  CopyWith$Query$CancelReasons$orderCancelReasons<
                      Query$CancelReasons$orderCancelReasons>>)
          _fn);
}

class _CopyWithImpl$Query$CancelReasons<TRes>
    implements CopyWith$Query$CancelReasons<TRes> {
  _CopyWithImpl$Query$CancelReasons(
    this._instance,
    this._then,
  );

  final Query$CancelReasons _instance;

  final TRes Function(Query$CancelReasons) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? orderCancelReasons = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CancelReasons(
        orderCancelReasons:
            orderCancelReasons == _undefined || orderCancelReasons == null
                ? _instance.orderCancelReasons
                : (orderCancelReasons
                    as List<Query$CancelReasons$orderCancelReasons>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes orderCancelReasons(
          Iterable<Query$CancelReasons$orderCancelReasons> Function(
                  Iterable<
                      CopyWith$Query$CancelReasons$orderCancelReasons<
                          Query$CancelReasons$orderCancelReasons>>)
              _fn) =>
      call(
          orderCancelReasons: _fn(_instance.orderCancelReasons
              .map((e) => CopyWith$Query$CancelReasons$orderCancelReasons(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$CancelReasons<TRes>
    implements CopyWith$Query$CancelReasons<TRes> {
  _CopyWithStubImpl$Query$CancelReasons(this._res);

  TRes _res;

  call({
    List<Query$CancelReasons$orderCancelReasons>? orderCancelReasons,
    String? $__typename,
  }) =>
      _res;

  orderCancelReasons(_fn) => _res;
}

const documentNodeQueryCancelReasons = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'CancelReasons'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'orderCancelReasons'),
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
            name: NameNode(value: 'title'),
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
Query$CancelReasons _parserFn$Query$CancelReasons(Map<String, dynamic> data) =>
    Query$CancelReasons.fromJson(data);
typedef OnQueryComplete$Query$CancelReasons = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$CancelReasons?,
);

class Options$Query$CancelReasons
    extends graphql.QueryOptions<Query$CancelReasons> {
  Options$Query$CancelReasons({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$CancelReasons? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$CancelReasons? onComplete,
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
                    data == null ? null : _parserFn$Query$CancelReasons(data),
                  ),
          onError: onError,
          document: documentNodeQueryCancelReasons,
          parserFn: _parserFn$Query$CancelReasons,
        );

  final OnQueryComplete$Query$CancelReasons? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$CancelReasons
    extends graphql.WatchQueryOptions<Query$CancelReasons> {
  WatchOptions$Query$CancelReasons({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$CancelReasons? typedOptimisticResult,
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
          document: documentNodeQueryCancelReasons,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$CancelReasons,
        );
}

class FetchMoreOptions$Query$CancelReasons extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$CancelReasons(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryCancelReasons,
        );
}

extension ClientExtension$Query$CancelReasons on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$CancelReasons>> query$CancelReasons(
          [Options$Query$CancelReasons? options]) async =>
      await this.query(options ?? Options$Query$CancelReasons());
  graphql.ObservableQuery<Query$CancelReasons> watchQuery$CancelReasons(
          [WatchOptions$Query$CancelReasons? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$CancelReasons());
  void writeQuery$CancelReasons({
    required Query$CancelReasons data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryCancelReasons)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$CancelReasons? readQuery$CancelReasons({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryCancelReasons)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$CancelReasons.fromJson(result);
  }
}

class Query$CancelReasons$orderCancelReasons {
  Query$CancelReasons$orderCancelReasons({
    required this.id,
    required this.title,
    this.$__typename = 'OrderCancelReason',
  });

  factory Query$CancelReasons$orderCancelReasons.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Query$CancelReasons$orderCancelReasons(
      id: (l$id as String),
      title: (l$title as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$CancelReasons$orderCancelReasons ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
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

extension UtilityExtension$Query$CancelReasons$orderCancelReasons
    on Query$CancelReasons$orderCancelReasons {
  CopyWith$Query$CancelReasons$orderCancelReasons<
          Query$CancelReasons$orderCancelReasons>
      get copyWith => CopyWith$Query$CancelReasons$orderCancelReasons(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$CancelReasons$orderCancelReasons<TRes> {
  factory CopyWith$Query$CancelReasons$orderCancelReasons(
    Query$CancelReasons$orderCancelReasons instance,
    TRes Function(Query$CancelReasons$orderCancelReasons) then,
  ) = _CopyWithImpl$Query$CancelReasons$orderCancelReasons;

  factory CopyWith$Query$CancelReasons$orderCancelReasons.stub(TRes res) =
      _CopyWithStubImpl$Query$CancelReasons$orderCancelReasons;

  TRes call({
    String? id,
    String? title,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$CancelReasons$orderCancelReasons<TRes>
    implements CopyWith$Query$CancelReasons$orderCancelReasons<TRes> {
  _CopyWithImpl$Query$CancelReasons$orderCancelReasons(
    this._instance,
    this._then,
  );

  final Query$CancelReasons$orderCancelReasons _instance;

  final TRes Function(Query$CancelReasons$orderCancelReasons) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CancelReasons$orderCancelReasons(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$CancelReasons$orderCancelReasons<TRes>
    implements CopyWith$Query$CancelReasons$orderCancelReasons<TRes> {
  _CopyWithStubImpl$Query$CancelReasons$orderCancelReasons(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$SendMessage {
  factory Variables$Mutation$SendMessage({
    required String message,
    required String orderId,
  }) =>
      Variables$Mutation$SendMessage._({
        r'message': message,
        r'orderId': orderId,
      });

  Variables$Mutation$SendMessage._(this._$data);

  factory Variables$Mutation$SendMessage.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$message = data['message'];
    result$data['message'] = (l$message as String);
    final l$orderId = data['orderId'];
    result$data['orderId'] = (l$orderId as String);
    return Variables$Mutation$SendMessage._(result$data);
  }

  Map<String, dynamic> _$data;

  String get message => (_$data['message'] as String);

  String get orderId => (_$data['orderId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$message = message;
    result$data['message'] = l$message;
    final l$orderId = orderId;
    result$data['orderId'] = l$orderId;
    return result$data;
  }

  CopyWith$Variables$Mutation$SendMessage<Variables$Mutation$SendMessage>
      get copyWith => CopyWith$Variables$Mutation$SendMessage(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$SendMessage ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
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
    final l$message = message;
    final l$orderId = orderId;
    return Object.hashAll([
      l$message,
      l$orderId,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$SendMessage<TRes> {
  factory CopyWith$Variables$Mutation$SendMessage(
    Variables$Mutation$SendMessage instance,
    TRes Function(Variables$Mutation$SendMessage) then,
  ) = _CopyWithImpl$Variables$Mutation$SendMessage;

  factory CopyWith$Variables$Mutation$SendMessage.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SendMessage;

  TRes call({
    String? message,
    String? orderId,
  });
}

class _CopyWithImpl$Variables$Mutation$SendMessage<TRes>
    implements CopyWith$Variables$Mutation$SendMessage<TRes> {
  _CopyWithImpl$Variables$Mutation$SendMessage(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SendMessage _instance;

  final TRes Function(Variables$Mutation$SendMessage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? orderId = _undefined,
  }) =>
      _then(Variables$Mutation$SendMessage._({
        ..._instance._$data,
        if (message != _undefined && message != null)
          'message': (message as String),
        if (orderId != _undefined && orderId != null)
          'orderId': (orderId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SendMessage<TRes>
    implements CopyWith$Variables$Mutation$SendMessage<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SendMessage(this._res);

  TRes _res;

  call({
    String? message,
    String? orderId,
  }) =>
      _res;
}

class Mutation$SendMessage {
  Mutation$SendMessage({
    required this.createOneOrderMessage,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SendMessage.fromJson(Map<String, dynamic> json) {
    final l$createOneOrderMessage = json['createOneOrderMessage'];
    final l$$__typename = json['__typename'];
    return Mutation$SendMessage(
      createOneOrderMessage: Fragment$ChatMessage.fromJson(
          (l$createOneOrderMessage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$ChatMessage createOneOrderMessage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createOneOrderMessage = createOneOrderMessage;
    _resultData['createOneOrderMessage'] = l$createOneOrderMessage.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createOneOrderMessage = createOneOrderMessage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createOneOrderMessage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SendMessage || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createOneOrderMessage = createOneOrderMessage;
    final lOther$createOneOrderMessage = other.createOneOrderMessage;
    if (l$createOneOrderMessage != lOther$createOneOrderMessage) {
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

extension UtilityExtension$Mutation$SendMessage on Mutation$SendMessage {
  CopyWith$Mutation$SendMessage<Mutation$SendMessage> get copyWith =>
      CopyWith$Mutation$SendMessage(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SendMessage<TRes> {
  factory CopyWith$Mutation$SendMessage(
    Mutation$SendMessage instance,
    TRes Function(Mutation$SendMessage) then,
  ) = _CopyWithImpl$Mutation$SendMessage;

  factory CopyWith$Mutation$SendMessage.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SendMessage;

  TRes call({
    Fragment$ChatMessage? createOneOrderMessage,
    String? $__typename,
  });
  CopyWith$Fragment$ChatMessage<TRes> get createOneOrderMessage;
}

class _CopyWithImpl$Mutation$SendMessage<TRes>
    implements CopyWith$Mutation$SendMessage<TRes> {
  _CopyWithImpl$Mutation$SendMessage(
    this._instance,
    this._then,
  );

  final Mutation$SendMessage _instance;

  final TRes Function(Mutation$SendMessage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createOneOrderMessage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SendMessage(
        createOneOrderMessage:
            createOneOrderMessage == _undefined || createOneOrderMessage == null
                ? _instance.createOneOrderMessage
                : (createOneOrderMessage as Fragment$ChatMessage),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ChatMessage<TRes> get createOneOrderMessage {
    final local$createOneOrderMessage = _instance.createOneOrderMessage;
    return CopyWith$Fragment$ChatMessage(
        local$createOneOrderMessage, (e) => call(createOneOrderMessage: e));
  }
}

class _CopyWithStubImpl$Mutation$SendMessage<TRes>
    implements CopyWith$Mutation$SendMessage<TRes> {
  _CopyWithStubImpl$Mutation$SendMessage(this._res);

  TRes _res;

  call({
    Fragment$ChatMessage? createOneOrderMessage,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ChatMessage<TRes> get createOneOrderMessage =>
      CopyWith$Fragment$ChatMessage.stub(_res);
}

const documentNodeMutationSendMessage = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SendMessage'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'message')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createOneOrderMessage'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'orderMessage'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'content'),
                    value: VariableNode(name: NameNode(value: 'message')),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'requestId'),
                    value: VariableNode(name: NameNode(value: 'orderId')),
                  ),
                ]),
              )
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'ChatMessage'),
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
  fragmentDefinitionChatMessage,
]);
Mutation$SendMessage _parserFn$Mutation$SendMessage(
        Map<String, dynamic> data) =>
    Mutation$SendMessage.fromJson(data);
typedef OnMutationCompleted$Mutation$SendMessage = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$SendMessage?,
);

class Options$Mutation$SendMessage
    extends graphql.MutationOptions<Mutation$SendMessage> {
  Options$Mutation$SendMessage({
    String? operationName,
    required Variables$Mutation$SendMessage variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SendMessage? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SendMessage? onCompleted,
    graphql.OnMutationUpdate<Mutation$SendMessage>? update,
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
                    data == null ? null : _parserFn$Mutation$SendMessage(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSendMessage,
          parserFn: _parserFn$Mutation$SendMessage,
        );

  final OnMutationCompleted$Mutation$SendMessage? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$SendMessage
    extends graphql.WatchQueryOptions<Mutation$SendMessage> {
  WatchOptions$Mutation$SendMessage({
    String? operationName,
    required Variables$Mutation$SendMessage variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SendMessage? typedOptimisticResult,
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
          document: documentNodeMutationSendMessage,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$SendMessage,
        );
}

extension ClientExtension$Mutation$SendMessage on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SendMessage>> mutate$SendMessage(
          Options$Mutation$SendMessage options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$SendMessage> watchMutation$SendMessage(
          WatchOptions$Mutation$SendMessage options) =>
      this.watchMutation(options);
}

class Variables$Mutation$SendSOS {
  factory Variables$Mutation$SendSOS({required String orderId}) =>
      Variables$Mutation$SendSOS._({
        r'orderId': orderId,
      });

  Variables$Mutation$SendSOS._(this._$data);

  factory Variables$Mutation$SendSOS.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$orderId = data['orderId'];
    result$data['orderId'] = (l$orderId as String);
    return Variables$Mutation$SendSOS._(result$data);
  }

  Map<String, dynamic> _$data;

  String get orderId => (_$data['orderId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$orderId = orderId;
    result$data['orderId'] = l$orderId;
    return result$data;
  }

  CopyWith$Variables$Mutation$SendSOS<Variables$Mutation$SendSOS>
      get copyWith => CopyWith$Variables$Mutation$SendSOS(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$SendSOS ||
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

abstract class CopyWith$Variables$Mutation$SendSOS<TRes> {
  factory CopyWith$Variables$Mutation$SendSOS(
    Variables$Mutation$SendSOS instance,
    TRes Function(Variables$Mutation$SendSOS) then,
  ) = _CopyWithImpl$Variables$Mutation$SendSOS;

  factory CopyWith$Variables$Mutation$SendSOS.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SendSOS;

  TRes call({String? orderId});
}

class _CopyWithImpl$Variables$Mutation$SendSOS<TRes>
    implements CopyWith$Variables$Mutation$SendSOS<TRes> {
  _CopyWithImpl$Variables$Mutation$SendSOS(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SendSOS _instance;

  final TRes Function(Variables$Mutation$SendSOS) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? orderId = _undefined}) =>
      _then(Variables$Mutation$SendSOS._({
        ..._instance._$data,
        if (orderId != _undefined && orderId != null)
          'orderId': (orderId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SendSOS<TRes>
    implements CopyWith$Variables$Mutation$SendSOS<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SendSOS(this._res);

  TRes _res;

  call({String? orderId}) => _res;
}

class Mutation$SendSOS {
  Mutation$SendSOS({
    required this.sosSignal,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SendSOS.fromJson(Map<String, dynamic> json) {
    final l$sosSignal = json['sosSignal'];
    final l$$__typename = json['__typename'];
    return Mutation$SendSOS(
      sosSignal: Mutation$SendSOS$sosSignal.fromJson(
          (l$sosSignal as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SendSOS$sosSignal sosSignal;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sosSignal = sosSignal;
    _resultData['sosSignal'] = l$sosSignal.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sosSignal = sosSignal;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$sosSignal,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SendSOS || runtimeType != other.runtimeType) {
      return false;
    }
    final l$sosSignal = sosSignal;
    final lOther$sosSignal = other.sosSignal;
    if (l$sosSignal != lOther$sosSignal) {
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

extension UtilityExtension$Mutation$SendSOS on Mutation$SendSOS {
  CopyWith$Mutation$SendSOS<Mutation$SendSOS> get copyWith =>
      CopyWith$Mutation$SendSOS(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SendSOS<TRes> {
  factory CopyWith$Mutation$SendSOS(
    Mutation$SendSOS instance,
    TRes Function(Mutation$SendSOS) then,
  ) = _CopyWithImpl$Mutation$SendSOS;

  factory CopyWith$Mutation$SendSOS.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SendSOS;

  TRes call({
    Mutation$SendSOS$sosSignal? sosSignal,
    String? $__typename,
  });
  CopyWith$Mutation$SendSOS$sosSignal<TRes> get sosSignal;
}

class _CopyWithImpl$Mutation$SendSOS<TRes>
    implements CopyWith$Mutation$SendSOS<TRes> {
  _CopyWithImpl$Mutation$SendSOS(
    this._instance,
    this._then,
  );

  final Mutation$SendSOS _instance;

  final TRes Function(Mutation$SendSOS) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sosSignal = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SendSOS(
        sosSignal: sosSignal == _undefined || sosSignal == null
            ? _instance.sosSignal
            : (sosSignal as Mutation$SendSOS$sosSignal),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$SendSOS$sosSignal<TRes> get sosSignal {
    final local$sosSignal = _instance.sosSignal;
    return CopyWith$Mutation$SendSOS$sosSignal(
        local$sosSignal, (e) => call(sosSignal: e));
  }
}

class _CopyWithStubImpl$Mutation$SendSOS<TRes>
    implements CopyWith$Mutation$SendSOS<TRes> {
  _CopyWithStubImpl$Mutation$SendSOS(this._res);

  TRes _res;

  call({
    Mutation$SendSOS$sosSignal? sosSignal,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$SendSOS$sosSignal<TRes> get sosSignal =>
      CopyWith$Mutation$SendSOS$sosSignal.stub(_res);
}

const documentNodeMutationSendSOS = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SendSOS'),
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
        name: NameNode(value: 'sosSignal'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'orderId'),
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
Mutation$SendSOS _parserFn$Mutation$SendSOS(Map<String, dynamic> data) =>
    Mutation$SendSOS.fromJson(data);
typedef OnMutationCompleted$Mutation$SendSOS = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$SendSOS?,
);

class Options$Mutation$SendSOS
    extends graphql.MutationOptions<Mutation$SendSOS> {
  Options$Mutation$SendSOS({
    String? operationName,
    required Variables$Mutation$SendSOS variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SendSOS? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SendSOS? onCompleted,
    graphql.OnMutationUpdate<Mutation$SendSOS>? update,
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
                    data == null ? null : _parserFn$Mutation$SendSOS(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSendSOS,
          parserFn: _parserFn$Mutation$SendSOS,
        );

  final OnMutationCompleted$Mutation$SendSOS? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$SendSOS
    extends graphql.WatchQueryOptions<Mutation$SendSOS> {
  WatchOptions$Mutation$SendSOS({
    String? operationName,
    required Variables$Mutation$SendSOS variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SendSOS? typedOptimisticResult,
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
          document: documentNodeMutationSendSOS,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$SendSOS,
        );
}

extension ClientExtension$Mutation$SendSOS on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SendSOS>> mutate$SendSOS(
          Options$Mutation$SendSOS options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$SendSOS> watchMutation$SendSOS(
          WatchOptions$Mutation$SendSOS options) =>
      this.watchMutation(options);
}

class Mutation$SendSOS$sosSignal {
  Mutation$SendSOS$sosSignal({
    required this.id,
    this.$__typename = 'SOS',
  });

  factory Mutation$SendSOS$sosSignal.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$SendSOS$sosSignal(
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
    if (other is! Mutation$SendSOS$sosSignal ||
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

extension UtilityExtension$Mutation$SendSOS$sosSignal
    on Mutation$SendSOS$sosSignal {
  CopyWith$Mutation$SendSOS$sosSignal<Mutation$SendSOS$sosSignal>
      get copyWith => CopyWith$Mutation$SendSOS$sosSignal(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SendSOS$sosSignal<TRes> {
  factory CopyWith$Mutation$SendSOS$sosSignal(
    Mutation$SendSOS$sosSignal instance,
    TRes Function(Mutation$SendSOS$sosSignal) then,
  ) = _CopyWithImpl$Mutation$SendSOS$sosSignal;

  factory CopyWith$Mutation$SendSOS$sosSignal.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SendSOS$sosSignal;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SendSOS$sosSignal<TRes>
    implements CopyWith$Mutation$SendSOS$sosSignal<TRes> {
  _CopyWithImpl$Mutation$SendSOS$sosSignal(
    this._instance,
    this._then,
  );

  final Mutation$SendSOS$sosSignal _instance;

  final TRes Function(Mutation$SendSOS$sosSignal) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SendSOS$sosSignal(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$SendSOS$sosSignal<TRes>
    implements CopyWith$Mutation$SendSOS$sosSignal<TRes> {
  _CopyWithStubImpl$Mutation$SendSOS$sosSignal(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$UpdateLastSeenMessages {
  factory Variables$Mutation$UpdateLastSeenMessages(
          {required String orderId}) =>
      Variables$Mutation$UpdateLastSeenMessages._({
        r'orderId': orderId,
      });

  Variables$Mutation$UpdateLastSeenMessages._(this._$data);

  factory Variables$Mutation$UpdateLastSeenMessages.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$orderId = data['orderId'];
    result$data['orderId'] = (l$orderId as String);
    return Variables$Mutation$UpdateLastSeenMessages._(result$data);
  }

  Map<String, dynamic> _$data;

  String get orderId => (_$data['orderId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$orderId = orderId;
    result$data['orderId'] = l$orderId;
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateLastSeenMessages<
          Variables$Mutation$UpdateLastSeenMessages>
      get copyWith => CopyWith$Variables$Mutation$UpdateLastSeenMessages(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateLastSeenMessages ||
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

abstract class CopyWith$Variables$Mutation$UpdateLastSeenMessages<TRes> {
  factory CopyWith$Variables$Mutation$UpdateLastSeenMessages(
    Variables$Mutation$UpdateLastSeenMessages instance,
    TRes Function(Variables$Mutation$UpdateLastSeenMessages) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateLastSeenMessages;

  factory CopyWith$Variables$Mutation$UpdateLastSeenMessages.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateLastSeenMessages;

  TRes call({String? orderId});
}

class _CopyWithImpl$Variables$Mutation$UpdateLastSeenMessages<TRes>
    implements CopyWith$Variables$Mutation$UpdateLastSeenMessages<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateLastSeenMessages(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateLastSeenMessages _instance;

  final TRes Function(Variables$Mutation$UpdateLastSeenMessages) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? orderId = _undefined}) =>
      _then(Variables$Mutation$UpdateLastSeenMessages._({
        ..._instance._$data,
        if (orderId != _undefined && orderId != null)
          'orderId': (orderId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateLastSeenMessages<TRes>
    implements CopyWith$Variables$Mutation$UpdateLastSeenMessages<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateLastSeenMessages(this._res);

  TRes _res;

  call({String? orderId}) => _res;
}

class Mutation$UpdateLastSeenMessages {
  Mutation$UpdateLastSeenMessages({
    required this.updateLastSeenMessagesAt,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateLastSeenMessages.fromJson(Map<String, dynamic> json) {
    final l$updateLastSeenMessagesAt = json['updateLastSeenMessagesAt'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateLastSeenMessages(
      updateLastSeenMessagesAt: (l$updateLastSeenMessagesAt as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool updateLastSeenMessagesAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateLastSeenMessagesAt = updateLastSeenMessagesAt;
    _resultData['updateLastSeenMessagesAt'] = l$updateLastSeenMessagesAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateLastSeenMessagesAt = updateLastSeenMessagesAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateLastSeenMessagesAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateLastSeenMessages ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateLastSeenMessagesAt = updateLastSeenMessagesAt;
    final lOther$updateLastSeenMessagesAt = other.updateLastSeenMessagesAt;
    if (l$updateLastSeenMessagesAt != lOther$updateLastSeenMessagesAt) {
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

extension UtilityExtension$Mutation$UpdateLastSeenMessages
    on Mutation$UpdateLastSeenMessages {
  CopyWith$Mutation$UpdateLastSeenMessages<Mutation$UpdateLastSeenMessages>
      get copyWith => CopyWith$Mutation$UpdateLastSeenMessages(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateLastSeenMessages<TRes> {
  factory CopyWith$Mutation$UpdateLastSeenMessages(
    Mutation$UpdateLastSeenMessages instance,
    TRes Function(Mutation$UpdateLastSeenMessages) then,
  ) = _CopyWithImpl$Mutation$UpdateLastSeenMessages;

  factory CopyWith$Mutation$UpdateLastSeenMessages.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateLastSeenMessages;

  TRes call({
    bool? updateLastSeenMessagesAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateLastSeenMessages<TRes>
    implements CopyWith$Mutation$UpdateLastSeenMessages<TRes> {
  _CopyWithImpl$Mutation$UpdateLastSeenMessages(
    this._instance,
    this._then,
  );

  final Mutation$UpdateLastSeenMessages _instance;

  final TRes Function(Mutation$UpdateLastSeenMessages) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateLastSeenMessagesAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateLastSeenMessages(
        updateLastSeenMessagesAt: updateLastSeenMessagesAt == _undefined ||
                updateLastSeenMessagesAt == null
            ? _instance.updateLastSeenMessagesAt
            : (updateLastSeenMessagesAt as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateLastSeenMessages<TRes>
    implements CopyWith$Mutation$UpdateLastSeenMessages<TRes> {
  _CopyWithStubImpl$Mutation$UpdateLastSeenMessages(this._res);

  TRes _res;

  call({
    bool? updateLastSeenMessagesAt,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationUpdateLastSeenMessages = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateLastSeenMessages'),
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
        name: NameNode(value: 'updateLastSeenMessagesAt'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'orderId'),
            value: VariableNode(name: NameNode(value: 'orderId')),
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
Mutation$UpdateLastSeenMessages _parserFn$Mutation$UpdateLastSeenMessages(
        Map<String, dynamic> data) =>
    Mutation$UpdateLastSeenMessages.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateLastSeenMessages = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UpdateLastSeenMessages?,
);

class Options$Mutation$UpdateLastSeenMessages
    extends graphql.MutationOptions<Mutation$UpdateLastSeenMessages> {
  Options$Mutation$UpdateLastSeenMessages({
    String? operationName,
    required Variables$Mutation$UpdateLastSeenMessages variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateLastSeenMessages? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateLastSeenMessages? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateLastSeenMessages>? update,
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
                        : _parserFn$Mutation$UpdateLastSeenMessages(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateLastSeenMessages,
          parserFn: _parserFn$Mutation$UpdateLastSeenMessages,
        );

  final OnMutationCompleted$Mutation$UpdateLastSeenMessages?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateLastSeenMessages
    extends graphql.WatchQueryOptions<Mutation$UpdateLastSeenMessages> {
  WatchOptions$Mutation$UpdateLastSeenMessages({
    String? operationName,
    required Variables$Mutation$UpdateLastSeenMessages variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateLastSeenMessages? typedOptimisticResult,
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
          document: documentNodeMutationUpdateLastSeenMessages,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateLastSeenMessages,
        );
}

extension ClientExtension$Mutation$UpdateLastSeenMessages
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateLastSeenMessages>>
      mutate$UpdateLastSeenMessages(
              Options$Mutation$UpdateLastSeenMessages options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateLastSeenMessages>
      watchMutation$UpdateLastSeenMessages(
              WatchOptions$Mutation$UpdateLastSeenMessages options) =>
          this.watchMutation(options);
}
