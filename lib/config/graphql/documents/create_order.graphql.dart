import '../fragments/chat_message.fragment.graphql.dart';
import '../fragments/current_order.fragment.graphql.dart';
import '../fragments/media.fragment.graphql.dart';
import '../fragments/payment_gateway.fragment.graphql.dart';
import '../fragments/point.fragment.graphql.dart';
import '../fragments/ride_option.fragment.graphql.dart';
import '../fragments/saved_payment_method.fragment.graphql.dart';
import '../schema.gql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Mutation$CreateOrder {
  factory Variables$Mutation$CreateOrder(
          {required Input$CreateOrderInput input}) =>
      Variables$Mutation$CreateOrder._({
        r'input': input,
      });

  Variables$Mutation$CreateOrder._(this._$data);

  factory Variables$Mutation$CreateOrder.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$CreateOrderInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$CreateOrder._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateOrderInput get input =>
      (_$data['input'] as Input$CreateOrderInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateOrder<Variables$Mutation$CreateOrder>
      get copyWith => CopyWith$Variables$Mutation$CreateOrder(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateOrder ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$CreateOrder<TRes> {
  factory CopyWith$Variables$Mutation$CreateOrder(
    Variables$Mutation$CreateOrder instance,
    TRes Function(Variables$Mutation$CreateOrder) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateOrder;

  factory CopyWith$Variables$Mutation$CreateOrder.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateOrder;

  TRes call({Input$CreateOrderInput? input});
}

class _CopyWithImpl$Variables$Mutation$CreateOrder<TRes>
    implements CopyWith$Variables$Mutation$CreateOrder<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateOrder(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateOrder _instance;

  final TRes Function(Variables$Mutation$CreateOrder) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$CreateOrder._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$CreateOrderInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateOrder<TRes>
    implements CopyWith$Variables$Mutation$CreateOrder<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateOrder(this._res);

  TRes _res;

  call({Input$CreateOrderInput? input}) => _res;
}

class Mutation$CreateOrder {
  Mutation$CreateOrder({
    required this.createOrder,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateOrder.fromJson(Map<String, dynamic> json) {
    final l$createOrder = json['createOrder'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateOrder(
      createOrder: Fragment$CurrentOrder.fromJson(
          (l$createOrder as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$CurrentOrder createOrder;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createOrder = createOrder;
    _resultData['createOrder'] = l$createOrder.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createOrder = createOrder;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createOrder,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateOrder || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createOrder = createOrder;
    final lOther$createOrder = other.createOrder;
    if (l$createOrder != lOther$createOrder) {
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

extension UtilityExtension$Mutation$CreateOrder on Mutation$CreateOrder {
  CopyWith$Mutation$CreateOrder<Mutation$CreateOrder> get copyWith =>
      CopyWith$Mutation$CreateOrder(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateOrder<TRes> {
  factory CopyWith$Mutation$CreateOrder(
    Mutation$CreateOrder instance,
    TRes Function(Mutation$CreateOrder) then,
  ) = _CopyWithImpl$Mutation$CreateOrder;

  factory CopyWith$Mutation$CreateOrder.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateOrder;

  TRes call({
    Fragment$CurrentOrder? createOrder,
    String? $__typename,
  });
  CopyWith$Fragment$CurrentOrder<TRes> get createOrder;
}

class _CopyWithImpl$Mutation$CreateOrder<TRes>
    implements CopyWith$Mutation$CreateOrder<TRes> {
  _CopyWithImpl$Mutation$CreateOrder(
    this._instance,
    this._then,
  );

  final Mutation$CreateOrder _instance;

  final TRes Function(Mutation$CreateOrder) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createOrder = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateOrder(
        createOrder: createOrder == _undefined || createOrder == null
            ? _instance.createOrder
            : (createOrder as Fragment$CurrentOrder),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$CurrentOrder<TRes> get createOrder {
    final local$createOrder = _instance.createOrder;
    return CopyWith$Fragment$CurrentOrder(
        local$createOrder, (e) => call(createOrder: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateOrder<TRes>
    implements CopyWith$Mutation$CreateOrder<TRes> {
  _CopyWithStubImpl$Mutation$CreateOrder(this._res);

  TRes _res;

  call({
    Fragment$CurrentOrder? createOrder,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$CurrentOrder<TRes> get createOrder =>
      CopyWith$Fragment$CurrentOrder.stub(_res);
}

const documentNodeMutationCreateOrder = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateOrder'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'CreateOrderInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createOrder'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
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
Mutation$CreateOrder _parserFn$Mutation$CreateOrder(
        Map<String, dynamic> data) =>
    Mutation$CreateOrder.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateOrder = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$CreateOrder?,
);

class Options$Mutation$CreateOrder
    extends graphql.MutationOptions<Mutation$CreateOrder> {
  Options$Mutation$CreateOrder({
    String? operationName,
    required Variables$Mutation$CreateOrder variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateOrder? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateOrder? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateOrder>? update,
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
                    data == null ? null : _parserFn$Mutation$CreateOrder(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateOrder,
          parserFn: _parserFn$Mutation$CreateOrder,
        );

  final OnMutationCompleted$Mutation$CreateOrder? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateOrder
    extends graphql.WatchQueryOptions<Mutation$CreateOrder> {
  WatchOptions$Mutation$CreateOrder({
    String? operationName,
    required Variables$Mutation$CreateOrder variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateOrder? typedOptimisticResult,
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
          document: documentNodeMutationCreateOrder,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateOrder,
        );
}

extension ClientExtension$Mutation$CreateOrder on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateOrder>> mutate$CreateOrder(
          Options$Mutation$CreateOrder options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreateOrder> watchMutation$CreateOrder(
          WatchOptions$Mutation$CreateOrder options) =>
      this.watchMutation(options);
}

class Variables$Query$WalletForCurrency {
  factory Variables$Query$WalletForCurrency({required String currency}) =>
      Variables$Query$WalletForCurrency._({
        r'currency': currency,
      });

  Variables$Query$WalletForCurrency._(this._$data);

  factory Variables$Query$WalletForCurrency.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$currency = data['currency'];
    result$data['currency'] = (l$currency as String);
    return Variables$Query$WalletForCurrency._(result$data);
  }

  Map<String, dynamic> _$data;

  String get currency => (_$data['currency'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$currency = currency;
    result$data['currency'] = l$currency;
    return result$data;
  }

  CopyWith$Variables$Query$WalletForCurrency<Variables$Query$WalletForCurrency>
      get copyWith => CopyWith$Variables$Query$WalletForCurrency(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$WalletForCurrency ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$currency = currency;
    return Object.hashAll([l$currency]);
  }
}

abstract class CopyWith$Variables$Query$WalletForCurrency<TRes> {
  factory CopyWith$Variables$Query$WalletForCurrency(
    Variables$Query$WalletForCurrency instance,
    TRes Function(Variables$Query$WalletForCurrency) then,
  ) = _CopyWithImpl$Variables$Query$WalletForCurrency;

  factory CopyWith$Variables$Query$WalletForCurrency.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$WalletForCurrency;

  TRes call({String? currency});
}

class _CopyWithImpl$Variables$Query$WalletForCurrency<TRes>
    implements CopyWith$Variables$Query$WalletForCurrency<TRes> {
  _CopyWithImpl$Variables$Query$WalletForCurrency(
    this._instance,
    this._then,
  );

  final Variables$Query$WalletForCurrency _instance;

  final TRes Function(Variables$Query$WalletForCurrency) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? currency = _undefined}) =>
      _then(Variables$Query$WalletForCurrency._({
        ..._instance._$data,
        if (currency != _undefined && currency != null)
          'currency': (currency as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$WalletForCurrency<TRes>
    implements CopyWith$Variables$Query$WalletForCurrency<TRes> {
  _CopyWithStubImpl$Variables$Query$WalletForCurrency(this._res);

  TRes _res;

  call({String? currency}) => _res;
}

class Query$WalletForCurrency {
  Query$WalletForCurrency({
    required this.riderWallets,
    this.$__typename = 'Query',
  });

  factory Query$WalletForCurrency.fromJson(Map<String, dynamic> json) {
    final l$riderWallets = json['riderWallets'];
    final l$$__typename = json['__typename'];
    return Query$WalletForCurrency(
      riderWallets: (l$riderWallets as List<dynamic>)
          .map((e) => Query$WalletForCurrency$riderWallets.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$WalletForCurrency$riderWallets> riderWallets;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$riderWallets = riderWallets;
    _resultData['riderWallets'] =
        l$riderWallets.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$riderWallets = riderWallets;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$riderWallets.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$WalletForCurrency || runtimeType != other.runtimeType) {
      return false;
    }
    final l$riderWallets = riderWallets;
    final lOther$riderWallets = other.riderWallets;
    if (l$riderWallets.length != lOther$riderWallets.length) {
      return false;
    }
    for (int i = 0; i < l$riderWallets.length; i++) {
      final l$riderWallets$entry = l$riderWallets[i];
      final lOther$riderWallets$entry = lOther$riderWallets[i];
      if (l$riderWallets$entry != lOther$riderWallets$entry) {
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

extension UtilityExtension$Query$WalletForCurrency on Query$WalletForCurrency {
  CopyWith$Query$WalletForCurrency<Query$WalletForCurrency> get copyWith =>
      CopyWith$Query$WalletForCurrency(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WalletForCurrency<TRes> {
  factory CopyWith$Query$WalletForCurrency(
    Query$WalletForCurrency instance,
    TRes Function(Query$WalletForCurrency) then,
  ) = _CopyWithImpl$Query$WalletForCurrency;

  factory CopyWith$Query$WalletForCurrency.stub(TRes res) =
      _CopyWithStubImpl$Query$WalletForCurrency;

  TRes call({
    List<Query$WalletForCurrency$riderWallets>? riderWallets,
    String? $__typename,
  });
  TRes riderWallets(
      Iterable<Query$WalletForCurrency$riderWallets> Function(
              Iterable<
                  CopyWith$Query$WalletForCurrency$riderWallets<
                      Query$WalletForCurrency$riderWallets>>)
          _fn);
}

class _CopyWithImpl$Query$WalletForCurrency<TRes>
    implements CopyWith$Query$WalletForCurrency<TRes> {
  _CopyWithImpl$Query$WalletForCurrency(
    this._instance,
    this._then,
  );

  final Query$WalletForCurrency _instance;

  final TRes Function(Query$WalletForCurrency) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? riderWallets = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$WalletForCurrency(
        riderWallets: riderWallets == _undefined || riderWallets == null
            ? _instance.riderWallets
            : (riderWallets as List<Query$WalletForCurrency$riderWallets>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes riderWallets(
          Iterable<Query$WalletForCurrency$riderWallets> Function(
                  Iterable<
                      CopyWith$Query$WalletForCurrency$riderWallets<
                          Query$WalletForCurrency$riderWallets>>)
              _fn) =>
      call(
          riderWallets: _fn(_instance.riderWallets
              .map((e) => CopyWith$Query$WalletForCurrency$riderWallets(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$WalletForCurrency<TRes>
    implements CopyWith$Query$WalletForCurrency<TRes> {
  _CopyWithStubImpl$Query$WalletForCurrency(this._res);

  TRes _res;

  call({
    List<Query$WalletForCurrency$riderWallets>? riderWallets,
    String? $__typename,
  }) =>
      _res;

  riderWallets(_fn) => _res;
}

const documentNodeQueryWalletForCurrency = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'WalletForCurrency'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'currency')),
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
        name: NameNode(value: 'riderWallets'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'filter'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'currency'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'eq'),
                    value: VariableNode(name: NameNode(value: 'currency')),
                  )
                ]),
              )
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'balance'),
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
Query$WalletForCurrency _parserFn$Query$WalletForCurrency(
        Map<String, dynamic> data) =>
    Query$WalletForCurrency.fromJson(data);
typedef OnQueryComplete$Query$WalletForCurrency = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$WalletForCurrency?,
);

class Options$Query$WalletForCurrency
    extends graphql.QueryOptions<Query$WalletForCurrency> {
  Options$Query$WalletForCurrency({
    String? operationName,
    required Variables$Query$WalletForCurrency variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$WalletForCurrency? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$WalletForCurrency? onComplete,
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
                    data == null
                        ? null
                        : _parserFn$Query$WalletForCurrency(data),
                  ),
          onError: onError,
          document: documentNodeQueryWalletForCurrency,
          parserFn: _parserFn$Query$WalletForCurrency,
        );

  final OnQueryComplete$Query$WalletForCurrency? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$WalletForCurrency
    extends graphql.WatchQueryOptions<Query$WalletForCurrency> {
  WatchOptions$Query$WalletForCurrency({
    String? operationName,
    required Variables$Query$WalletForCurrency variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$WalletForCurrency? typedOptimisticResult,
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
          document: documentNodeQueryWalletForCurrency,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$WalletForCurrency,
        );
}

class FetchMoreOptions$Query$WalletForCurrency
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$WalletForCurrency({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$WalletForCurrency variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryWalletForCurrency,
        );
}

extension ClientExtension$Query$WalletForCurrency on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$WalletForCurrency>> query$WalletForCurrency(
          Options$Query$WalletForCurrency options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$WalletForCurrency> watchQuery$WalletForCurrency(
          WatchOptions$Query$WalletForCurrency options) =>
      this.watchQuery(options);
  void writeQuery$WalletForCurrency({
    required Query$WalletForCurrency data,
    required Variables$Query$WalletForCurrency variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryWalletForCurrency),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$WalletForCurrency? readQuery$WalletForCurrency({
    required Variables$Query$WalletForCurrency variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryWalletForCurrency),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$WalletForCurrency.fromJson(result);
  }
}

class Query$WalletForCurrency$riderWallets {
  Query$WalletForCurrency$riderWallets({
    required this.balance,
    this.$__typename = 'RiderWallet',
  });

  factory Query$WalletForCurrency$riderWallets.fromJson(
      Map<String, dynamic> json) {
    final l$balance = json['balance'];
    final l$$__typename = json['__typename'];
    return Query$WalletForCurrency$riderWallets(
      balance: (l$balance as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final double balance;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$balance = balance;
    _resultData['balance'] = l$balance;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$balance = balance;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$balance,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$WalletForCurrency$riderWallets ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$balance = balance;
    final lOther$balance = other.balance;
    if (l$balance != lOther$balance) {
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

extension UtilityExtension$Query$WalletForCurrency$riderWallets
    on Query$WalletForCurrency$riderWallets {
  CopyWith$Query$WalletForCurrency$riderWallets<
          Query$WalletForCurrency$riderWallets>
      get copyWith => CopyWith$Query$WalletForCurrency$riderWallets(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$WalletForCurrency$riderWallets<TRes> {
  factory CopyWith$Query$WalletForCurrency$riderWallets(
    Query$WalletForCurrency$riderWallets instance,
    TRes Function(Query$WalletForCurrency$riderWallets) then,
  ) = _CopyWithImpl$Query$WalletForCurrency$riderWallets;

  factory CopyWith$Query$WalletForCurrency$riderWallets.stub(TRes res) =
      _CopyWithStubImpl$Query$WalletForCurrency$riderWallets;

  TRes call({
    double? balance,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$WalletForCurrency$riderWallets<TRes>
    implements CopyWith$Query$WalletForCurrency$riderWallets<TRes> {
  _CopyWithImpl$Query$WalletForCurrency$riderWallets(
    this._instance,
    this._then,
  );

  final Query$WalletForCurrency$riderWallets _instance;

  final TRes Function(Query$WalletForCurrency$riderWallets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? balance = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$WalletForCurrency$riderWallets(
        balance: balance == _undefined || balance == null
            ? _instance.balance
            : (balance as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$WalletForCurrency$riderWallets<TRes>
    implements CopyWith$Query$WalletForCurrency$riderWallets<TRes> {
  _CopyWithStubImpl$Query$WalletForCurrency$riderWallets(this._res);

  TRes _res;

  call({
    double? balance,
    String? $__typename,
  }) =>
      _res;
}
