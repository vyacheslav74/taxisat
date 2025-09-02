import '../fragments/intent_result.fragment.graphql.dart';
import '../fragments/media.fragment.graphql.dart';
import '../fragments/payment_gateway.fragment.graphql.dart';
import '../fragments/saved_payment_method.fragment.graphql.dart';
import '../schema.gql.dart';
import 'dart:async';
import 'package:flutter_common/core/graphql/scalars/timestamp.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Query$Wallet {
  Query$Wallet({
    required this.rider,
    required this.savedPaymentMethods,
    required this.paymentGateways,
    this.$__typename = 'Query',
  });

  factory Query$Wallet.fromJson(Map<String, dynamic> json) {
    final l$rider = json['rider'];
    final l$savedPaymentMethods = json['savedPaymentMethods'];
    final l$paymentGateways = json['paymentGateways'];
    final l$$__typename = json['__typename'];
    return Query$Wallet(
      rider: Query$Wallet$rider.fromJson((l$rider as Map<String, dynamic>)),
      savedPaymentMethods: (l$savedPaymentMethods as List<dynamic>)
          .map((e) => Fragment$SavedPaymentMethodFragment.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      paymentGateways: (l$paymentGateways as List<dynamic>)
          .map((e) => Fragment$PaymentGatewayFragment.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Wallet$rider rider;

  final List<Fragment$SavedPaymentMethodFragment> savedPaymentMethods;

  final List<Fragment$PaymentGatewayFragment> paymentGateways;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$rider = rider;
    _resultData['rider'] = l$rider.toJson();
    final l$savedPaymentMethods = savedPaymentMethods;
    _resultData['savedPaymentMethods'] =
        l$savedPaymentMethods.map((e) => e.toJson()).toList();
    final l$paymentGateways = paymentGateways;
    _resultData['paymentGateways'] =
        l$paymentGateways.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$rider = rider;
    final l$savedPaymentMethods = savedPaymentMethods;
    final l$paymentGateways = paymentGateways;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$rider,
      Object.hashAll(l$savedPaymentMethods.map((v) => v)),
      Object.hashAll(l$paymentGateways.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Wallet || runtimeType != other.runtimeType) {
      return false;
    }
    final l$rider = rider;
    final lOther$rider = other.rider;
    if (l$rider != lOther$rider) {
      return false;
    }
    final l$savedPaymentMethods = savedPaymentMethods;
    final lOther$savedPaymentMethods = other.savedPaymentMethods;
    if (l$savedPaymentMethods.length != lOther$savedPaymentMethods.length) {
      return false;
    }
    for (int i = 0; i < l$savedPaymentMethods.length; i++) {
      final l$savedPaymentMethods$entry = l$savedPaymentMethods[i];
      final lOther$savedPaymentMethods$entry = lOther$savedPaymentMethods[i];
      if (l$savedPaymentMethods$entry != lOther$savedPaymentMethods$entry) {
        return false;
      }
    }
    final l$paymentGateways = paymentGateways;
    final lOther$paymentGateways = other.paymentGateways;
    if (l$paymentGateways.length != lOther$paymentGateways.length) {
      return false;
    }
    for (int i = 0; i < l$paymentGateways.length; i++) {
      final l$paymentGateways$entry = l$paymentGateways[i];
      final lOther$paymentGateways$entry = lOther$paymentGateways[i];
      if (l$paymentGateways$entry != lOther$paymentGateways$entry) {
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

extension UtilityExtension$Query$Wallet on Query$Wallet {
  CopyWith$Query$Wallet<Query$Wallet> get copyWith => CopyWith$Query$Wallet(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Wallet<TRes> {
  factory CopyWith$Query$Wallet(
    Query$Wallet instance,
    TRes Function(Query$Wallet) then,
  ) = _CopyWithImpl$Query$Wallet;

  factory CopyWith$Query$Wallet.stub(TRes res) = _CopyWithStubImpl$Query$Wallet;

  TRes call({
    Query$Wallet$rider? rider,
    List<Fragment$SavedPaymentMethodFragment>? savedPaymentMethods,
    List<Fragment$PaymentGatewayFragment>? paymentGateways,
    String? $__typename,
  });
  CopyWith$Query$Wallet$rider<TRes> get rider;
  TRes savedPaymentMethods(
      Iterable<Fragment$SavedPaymentMethodFragment> Function(
              Iterable<
                  CopyWith$Fragment$SavedPaymentMethodFragment<
                      Fragment$SavedPaymentMethodFragment>>)
          _fn);
  TRes paymentGateways(
      Iterable<Fragment$PaymentGatewayFragment> Function(
              Iterable<
                  CopyWith$Fragment$PaymentGatewayFragment<
                      Fragment$PaymentGatewayFragment>>)
          _fn);
}

class _CopyWithImpl$Query$Wallet<TRes> implements CopyWith$Query$Wallet<TRes> {
  _CopyWithImpl$Query$Wallet(
    this._instance,
    this._then,
  );

  final Query$Wallet _instance;

  final TRes Function(Query$Wallet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? rider = _undefined,
    Object? savedPaymentMethods = _undefined,
    Object? paymentGateways = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Wallet(
        rider: rider == _undefined || rider == null
            ? _instance.rider
            : (rider as Query$Wallet$rider),
        savedPaymentMethods:
            savedPaymentMethods == _undefined || savedPaymentMethods == null
                ? _instance.savedPaymentMethods
                : (savedPaymentMethods
                    as List<Fragment$SavedPaymentMethodFragment>),
        paymentGateways:
            paymentGateways == _undefined || paymentGateways == null
                ? _instance.paymentGateways
                : (paymentGateways as List<Fragment$PaymentGatewayFragment>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Wallet$rider<TRes> get rider {
    final local$rider = _instance.rider;
    return CopyWith$Query$Wallet$rider(local$rider, (e) => call(rider: e));
  }

  TRes savedPaymentMethods(
          Iterable<Fragment$SavedPaymentMethodFragment> Function(
                  Iterable<
                      CopyWith$Fragment$SavedPaymentMethodFragment<
                          Fragment$SavedPaymentMethodFragment>>)
              _fn) =>
      call(
          savedPaymentMethods: _fn(_instance.savedPaymentMethods
              .map((e) => CopyWith$Fragment$SavedPaymentMethodFragment(
                    e,
                    (i) => i,
                  ))).toList());

  TRes paymentGateways(
          Iterable<Fragment$PaymentGatewayFragment> Function(
                  Iterable<
                      CopyWith$Fragment$PaymentGatewayFragment<
                          Fragment$PaymentGatewayFragment>>)
              _fn) =>
      call(
          paymentGateways: _fn(_instance.paymentGateways
              .map((e) => CopyWith$Fragment$PaymentGatewayFragment(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$Wallet<TRes>
    implements CopyWith$Query$Wallet<TRes> {
  _CopyWithStubImpl$Query$Wallet(this._res);

  TRes _res;

  call({
    Query$Wallet$rider? rider,
    List<Fragment$SavedPaymentMethodFragment>? savedPaymentMethods,
    List<Fragment$PaymentGatewayFragment>? paymentGateways,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Wallet$rider<TRes> get rider =>
      CopyWith$Query$Wallet$rider.stub(_res);

  savedPaymentMethods(_fn) => _res;

  paymentGateways(_fn) => _res;
}

const documentNodeQueryWallet = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Wallet'),
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
            name: NameNode(value: 'transactions'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'nodes'),
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
                    name: NameNode(value: 'deductType'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'rechargeType'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'amount'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'currency'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'createdAt'),
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
            name: NameNode(value: 'wallets'),
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
                name: NameNode(value: 'currency'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
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
      FieldNode(
        name: NameNode(value: 'savedPaymentMethods'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'SavedPaymentMethodFragment'),
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
        name: NameNode(value: 'paymentGateways'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'PaymentGatewayFragment'),
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
  fragmentDefinitionSavedPaymentMethodFragment,
  fragmentDefinitionPaymentGatewayFragment,
  fragmentDefinitionMediaFragment,
]);
Query$Wallet _parserFn$Query$Wallet(Map<String, dynamic> data) =>
    Query$Wallet.fromJson(data);
typedef OnQueryComplete$Query$Wallet = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Wallet?,
);

class Options$Query$Wallet extends graphql.QueryOptions<Query$Wallet> {
  Options$Query$Wallet({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Wallet? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Wallet? onComplete,
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
                    data == null ? null : _parserFn$Query$Wallet(data),
                  ),
          onError: onError,
          document: documentNodeQueryWallet,
          parserFn: _parserFn$Query$Wallet,
        );

  final OnQueryComplete$Query$Wallet? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Wallet
    extends graphql.WatchQueryOptions<Query$Wallet> {
  WatchOptions$Query$Wallet({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Wallet? typedOptimisticResult,
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
          document: documentNodeQueryWallet,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Wallet,
        );
}

class FetchMoreOptions$Query$Wallet extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Wallet({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryWallet,
        );
}

extension ClientExtension$Query$Wallet on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Wallet>> query$Wallet(
          [Options$Query$Wallet? options]) async =>
      await this.query(options ?? Options$Query$Wallet());
  graphql.ObservableQuery<Query$Wallet> watchQuery$Wallet(
          [WatchOptions$Query$Wallet? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Wallet());
  void writeQuery$Wallet({
    required Query$Wallet data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryWallet)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Wallet? readQuery$Wallet({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryWallet)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Wallet.fromJson(result);
  }
}

class Query$Wallet$rider {
  Query$Wallet$rider({
    required this.id,
    this.firstName,
    this.lastName,
    required this.transactions,
    required this.wallets,
    this.$__typename = 'Rider',
  });

  factory Query$Wallet$rider.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$transactions = json['transactions'];
    final l$wallets = json['wallets'];
    final l$$__typename = json['__typename'];
    return Query$Wallet$rider(
      id: (l$id as String),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      transactions: Query$Wallet$rider$transactions.fromJson(
          (l$transactions as Map<String, dynamic>)),
      wallets: (l$wallets as List<dynamic>)
          .map((e) =>
              Query$Wallet$rider$wallets.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? firstName;

  final String? lastName;

  final Query$Wallet$rider$transactions transactions;

  final List<Query$Wallet$rider$wallets> wallets;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$transactions = transactions;
    _resultData['transactions'] = l$transactions.toJson();
    final l$wallets = wallets;
    _resultData['wallets'] = l$wallets.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$transactions = transactions;
    final l$wallets = wallets;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$firstName,
      l$lastName,
      l$transactions,
      Object.hashAll(l$wallets.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Wallet$rider || runtimeType != other.runtimeType) {
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
    final l$transactions = transactions;
    final lOther$transactions = other.transactions;
    if (l$transactions != lOther$transactions) {
      return false;
    }
    final l$wallets = wallets;
    final lOther$wallets = other.wallets;
    if (l$wallets.length != lOther$wallets.length) {
      return false;
    }
    for (int i = 0; i < l$wallets.length; i++) {
      final l$wallets$entry = l$wallets[i];
      final lOther$wallets$entry = lOther$wallets[i];
      if (l$wallets$entry != lOther$wallets$entry) {
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

extension UtilityExtension$Query$Wallet$rider on Query$Wallet$rider {
  CopyWith$Query$Wallet$rider<Query$Wallet$rider> get copyWith =>
      CopyWith$Query$Wallet$rider(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Wallet$rider<TRes> {
  factory CopyWith$Query$Wallet$rider(
    Query$Wallet$rider instance,
    TRes Function(Query$Wallet$rider) then,
  ) = _CopyWithImpl$Query$Wallet$rider;

  factory CopyWith$Query$Wallet$rider.stub(TRes res) =
      _CopyWithStubImpl$Query$Wallet$rider;

  TRes call({
    String? id,
    String? firstName,
    String? lastName,
    Query$Wallet$rider$transactions? transactions,
    List<Query$Wallet$rider$wallets>? wallets,
    String? $__typename,
  });
  CopyWith$Query$Wallet$rider$transactions<TRes> get transactions;
  TRes wallets(
      Iterable<Query$Wallet$rider$wallets> Function(
              Iterable<
                  CopyWith$Query$Wallet$rider$wallets<
                      Query$Wallet$rider$wallets>>)
          _fn);
}

class _CopyWithImpl$Query$Wallet$rider<TRes>
    implements CopyWith$Query$Wallet$rider<TRes> {
  _CopyWithImpl$Query$Wallet$rider(
    this._instance,
    this._then,
  );

  final Query$Wallet$rider _instance;

  final TRes Function(Query$Wallet$rider) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? transactions = _undefined,
    Object? wallets = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Wallet$rider(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        firstName: firstName == _undefined
            ? _instance.firstName
            : (firstName as String?),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
        transactions: transactions == _undefined || transactions == null
            ? _instance.transactions
            : (transactions as Query$Wallet$rider$transactions),
        wallets: wallets == _undefined || wallets == null
            ? _instance.wallets
            : (wallets as List<Query$Wallet$rider$wallets>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Wallet$rider$transactions<TRes> get transactions {
    final local$transactions = _instance.transactions;
    return CopyWith$Query$Wallet$rider$transactions(
        local$transactions, (e) => call(transactions: e));
  }

  TRes wallets(
          Iterable<Query$Wallet$rider$wallets> Function(
                  Iterable<
                      CopyWith$Query$Wallet$rider$wallets<
                          Query$Wallet$rider$wallets>>)
              _fn) =>
      call(
          wallets: _fn(
              _instance.wallets.map((e) => CopyWith$Query$Wallet$rider$wallets(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$Wallet$rider<TRes>
    implements CopyWith$Query$Wallet$rider<TRes> {
  _CopyWithStubImpl$Query$Wallet$rider(this._res);

  TRes _res;

  call({
    String? id,
    String? firstName,
    String? lastName,
    Query$Wallet$rider$transactions? transactions,
    List<Query$Wallet$rider$wallets>? wallets,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Wallet$rider$transactions<TRes> get transactions =>
      CopyWith$Query$Wallet$rider$transactions.stub(_res);

  wallets(_fn) => _res;
}

class Query$Wallet$rider$transactions {
  Query$Wallet$rider$transactions({
    required this.nodes,
    this.$__typename = 'RiderTransactionsConnection',
  });

  factory Query$Wallet$rider$transactions.fromJson(Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$Wallet$rider$transactions(
      nodes: (l$nodes as List<dynamic>)
          .map((e) => Query$Wallet$rider$transactions$nodes.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Wallet$rider$transactions$nodes> nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Wallet$rider$transactions ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
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

extension UtilityExtension$Query$Wallet$rider$transactions
    on Query$Wallet$rider$transactions {
  CopyWith$Query$Wallet$rider$transactions<Query$Wallet$rider$transactions>
      get copyWith => CopyWith$Query$Wallet$rider$transactions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Wallet$rider$transactions<TRes> {
  factory CopyWith$Query$Wallet$rider$transactions(
    Query$Wallet$rider$transactions instance,
    TRes Function(Query$Wallet$rider$transactions) then,
  ) = _CopyWithImpl$Query$Wallet$rider$transactions;

  factory CopyWith$Query$Wallet$rider$transactions.stub(TRes res) =
      _CopyWithStubImpl$Query$Wallet$rider$transactions;

  TRes call({
    List<Query$Wallet$rider$transactions$nodes>? nodes,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Query$Wallet$rider$transactions$nodes> Function(
              Iterable<
                  CopyWith$Query$Wallet$rider$transactions$nodes<
                      Query$Wallet$rider$transactions$nodes>>)
          _fn);
}

class _CopyWithImpl$Query$Wallet$rider$transactions<TRes>
    implements CopyWith$Query$Wallet$rider$transactions<TRes> {
  _CopyWithImpl$Query$Wallet$rider$transactions(
    this._instance,
    this._then,
  );

  final Query$Wallet$rider$transactions _instance;

  final TRes Function(Query$Wallet$rider$transactions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Wallet$rider$transactions(
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<Query$Wallet$rider$transactions$nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<Query$Wallet$rider$transactions$nodes> Function(
                  Iterable<
                      CopyWith$Query$Wallet$rider$transactions$nodes<
                          Query$Wallet$rider$transactions$nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes
              .map((e) => CopyWith$Query$Wallet$rider$transactions$nodes(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$Wallet$rider$transactions<TRes>
    implements CopyWith$Query$Wallet$rider$transactions<TRes> {
  _CopyWithStubImpl$Query$Wallet$rider$transactions(this._res);

  TRes _res;

  call({
    List<Query$Wallet$rider$transactions$nodes>? nodes,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;
}

class Query$Wallet$rider$transactions$nodes {
  Query$Wallet$rider$transactions$nodes({
    required this.id,
    this.deductType,
    this.rechargeType,
    required this.amount,
    required this.currency,
    required this.createdAt,
    this.$__typename = 'RiderTransacion',
  });

  factory Query$Wallet$rider$transactions$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$deductType = json['deductType'];
    final l$rechargeType = json['rechargeType'];
    final l$amount = json['amount'];
    final l$currency = json['currency'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Query$Wallet$rider$transactions$nodes(
      id: (l$id as String),
      deductType: l$deductType == null
          ? null
          : fromJson$Enum$RiderDeductTransactionType((l$deductType as String)),
      rechargeType: l$rechargeType == null
          ? null
          : fromJson$Enum$RiderRechargeTransactionType(
              (l$rechargeType as String)),
      amount: (l$amount as num).toDouble(),
      currency: (l$currency as String),
      createdAt: fromGraphQLTimestampToDartDateTime(l$createdAt),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Enum$RiderDeductTransactionType? deductType;

  final Enum$RiderRechargeTransactionType? rechargeType;

  final double amount;

  final String currency;

  final DateTime createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$deductType = deductType;
    _resultData['deductType'] = l$deductType == null
        ? null
        : toJson$Enum$RiderDeductTransactionType(l$deductType);
    final l$rechargeType = rechargeType;
    _resultData['rechargeType'] = l$rechargeType == null
        ? null
        : toJson$Enum$RiderRechargeTransactionType(l$rechargeType);
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = fromDartDateTimeToGraphQLTimestamp(l$createdAt);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$deductType = deductType;
    final l$rechargeType = rechargeType;
    final l$amount = amount;
    final l$currency = currency;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$deductType,
      l$rechargeType,
      l$amount,
      l$currency,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Wallet$rider$transactions$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$deductType = deductType;
    final lOther$deductType = other.deductType;
    if (l$deductType != lOther$deductType) {
      return false;
    }
    final l$rechargeType = rechargeType;
    final lOther$rechargeType = other.rechargeType;
    if (l$rechargeType != lOther$rechargeType) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
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

extension UtilityExtension$Query$Wallet$rider$transactions$nodes
    on Query$Wallet$rider$transactions$nodes {
  CopyWith$Query$Wallet$rider$transactions$nodes<
          Query$Wallet$rider$transactions$nodes>
      get copyWith => CopyWith$Query$Wallet$rider$transactions$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Wallet$rider$transactions$nodes<TRes> {
  factory CopyWith$Query$Wallet$rider$transactions$nodes(
    Query$Wallet$rider$transactions$nodes instance,
    TRes Function(Query$Wallet$rider$transactions$nodes) then,
  ) = _CopyWithImpl$Query$Wallet$rider$transactions$nodes;

  factory CopyWith$Query$Wallet$rider$transactions$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$Wallet$rider$transactions$nodes;

  TRes call({
    String? id,
    Enum$RiderDeductTransactionType? deductType,
    Enum$RiderRechargeTransactionType? rechargeType,
    double? amount,
    String? currency,
    DateTime? createdAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Wallet$rider$transactions$nodes<TRes>
    implements CopyWith$Query$Wallet$rider$transactions$nodes<TRes> {
  _CopyWithImpl$Query$Wallet$rider$transactions$nodes(
    this._instance,
    this._then,
  );

  final Query$Wallet$rider$transactions$nodes _instance;

  final TRes Function(Query$Wallet$rider$transactions$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? deductType = _undefined,
    Object? rechargeType = _undefined,
    Object? amount = _undefined,
    Object? currency = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Wallet$rider$transactions$nodes(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        deductType: deductType == _undefined
            ? _instance.deductType
            : (deductType as Enum$RiderDeductTransactionType?),
        rechargeType: rechargeType == _undefined
            ? _instance.rechargeType
            : (rechargeType as Enum$RiderRechargeTransactionType?),
        amount: amount == _undefined || amount == null
            ? _instance.amount
            : (amount as double),
        currency: currency == _undefined || currency == null
            ? _instance.currency
            : (currency as String),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Wallet$rider$transactions$nodes<TRes>
    implements CopyWith$Query$Wallet$rider$transactions$nodes<TRes> {
  _CopyWithStubImpl$Query$Wallet$rider$transactions$nodes(this._res);

  TRes _res;

  call({
    String? id,
    Enum$RiderDeductTransactionType? deductType,
    Enum$RiderRechargeTransactionType? rechargeType,
    double? amount,
    String? currency,
    DateTime? createdAt,
    String? $__typename,
  }) =>
      _res;
}

class Query$Wallet$rider$wallets {
  Query$Wallet$rider$wallets({
    required this.id,
    required this.currency,
    required this.balance,
    this.$__typename = 'RiderWallet',
  });

  factory Query$Wallet$rider$wallets.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$currency = json['currency'];
    final l$balance = json['balance'];
    final l$$__typename = json['__typename'];
    return Query$Wallet$rider$wallets(
      id: (l$id as String),
      currency: (l$currency as String),
      balance: (l$balance as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String currency;

  final double balance;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$balance = balance;
    _resultData['balance'] = l$balance;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$currency = currency;
    final l$balance = balance;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$currency,
      l$balance,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Wallet$rider$wallets ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
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

extension UtilityExtension$Query$Wallet$rider$wallets
    on Query$Wallet$rider$wallets {
  CopyWith$Query$Wallet$rider$wallets<Query$Wallet$rider$wallets>
      get copyWith => CopyWith$Query$Wallet$rider$wallets(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Wallet$rider$wallets<TRes> {
  factory CopyWith$Query$Wallet$rider$wallets(
    Query$Wallet$rider$wallets instance,
    TRes Function(Query$Wallet$rider$wallets) then,
  ) = _CopyWithImpl$Query$Wallet$rider$wallets;

  factory CopyWith$Query$Wallet$rider$wallets.stub(TRes res) =
      _CopyWithStubImpl$Query$Wallet$rider$wallets;

  TRes call({
    String? id,
    String? currency,
    double? balance,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Wallet$rider$wallets<TRes>
    implements CopyWith$Query$Wallet$rider$wallets<TRes> {
  _CopyWithImpl$Query$Wallet$rider$wallets(
    this._instance,
    this._then,
  );

  final Query$Wallet$rider$wallets _instance;

  final TRes Function(Query$Wallet$rider$wallets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? currency = _undefined,
    Object? balance = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Wallet$rider$wallets(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        currency: currency == _undefined || currency == null
            ? _instance.currency
            : (currency as String),
        balance: balance == _undefined || balance == null
            ? _instance.balance
            : (balance as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Wallet$rider$wallets<TRes>
    implements CopyWith$Query$Wallet$rider$wallets<TRes> {
  _CopyWithStubImpl$Query$Wallet$rider$wallets(this._res);

  TRes _res;

  call({
    String? id,
    String? currency,
    double? balance,
    String? $__typename,
  }) =>
      _res;
}

class Query$SavedPaymentMethods {
  Query$SavedPaymentMethods({
    required this.savedPaymentMethods,
    required this.paymentGateways,
    this.$__typename = 'Query',
  });

  factory Query$SavedPaymentMethods.fromJson(Map<String, dynamic> json) {
    final l$savedPaymentMethods = json['savedPaymentMethods'];
    final l$paymentGateways = json['paymentGateways'];
    final l$$__typename = json['__typename'];
    return Query$SavedPaymentMethods(
      savedPaymentMethods: (l$savedPaymentMethods as List<dynamic>)
          .map((e) => Fragment$SavedPaymentMethodFragment.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      paymentGateways: (l$paymentGateways as List<dynamic>)
          .map((e) => Fragment$PaymentGatewayFragment.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$SavedPaymentMethodFragment> savedPaymentMethods;

  final List<Fragment$PaymentGatewayFragment> paymentGateways;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$savedPaymentMethods = savedPaymentMethods;
    _resultData['savedPaymentMethods'] =
        l$savedPaymentMethods.map((e) => e.toJson()).toList();
    final l$paymentGateways = paymentGateways;
    _resultData['paymentGateways'] =
        l$paymentGateways.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$savedPaymentMethods = savedPaymentMethods;
    final l$paymentGateways = paymentGateways;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$savedPaymentMethods.map((v) => v)),
      Object.hashAll(l$paymentGateways.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SavedPaymentMethods ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$savedPaymentMethods = savedPaymentMethods;
    final lOther$savedPaymentMethods = other.savedPaymentMethods;
    if (l$savedPaymentMethods.length != lOther$savedPaymentMethods.length) {
      return false;
    }
    for (int i = 0; i < l$savedPaymentMethods.length; i++) {
      final l$savedPaymentMethods$entry = l$savedPaymentMethods[i];
      final lOther$savedPaymentMethods$entry = lOther$savedPaymentMethods[i];
      if (l$savedPaymentMethods$entry != lOther$savedPaymentMethods$entry) {
        return false;
      }
    }
    final l$paymentGateways = paymentGateways;
    final lOther$paymentGateways = other.paymentGateways;
    if (l$paymentGateways.length != lOther$paymentGateways.length) {
      return false;
    }
    for (int i = 0; i < l$paymentGateways.length; i++) {
      final l$paymentGateways$entry = l$paymentGateways[i];
      final lOther$paymentGateways$entry = lOther$paymentGateways[i];
      if (l$paymentGateways$entry != lOther$paymentGateways$entry) {
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

extension UtilityExtension$Query$SavedPaymentMethods
    on Query$SavedPaymentMethods {
  CopyWith$Query$SavedPaymentMethods<Query$SavedPaymentMethods> get copyWith =>
      CopyWith$Query$SavedPaymentMethods(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SavedPaymentMethods<TRes> {
  factory CopyWith$Query$SavedPaymentMethods(
    Query$SavedPaymentMethods instance,
    TRes Function(Query$SavedPaymentMethods) then,
  ) = _CopyWithImpl$Query$SavedPaymentMethods;

  factory CopyWith$Query$SavedPaymentMethods.stub(TRes res) =
      _CopyWithStubImpl$Query$SavedPaymentMethods;

  TRes call({
    List<Fragment$SavedPaymentMethodFragment>? savedPaymentMethods,
    List<Fragment$PaymentGatewayFragment>? paymentGateways,
    String? $__typename,
  });
  TRes savedPaymentMethods(
      Iterable<Fragment$SavedPaymentMethodFragment> Function(
              Iterable<
                  CopyWith$Fragment$SavedPaymentMethodFragment<
                      Fragment$SavedPaymentMethodFragment>>)
          _fn);
  TRes paymentGateways(
      Iterable<Fragment$PaymentGatewayFragment> Function(
              Iterable<
                  CopyWith$Fragment$PaymentGatewayFragment<
                      Fragment$PaymentGatewayFragment>>)
          _fn);
}

class _CopyWithImpl$Query$SavedPaymentMethods<TRes>
    implements CopyWith$Query$SavedPaymentMethods<TRes> {
  _CopyWithImpl$Query$SavedPaymentMethods(
    this._instance,
    this._then,
  );

  final Query$SavedPaymentMethods _instance;

  final TRes Function(Query$SavedPaymentMethods) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? savedPaymentMethods = _undefined,
    Object? paymentGateways = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SavedPaymentMethods(
        savedPaymentMethods:
            savedPaymentMethods == _undefined || savedPaymentMethods == null
                ? _instance.savedPaymentMethods
                : (savedPaymentMethods
                    as List<Fragment$SavedPaymentMethodFragment>),
        paymentGateways:
            paymentGateways == _undefined || paymentGateways == null
                ? _instance.paymentGateways
                : (paymentGateways as List<Fragment$PaymentGatewayFragment>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes savedPaymentMethods(
          Iterable<Fragment$SavedPaymentMethodFragment> Function(
                  Iterable<
                      CopyWith$Fragment$SavedPaymentMethodFragment<
                          Fragment$SavedPaymentMethodFragment>>)
              _fn) =>
      call(
          savedPaymentMethods: _fn(_instance.savedPaymentMethods
              .map((e) => CopyWith$Fragment$SavedPaymentMethodFragment(
                    e,
                    (i) => i,
                  ))).toList());

  TRes paymentGateways(
          Iterable<Fragment$PaymentGatewayFragment> Function(
                  Iterable<
                      CopyWith$Fragment$PaymentGatewayFragment<
                          Fragment$PaymentGatewayFragment>>)
              _fn) =>
      call(
          paymentGateways: _fn(_instance.paymentGateways
              .map((e) => CopyWith$Fragment$PaymentGatewayFragment(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$SavedPaymentMethods<TRes>
    implements CopyWith$Query$SavedPaymentMethods<TRes> {
  _CopyWithStubImpl$Query$SavedPaymentMethods(this._res);

  TRes _res;

  call({
    List<Fragment$SavedPaymentMethodFragment>? savedPaymentMethods,
    List<Fragment$PaymentGatewayFragment>? paymentGateways,
    String? $__typename,
  }) =>
      _res;

  savedPaymentMethods(_fn) => _res;

  paymentGateways(_fn) => _res;
}

const documentNodeQuerySavedPaymentMethods = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'SavedPaymentMethods'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'savedPaymentMethods'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'SavedPaymentMethodFragment'),
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
        name: NameNode(value: 'paymentGateways'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'PaymentGatewayFragment'),
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
  fragmentDefinitionSavedPaymentMethodFragment,
  fragmentDefinitionPaymentGatewayFragment,
  fragmentDefinitionMediaFragment,
]);
Query$SavedPaymentMethods _parserFn$Query$SavedPaymentMethods(
        Map<String, dynamic> data) =>
    Query$SavedPaymentMethods.fromJson(data);
typedef OnQueryComplete$Query$SavedPaymentMethods = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$SavedPaymentMethods?,
);

class Options$Query$SavedPaymentMethods
    extends graphql.QueryOptions<Query$SavedPaymentMethods> {
  Options$Query$SavedPaymentMethods({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SavedPaymentMethods? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$SavedPaymentMethods? onComplete,
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
                        : _parserFn$Query$SavedPaymentMethods(data),
                  ),
          onError: onError,
          document: documentNodeQuerySavedPaymentMethods,
          parserFn: _parserFn$Query$SavedPaymentMethods,
        );

  final OnQueryComplete$Query$SavedPaymentMethods? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$SavedPaymentMethods
    extends graphql.WatchQueryOptions<Query$SavedPaymentMethods> {
  WatchOptions$Query$SavedPaymentMethods({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SavedPaymentMethods? typedOptimisticResult,
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
          document: documentNodeQuerySavedPaymentMethods,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$SavedPaymentMethods,
        );
}

class FetchMoreOptions$Query$SavedPaymentMethods
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$SavedPaymentMethods(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQuerySavedPaymentMethods,
        );
}

extension ClientExtension$Query$SavedPaymentMethods on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$SavedPaymentMethods>>
      query$SavedPaymentMethods(
              [Options$Query$SavedPaymentMethods? options]) async =>
          await this.query(options ?? Options$Query$SavedPaymentMethods());
  graphql.ObservableQuery<Query$SavedPaymentMethods>
      watchQuery$SavedPaymentMethods(
              [WatchOptions$Query$SavedPaymentMethods? options]) =>
          this.watchQuery(options ?? WatchOptions$Query$SavedPaymentMethods());
  void writeQuery$SavedPaymentMethods({
    required Query$SavedPaymentMethods data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQuerySavedPaymentMethods)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$SavedPaymentMethods? readQuery$SavedPaymentMethods(
      {bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQuerySavedPaymentMethods)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$SavedPaymentMethods.fromJson(result);
  }
}

class Variables$Mutation$GetSetupPaymentMethodLink {
  factory Variables$Mutation$GetSetupPaymentMethodLink(
          {required String gatewayId}) =>
      Variables$Mutation$GetSetupPaymentMethodLink._({
        r'gatewayId': gatewayId,
      });

  Variables$Mutation$GetSetupPaymentMethodLink._(this._$data);

  factory Variables$Mutation$GetSetupPaymentMethodLink.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$gatewayId = data['gatewayId'];
    result$data['gatewayId'] = (l$gatewayId as String);
    return Variables$Mutation$GetSetupPaymentMethodLink._(result$data);
  }

  Map<String, dynamic> _$data;

  String get gatewayId => (_$data['gatewayId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$gatewayId = gatewayId;
    result$data['gatewayId'] = l$gatewayId;
    return result$data;
  }

  CopyWith$Variables$Mutation$GetSetupPaymentMethodLink<
          Variables$Mutation$GetSetupPaymentMethodLink>
      get copyWith => CopyWith$Variables$Mutation$GetSetupPaymentMethodLink(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$GetSetupPaymentMethodLink ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$gatewayId = gatewayId;
    final lOther$gatewayId = other.gatewayId;
    if (l$gatewayId != lOther$gatewayId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$gatewayId = gatewayId;
    return Object.hashAll([l$gatewayId]);
  }
}

abstract class CopyWith$Variables$Mutation$GetSetupPaymentMethodLink<TRes> {
  factory CopyWith$Variables$Mutation$GetSetupPaymentMethodLink(
    Variables$Mutation$GetSetupPaymentMethodLink instance,
    TRes Function(Variables$Mutation$GetSetupPaymentMethodLink) then,
  ) = _CopyWithImpl$Variables$Mutation$GetSetupPaymentMethodLink;

  factory CopyWith$Variables$Mutation$GetSetupPaymentMethodLink.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$GetSetupPaymentMethodLink;

  TRes call({String? gatewayId});
}

class _CopyWithImpl$Variables$Mutation$GetSetupPaymentMethodLink<TRes>
    implements CopyWith$Variables$Mutation$GetSetupPaymentMethodLink<TRes> {
  _CopyWithImpl$Variables$Mutation$GetSetupPaymentMethodLink(
    this._instance,
    this._then,
  );

  final Variables$Mutation$GetSetupPaymentMethodLink _instance;

  final TRes Function(Variables$Mutation$GetSetupPaymentMethodLink) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? gatewayId = _undefined}) =>
      _then(Variables$Mutation$GetSetupPaymentMethodLink._({
        ..._instance._$data,
        if (gatewayId != _undefined && gatewayId != null)
          'gatewayId': (gatewayId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$GetSetupPaymentMethodLink<TRes>
    implements CopyWith$Variables$Mutation$GetSetupPaymentMethodLink<TRes> {
  _CopyWithStubImpl$Variables$Mutation$GetSetupPaymentMethodLink(this._res);

  TRes _res;

  call({String? gatewayId}) => _res;
}

class Mutation$GetSetupPaymentMethodLink {
  Mutation$GetSetupPaymentMethodLink({
    required this.setupPaymentMethod,
    this.$__typename = 'Mutation',
  });

  factory Mutation$GetSetupPaymentMethodLink.fromJson(
      Map<String, dynamic> json) {
    final l$setupPaymentMethod = json['setupPaymentMethod'];
    final l$$__typename = json['__typename'];
    return Mutation$GetSetupPaymentMethodLink(
      setupPaymentMethod:
          Mutation$GetSetupPaymentMethodLink$setupPaymentMethod.fromJson(
              (l$setupPaymentMethod as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$GetSetupPaymentMethodLink$setupPaymentMethod
      setupPaymentMethod;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$setupPaymentMethod = setupPaymentMethod;
    _resultData['setupPaymentMethod'] = l$setupPaymentMethod.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$setupPaymentMethod = setupPaymentMethod;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$setupPaymentMethod,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$GetSetupPaymentMethodLink ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$setupPaymentMethod = setupPaymentMethod;
    final lOther$setupPaymentMethod = other.setupPaymentMethod;
    if (l$setupPaymentMethod != lOther$setupPaymentMethod) {
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

extension UtilityExtension$Mutation$GetSetupPaymentMethodLink
    on Mutation$GetSetupPaymentMethodLink {
  CopyWith$Mutation$GetSetupPaymentMethodLink<
          Mutation$GetSetupPaymentMethodLink>
      get copyWith => CopyWith$Mutation$GetSetupPaymentMethodLink(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$GetSetupPaymentMethodLink<TRes> {
  factory CopyWith$Mutation$GetSetupPaymentMethodLink(
    Mutation$GetSetupPaymentMethodLink instance,
    TRes Function(Mutation$GetSetupPaymentMethodLink) then,
  ) = _CopyWithImpl$Mutation$GetSetupPaymentMethodLink;

  factory CopyWith$Mutation$GetSetupPaymentMethodLink.stub(TRes res) =
      _CopyWithStubImpl$Mutation$GetSetupPaymentMethodLink;

  TRes call({
    Mutation$GetSetupPaymentMethodLink$setupPaymentMethod? setupPaymentMethod,
    String? $__typename,
  });
  CopyWith$Mutation$GetSetupPaymentMethodLink$setupPaymentMethod<TRes>
      get setupPaymentMethod;
}

class _CopyWithImpl$Mutation$GetSetupPaymentMethodLink<TRes>
    implements CopyWith$Mutation$GetSetupPaymentMethodLink<TRes> {
  _CopyWithImpl$Mutation$GetSetupPaymentMethodLink(
    this._instance,
    this._then,
  );

  final Mutation$GetSetupPaymentMethodLink _instance;

  final TRes Function(Mutation$GetSetupPaymentMethodLink) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? setupPaymentMethod = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$GetSetupPaymentMethodLink(
        setupPaymentMethod:
            setupPaymentMethod == _undefined || setupPaymentMethod == null
                ? _instance.setupPaymentMethod
                : (setupPaymentMethod
                    as Mutation$GetSetupPaymentMethodLink$setupPaymentMethod),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$GetSetupPaymentMethodLink$setupPaymentMethod<TRes>
      get setupPaymentMethod {
    final local$setupPaymentMethod = _instance.setupPaymentMethod;
    return CopyWith$Mutation$GetSetupPaymentMethodLink$setupPaymentMethod(
        local$setupPaymentMethod, (e) => call(setupPaymentMethod: e));
  }
}

class _CopyWithStubImpl$Mutation$GetSetupPaymentMethodLink<TRes>
    implements CopyWith$Mutation$GetSetupPaymentMethodLink<TRes> {
  _CopyWithStubImpl$Mutation$GetSetupPaymentMethodLink(this._res);

  TRes _res;

  call({
    Mutation$GetSetupPaymentMethodLink$setupPaymentMethod? setupPaymentMethod,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$GetSetupPaymentMethodLink$setupPaymentMethod<TRes>
      get setupPaymentMethod =>
          CopyWith$Mutation$GetSetupPaymentMethodLink$setupPaymentMethod.stub(
              _res);
}

const documentNodeMutationGetSetupPaymentMethodLink =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'GetSetupPaymentMethodLink'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'gatewayId')),
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
        name: NameNode(value: 'setupPaymentMethod'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'gatewayId'),
            value: VariableNode(name: NameNode(value: 'gatewayId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'url'),
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
Mutation$GetSetupPaymentMethodLink _parserFn$Mutation$GetSetupPaymentMethodLink(
        Map<String, dynamic> data) =>
    Mutation$GetSetupPaymentMethodLink.fromJson(data);
typedef OnMutationCompleted$Mutation$GetSetupPaymentMethodLink = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$GetSetupPaymentMethodLink?,
);

class Options$Mutation$GetSetupPaymentMethodLink
    extends graphql.MutationOptions<Mutation$GetSetupPaymentMethodLink> {
  Options$Mutation$GetSetupPaymentMethodLink({
    String? operationName,
    required Variables$Mutation$GetSetupPaymentMethodLink variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$GetSetupPaymentMethodLink? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$GetSetupPaymentMethodLink? onCompleted,
    graphql.OnMutationUpdate<Mutation$GetSetupPaymentMethodLink>? update,
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
                        : _parserFn$Mutation$GetSetupPaymentMethodLink(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationGetSetupPaymentMethodLink,
          parserFn: _parserFn$Mutation$GetSetupPaymentMethodLink,
        );

  final OnMutationCompleted$Mutation$GetSetupPaymentMethodLink?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$GetSetupPaymentMethodLink
    extends graphql.WatchQueryOptions<Mutation$GetSetupPaymentMethodLink> {
  WatchOptions$Mutation$GetSetupPaymentMethodLink({
    String? operationName,
    required Variables$Mutation$GetSetupPaymentMethodLink variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$GetSetupPaymentMethodLink? typedOptimisticResult,
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
          document: documentNodeMutationGetSetupPaymentMethodLink,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$GetSetupPaymentMethodLink,
        );
}

extension ClientExtension$Mutation$GetSetupPaymentMethodLink
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$GetSetupPaymentMethodLink>>
      mutate$GetSetupPaymentMethodLink(
              Options$Mutation$GetSetupPaymentMethodLink options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$GetSetupPaymentMethodLink>
      watchMutation$GetSetupPaymentMethodLink(
              WatchOptions$Mutation$GetSetupPaymentMethodLink options) =>
          this.watchMutation(options);
}

class Mutation$GetSetupPaymentMethodLink$setupPaymentMethod {
  Mutation$GetSetupPaymentMethodLink$setupPaymentMethod({
    this.url,
    this.$__typename = 'SetupPaymentMethod',
  });

  factory Mutation$GetSetupPaymentMethodLink$setupPaymentMethod.fromJson(
      Map<String, dynamic> json) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Mutation$GetSetupPaymentMethodLink$setupPaymentMethod(
      url: (l$url as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? url;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$url,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$GetSetupPaymentMethodLink$setupPaymentMethod ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
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

extension UtilityExtension$Mutation$GetSetupPaymentMethodLink$setupPaymentMethod
    on Mutation$GetSetupPaymentMethodLink$setupPaymentMethod {
  CopyWith$Mutation$GetSetupPaymentMethodLink$setupPaymentMethod<
          Mutation$GetSetupPaymentMethodLink$setupPaymentMethod>
      get copyWith =>
          CopyWith$Mutation$GetSetupPaymentMethodLink$setupPaymentMethod(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$GetSetupPaymentMethodLink$setupPaymentMethod<
    TRes> {
  factory CopyWith$Mutation$GetSetupPaymentMethodLink$setupPaymentMethod(
    Mutation$GetSetupPaymentMethodLink$setupPaymentMethod instance,
    TRes Function(Mutation$GetSetupPaymentMethodLink$setupPaymentMethod) then,
  ) = _CopyWithImpl$Mutation$GetSetupPaymentMethodLink$setupPaymentMethod;

  factory CopyWith$Mutation$GetSetupPaymentMethodLink$setupPaymentMethod.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$GetSetupPaymentMethodLink$setupPaymentMethod;

  TRes call({
    String? url,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$GetSetupPaymentMethodLink$setupPaymentMethod<TRes>
    implements
        CopyWith$Mutation$GetSetupPaymentMethodLink$setupPaymentMethod<TRes> {
  _CopyWithImpl$Mutation$GetSetupPaymentMethodLink$setupPaymentMethod(
    this._instance,
    this._then,
  );

  final Mutation$GetSetupPaymentMethodLink$setupPaymentMethod _instance;

  final TRes Function(Mutation$GetSetupPaymentMethodLink$setupPaymentMethod)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$GetSetupPaymentMethodLink$setupPaymentMethod(
        url: url == _undefined ? _instance.url : (url as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$GetSetupPaymentMethodLink$setupPaymentMethod<
        TRes>
    implements
        CopyWith$Mutation$GetSetupPaymentMethodLink$setupPaymentMethod<TRes> {
  _CopyWithStubImpl$Mutation$GetSetupPaymentMethodLink$setupPaymentMethod(
      this._res);

  TRes _res;

  call({
    String? url,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$RedeemGiftCard {
  factory Variables$Mutation$RedeemGiftCard({required String code}) =>
      Variables$Mutation$RedeemGiftCard._({
        r'code': code,
      });

  Variables$Mutation$RedeemGiftCard._(this._$data);

  factory Variables$Mutation$RedeemGiftCard.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$code = data['code'];
    result$data['code'] = (l$code as String);
    return Variables$Mutation$RedeemGiftCard._(result$data);
  }

  Map<String, dynamic> _$data;

  String get code => (_$data['code'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$code = code;
    result$data['code'] = l$code;
    return result$data;
  }

  CopyWith$Variables$Mutation$RedeemGiftCard<Variables$Mutation$RedeemGiftCard>
      get copyWith => CopyWith$Variables$Mutation$RedeemGiftCard(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$RedeemGiftCard ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$code = code;
    return Object.hashAll([l$code]);
  }
}

abstract class CopyWith$Variables$Mutation$RedeemGiftCard<TRes> {
  factory CopyWith$Variables$Mutation$RedeemGiftCard(
    Variables$Mutation$RedeemGiftCard instance,
    TRes Function(Variables$Mutation$RedeemGiftCard) then,
  ) = _CopyWithImpl$Variables$Mutation$RedeemGiftCard;

  factory CopyWith$Variables$Mutation$RedeemGiftCard.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$RedeemGiftCard;

  TRes call({String? code});
}

class _CopyWithImpl$Variables$Mutation$RedeemGiftCard<TRes>
    implements CopyWith$Variables$Mutation$RedeemGiftCard<TRes> {
  _CopyWithImpl$Variables$Mutation$RedeemGiftCard(
    this._instance,
    this._then,
  );

  final Variables$Mutation$RedeemGiftCard _instance;

  final TRes Function(Variables$Mutation$RedeemGiftCard) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? code = _undefined}) =>
      _then(Variables$Mutation$RedeemGiftCard._({
        ..._instance._$data,
        if (code != _undefined && code != null) 'code': (code as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$RedeemGiftCard<TRes>
    implements CopyWith$Variables$Mutation$RedeemGiftCard<TRes> {
  _CopyWithStubImpl$Variables$Mutation$RedeemGiftCard(this._res);

  TRes _res;

  call({String? code}) => _res;
}

class Mutation$RedeemGiftCard {
  Mutation$RedeemGiftCard({
    required this.redeemGiftCard,
    this.$__typename = 'Mutation',
  });

  factory Mutation$RedeemGiftCard.fromJson(Map<String, dynamic> json) {
    final l$redeemGiftCard = json['redeemGiftCard'];
    final l$$__typename = json['__typename'];
    return Mutation$RedeemGiftCard(
      redeemGiftCard: Mutation$RedeemGiftCard$redeemGiftCard.fromJson(
          (l$redeemGiftCard as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$RedeemGiftCard$redeemGiftCard redeemGiftCard;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$redeemGiftCard = redeemGiftCard;
    _resultData['redeemGiftCard'] = l$redeemGiftCard.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$redeemGiftCard = redeemGiftCard;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$redeemGiftCard,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$RedeemGiftCard || runtimeType != other.runtimeType) {
      return false;
    }
    final l$redeemGiftCard = redeemGiftCard;
    final lOther$redeemGiftCard = other.redeemGiftCard;
    if (l$redeemGiftCard != lOther$redeemGiftCard) {
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

extension UtilityExtension$Mutation$RedeemGiftCard on Mutation$RedeemGiftCard {
  CopyWith$Mutation$RedeemGiftCard<Mutation$RedeemGiftCard> get copyWith =>
      CopyWith$Mutation$RedeemGiftCard(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$RedeemGiftCard<TRes> {
  factory CopyWith$Mutation$RedeemGiftCard(
    Mutation$RedeemGiftCard instance,
    TRes Function(Mutation$RedeemGiftCard) then,
  ) = _CopyWithImpl$Mutation$RedeemGiftCard;

  factory CopyWith$Mutation$RedeemGiftCard.stub(TRes res) =
      _CopyWithStubImpl$Mutation$RedeemGiftCard;

  TRes call({
    Mutation$RedeemGiftCard$redeemGiftCard? redeemGiftCard,
    String? $__typename,
  });
  CopyWith$Mutation$RedeemGiftCard$redeemGiftCard<TRes> get redeemGiftCard;
}

class _CopyWithImpl$Mutation$RedeemGiftCard<TRes>
    implements CopyWith$Mutation$RedeemGiftCard<TRes> {
  _CopyWithImpl$Mutation$RedeemGiftCard(
    this._instance,
    this._then,
  );

  final Mutation$RedeemGiftCard _instance;

  final TRes Function(Mutation$RedeemGiftCard) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? redeemGiftCard = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$RedeemGiftCard(
        redeemGiftCard: redeemGiftCard == _undefined || redeemGiftCard == null
            ? _instance.redeemGiftCard
            : (redeemGiftCard as Mutation$RedeemGiftCard$redeemGiftCard),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$RedeemGiftCard$redeemGiftCard<TRes> get redeemGiftCard {
    final local$redeemGiftCard = _instance.redeemGiftCard;
    return CopyWith$Mutation$RedeemGiftCard$redeemGiftCard(
        local$redeemGiftCard, (e) => call(redeemGiftCard: e));
  }
}

class _CopyWithStubImpl$Mutation$RedeemGiftCard<TRes>
    implements CopyWith$Mutation$RedeemGiftCard<TRes> {
  _CopyWithStubImpl$Mutation$RedeemGiftCard(this._res);

  TRes _res;

  call({
    Mutation$RedeemGiftCard$redeemGiftCard? redeemGiftCard,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$RedeemGiftCard$redeemGiftCard<TRes> get redeemGiftCard =>
      CopyWith$Mutation$RedeemGiftCard$redeemGiftCard.stub(_res);
}

const documentNodeMutationRedeemGiftCard = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'RedeemGiftCard'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'code')),
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
        name: NameNode(value: 'redeemGiftCard'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'code'),
            value: VariableNode(name: NameNode(value: 'code')),
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
            name: NameNode(value: 'amount'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'currency'),
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
Mutation$RedeemGiftCard _parserFn$Mutation$RedeemGiftCard(
        Map<String, dynamic> data) =>
    Mutation$RedeemGiftCard.fromJson(data);
typedef OnMutationCompleted$Mutation$RedeemGiftCard = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$RedeemGiftCard?,
);

class Options$Mutation$RedeemGiftCard
    extends graphql.MutationOptions<Mutation$RedeemGiftCard> {
  Options$Mutation$RedeemGiftCard({
    String? operationName,
    required Variables$Mutation$RedeemGiftCard variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$RedeemGiftCard? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$RedeemGiftCard? onCompleted,
    graphql.OnMutationUpdate<Mutation$RedeemGiftCard>? update,
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
                        : _parserFn$Mutation$RedeemGiftCard(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationRedeemGiftCard,
          parserFn: _parserFn$Mutation$RedeemGiftCard,
        );

  final OnMutationCompleted$Mutation$RedeemGiftCard? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$RedeemGiftCard
    extends graphql.WatchQueryOptions<Mutation$RedeemGiftCard> {
  WatchOptions$Mutation$RedeemGiftCard({
    String? operationName,
    required Variables$Mutation$RedeemGiftCard variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$RedeemGiftCard? typedOptimisticResult,
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
          document: documentNodeMutationRedeemGiftCard,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$RedeemGiftCard,
        );
}

extension ClientExtension$Mutation$RedeemGiftCard on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$RedeemGiftCard>> mutate$RedeemGiftCard(
          Options$Mutation$RedeemGiftCard options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$RedeemGiftCard> watchMutation$RedeemGiftCard(
          WatchOptions$Mutation$RedeemGiftCard options) =>
      this.watchMutation(options);
}

class Mutation$RedeemGiftCard$redeemGiftCard {
  Mutation$RedeemGiftCard$redeemGiftCard({
    required this.id,
    required this.amount,
    required this.currency,
    this.$__typename = 'GiftCard',
  });

  factory Mutation$RedeemGiftCard$redeemGiftCard.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$amount = json['amount'];
    final l$currency = json['currency'];
    final l$$__typename = json['__typename'];
    return Mutation$RedeemGiftCard$redeemGiftCard(
      id: (l$id as String),
      amount: (l$amount as num).toDouble(),
      currency: (l$currency as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final double amount;

  final String currency;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$amount = amount;
    final l$currency = currency;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$amount,
      l$currency,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$RedeemGiftCard$redeemGiftCard ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
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

extension UtilityExtension$Mutation$RedeemGiftCard$redeemGiftCard
    on Mutation$RedeemGiftCard$redeemGiftCard {
  CopyWith$Mutation$RedeemGiftCard$redeemGiftCard<
          Mutation$RedeemGiftCard$redeemGiftCard>
      get copyWith => CopyWith$Mutation$RedeemGiftCard$redeemGiftCard(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$RedeemGiftCard$redeemGiftCard<TRes> {
  factory CopyWith$Mutation$RedeemGiftCard$redeemGiftCard(
    Mutation$RedeemGiftCard$redeemGiftCard instance,
    TRes Function(Mutation$RedeemGiftCard$redeemGiftCard) then,
  ) = _CopyWithImpl$Mutation$RedeemGiftCard$redeemGiftCard;

  factory CopyWith$Mutation$RedeemGiftCard$redeemGiftCard.stub(TRes res) =
      _CopyWithStubImpl$Mutation$RedeemGiftCard$redeemGiftCard;

  TRes call({
    String? id,
    double? amount,
    String? currency,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$RedeemGiftCard$redeemGiftCard<TRes>
    implements CopyWith$Mutation$RedeemGiftCard$redeemGiftCard<TRes> {
  _CopyWithImpl$Mutation$RedeemGiftCard$redeemGiftCard(
    this._instance,
    this._then,
  );

  final Mutation$RedeemGiftCard$redeemGiftCard _instance;

  final TRes Function(Mutation$RedeemGiftCard$redeemGiftCard) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? amount = _undefined,
    Object? currency = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$RedeemGiftCard$redeemGiftCard(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        amount: amount == _undefined || amount == null
            ? _instance.amount
            : (amount as double),
        currency: currency == _undefined || currency == null
            ? _instance.currency
            : (currency as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$RedeemGiftCard$redeemGiftCard<TRes>
    implements CopyWith$Mutation$RedeemGiftCard$redeemGiftCard<TRes> {
  _CopyWithStubImpl$Mutation$RedeemGiftCard$redeemGiftCard(this._res);

  TRes _res;

  call({
    String? id,
    double? amount,
    String? currency,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$MarkAsDefault {
  factory Variables$Mutation$MarkAsDefault({
    required String id,
    required bool isDefault,
  }) =>
      Variables$Mutation$MarkAsDefault._({
        r'id': id,
        r'isDefault': isDefault,
      });

  Variables$Mutation$MarkAsDefault._(this._$data);

  factory Variables$Mutation$MarkAsDefault.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$isDefault = data['isDefault'];
    result$data['isDefault'] = (l$isDefault as bool);
    return Variables$Mutation$MarkAsDefault._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  bool get isDefault => (_$data['isDefault'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$isDefault = isDefault;
    result$data['isDefault'] = l$isDefault;
    return result$data;
  }

  CopyWith$Variables$Mutation$MarkAsDefault<Variables$Mutation$MarkAsDefault>
      get copyWith => CopyWith$Variables$Mutation$MarkAsDefault(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$MarkAsDefault ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$isDefault = isDefault;
    final lOther$isDefault = other.isDefault;
    if (l$isDefault != lOther$isDefault) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$isDefault = isDefault;
    return Object.hashAll([
      l$id,
      l$isDefault,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$MarkAsDefault<TRes> {
  factory CopyWith$Variables$Mutation$MarkAsDefault(
    Variables$Mutation$MarkAsDefault instance,
    TRes Function(Variables$Mutation$MarkAsDefault) then,
  ) = _CopyWithImpl$Variables$Mutation$MarkAsDefault;

  factory CopyWith$Variables$Mutation$MarkAsDefault.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$MarkAsDefault;

  TRes call({
    String? id,
    bool? isDefault,
  });
}

class _CopyWithImpl$Variables$Mutation$MarkAsDefault<TRes>
    implements CopyWith$Variables$Mutation$MarkAsDefault<TRes> {
  _CopyWithImpl$Variables$Mutation$MarkAsDefault(
    this._instance,
    this._then,
  );

  final Variables$Mutation$MarkAsDefault _instance;

  final TRes Function(Variables$Mutation$MarkAsDefault) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? isDefault = _undefined,
  }) =>
      _then(Variables$Mutation$MarkAsDefault._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (isDefault != _undefined && isDefault != null)
          'isDefault': (isDefault as bool),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$MarkAsDefault<TRes>
    implements CopyWith$Variables$Mutation$MarkAsDefault<TRes> {
  _CopyWithStubImpl$Variables$Mutation$MarkAsDefault(this._res);

  TRes _res;

  call({
    String? id,
    bool? isDefault,
  }) =>
      _res;
}

class Mutation$MarkAsDefault {
  Mutation$MarkAsDefault({
    required this.updatePaymentMethodDefault,
    this.$__typename = 'Mutation',
  });

  factory Mutation$MarkAsDefault.fromJson(Map<String, dynamic> json) {
    final l$updatePaymentMethodDefault = json['updatePaymentMethodDefault'];
    final l$$__typename = json['__typename'];
    return Mutation$MarkAsDefault(
      updatePaymentMethodDefault:
          (l$updatePaymentMethodDefault as List<dynamic>)
              .map((e) => Fragment$SavedPaymentMethodFragment.fromJson(
                  (e as Map<String, dynamic>)))
              .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$SavedPaymentMethodFragment> updatePaymentMethodDefault;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updatePaymentMethodDefault = updatePaymentMethodDefault;
    _resultData['updatePaymentMethodDefault'] =
        l$updatePaymentMethodDefault.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updatePaymentMethodDefault = updatePaymentMethodDefault;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$updatePaymentMethodDefault.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$MarkAsDefault || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updatePaymentMethodDefault = updatePaymentMethodDefault;
    final lOther$updatePaymentMethodDefault = other.updatePaymentMethodDefault;
    if (l$updatePaymentMethodDefault.length !=
        lOther$updatePaymentMethodDefault.length) {
      return false;
    }
    for (int i = 0; i < l$updatePaymentMethodDefault.length; i++) {
      final l$updatePaymentMethodDefault$entry =
          l$updatePaymentMethodDefault[i];
      final lOther$updatePaymentMethodDefault$entry =
          lOther$updatePaymentMethodDefault[i];
      if (l$updatePaymentMethodDefault$entry !=
          lOther$updatePaymentMethodDefault$entry) {
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

extension UtilityExtension$Mutation$MarkAsDefault on Mutation$MarkAsDefault {
  CopyWith$Mutation$MarkAsDefault<Mutation$MarkAsDefault> get copyWith =>
      CopyWith$Mutation$MarkAsDefault(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$MarkAsDefault<TRes> {
  factory CopyWith$Mutation$MarkAsDefault(
    Mutation$MarkAsDefault instance,
    TRes Function(Mutation$MarkAsDefault) then,
  ) = _CopyWithImpl$Mutation$MarkAsDefault;

  factory CopyWith$Mutation$MarkAsDefault.stub(TRes res) =
      _CopyWithStubImpl$Mutation$MarkAsDefault;

  TRes call({
    List<Fragment$SavedPaymentMethodFragment>? updatePaymentMethodDefault,
    String? $__typename,
  });
  TRes updatePaymentMethodDefault(
      Iterable<Fragment$SavedPaymentMethodFragment> Function(
              Iterable<
                  CopyWith$Fragment$SavedPaymentMethodFragment<
                      Fragment$SavedPaymentMethodFragment>>)
          _fn);
}

class _CopyWithImpl$Mutation$MarkAsDefault<TRes>
    implements CopyWith$Mutation$MarkAsDefault<TRes> {
  _CopyWithImpl$Mutation$MarkAsDefault(
    this._instance,
    this._then,
  );

  final Mutation$MarkAsDefault _instance;

  final TRes Function(Mutation$MarkAsDefault) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updatePaymentMethodDefault = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$MarkAsDefault(
        updatePaymentMethodDefault: updatePaymentMethodDefault == _undefined ||
                updatePaymentMethodDefault == null
            ? _instance.updatePaymentMethodDefault
            : (updatePaymentMethodDefault
                as List<Fragment$SavedPaymentMethodFragment>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes updatePaymentMethodDefault(
          Iterable<Fragment$SavedPaymentMethodFragment> Function(
                  Iterable<
                      CopyWith$Fragment$SavedPaymentMethodFragment<
                          Fragment$SavedPaymentMethodFragment>>)
              _fn) =>
      call(
          updatePaymentMethodDefault: _fn(_instance.updatePaymentMethodDefault
              .map((e) => CopyWith$Fragment$SavedPaymentMethodFragment(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$MarkAsDefault<TRes>
    implements CopyWith$Mutation$MarkAsDefault<TRes> {
  _CopyWithStubImpl$Mutation$MarkAsDefault(this._res);

  TRes _res;

  call({
    List<Fragment$SavedPaymentMethodFragment>? updatePaymentMethodDefault,
    String? $__typename,
  }) =>
      _res;

  updatePaymentMethodDefault(_fn) => _res;
}

const documentNodeMutationMarkAsDefault = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'MarkAsDefault'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'isDefault')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updatePaymentMethodDefault'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          ),
          ArgumentNode(
            name: NameNode(value: 'isDefault'),
            value: VariableNode(name: NameNode(value: 'isDefault')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'SavedPaymentMethodFragment'),
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
  fragmentDefinitionSavedPaymentMethodFragment,
]);
Mutation$MarkAsDefault _parserFn$Mutation$MarkAsDefault(
        Map<String, dynamic> data) =>
    Mutation$MarkAsDefault.fromJson(data);
typedef OnMutationCompleted$Mutation$MarkAsDefault = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$MarkAsDefault?,
);

class Options$Mutation$MarkAsDefault
    extends graphql.MutationOptions<Mutation$MarkAsDefault> {
  Options$Mutation$MarkAsDefault({
    String? operationName,
    required Variables$Mutation$MarkAsDefault variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$MarkAsDefault? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$MarkAsDefault? onCompleted,
    graphql.OnMutationUpdate<Mutation$MarkAsDefault>? update,
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
                        : _parserFn$Mutation$MarkAsDefault(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationMarkAsDefault,
          parserFn: _parserFn$Mutation$MarkAsDefault,
        );

  final OnMutationCompleted$Mutation$MarkAsDefault? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$MarkAsDefault
    extends graphql.WatchQueryOptions<Mutation$MarkAsDefault> {
  WatchOptions$Mutation$MarkAsDefault({
    String? operationName,
    required Variables$Mutation$MarkAsDefault variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$MarkAsDefault? typedOptimisticResult,
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
          document: documentNodeMutationMarkAsDefault,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$MarkAsDefault,
        );
}

extension ClientExtension$Mutation$MarkAsDefault on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$MarkAsDefault>> mutate$MarkAsDefault(
          Options$Mutation$MarkAsDefault options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$MarkAsDefault> watchMutation$MarkAsDefault(
          WatchOptions$Mutation$MarkAsDefault options) =>
      this.watchMutation(options);
}

class Variables$Mutation$TopUpWallet {
  factory Variables$Mutation$TopUpWallet(
          {required Input$TopUpWalletInput input}) =>
      Variables$Mutation$TopUpWallet._({
        r'input': input,
      });

  Variables$Mutation$TopUpWallet._(this._$data);

  factory Variables$Mutation$TopUpWallet.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$TopUpWalletInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$TopUpWallet._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$TopUpWalletInput get input =>
      (_$data['input'] as Input$TopUpWalletInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$TopUpWallet<Variables$Mutation$TopUpWallet>
      get copyWith => CopyWith$Variables$Mutation$TopUpWallet(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$TopUpWallet ||
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

abstract class CopyWith$Variables$Mutation$TopUpWallet<TRes> {
  factory CopyWith$Variables$Mutation$TopUpWallet(
    Variables$Mutation$TopUpWallet instance,
    TRes Function(Variables$Mutation$TopUpWallet) then,
  ) = _CopyWithImpl$Variables$Mutation$TopUpWallet;

  factory CopyWith$Variables$Mutation$TopUpWallet.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$TopUpWallet;

  TRes call({Input$TopUpWalletInput? input});
}

class _CopyWithImpl$Variables$Mutation$TopUpWallet<TRes>
    implements CopyWith$Variables$Mutation$TopUpWallet<TRes> {
  _CopyWithImpl$Variables$Mutation$TopUpWallet(
    this._instance,
    this._then,
  );

  final Variables$Mutation$TopUpWallet _instance;

  final TRes Function(Variables$Mutation$TopUpWallet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$TopUpWallet._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$TopUpWalletInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$TopUpWallet<TRes>
    implements CopyWith$Variables$Mutation$TopUpWallet<TRes> {
  _CopyWithStubImpl$Variables$Mutation$TopUpWallet(this._res);

  TRes _res;

  call({Input$TopUpWalletInput? input}) => _res;
}

class Mutation$TopUpWallet {
  Mutation$TopUpWallet({
    required this.topUpWallet,
    this.$__typename = 'Mutation',
  });

  factory Mutation$TopUpWallet.fromJson(Map<String, dynamic> json) {
    final l$topUpWallet = json['topUpWallet'];
    final l$$__typename = json['__typename'];
    return Mutation$TopUpWallet(
      topUpWallet: Fragment$IntentResult.fromJson(
          (l$topUpWallet as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$IntentResult topUpWallet;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$topUpWallet = topUpWallet;
    _resultData['topUpWallet'] = l$topUpWallet.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$topUpWallet = topUpWallet;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$topUpWallet,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$TopUpWallet || runtimeType != other.runtimeType) {
      return false;
    }
    final l$topUpWallet = topUpWallet;
    final lOther$topUpWallet = other.topUpWallet;
    if (l$topUpWallet != lOther$topUpWallet) {
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

extension UtilityExtension$Mutation$TopUpWallet on Mutation$TopUpWallet {
  CopyWith$Mutation$TopUpWallet<Mutation$TopUpWallet> get copyWith =>
      CopyWith$Mutation$TopUpWallet(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TopUpWallet<TRes> {
  factory CopyWith$Mutation$TopUpWallet(
    Mutation$TopUpWallet instance,
    TRes Function(Mutation$TopUpWallet) then,
  ) = _CopyWithImpl$Mutation$TopUpWallet;

  factory CopyWith$Mutation$TopUpWallet.stub(TRes res) =
      _CopyWithStubImpl$Mutation$TopUpWallet;

  TRes call({
    Fragment$IntentResult? topUpWallet,
    String? $__typename,
  });
  CopyWith$Fragment$IntentResult<TRes> get topUpWallet;
}

class _CopyWithImpl$Mutation$TopUpWallet<TRes>
    implements CopyWith$Mutation$TopUpWallet<TRes> {
  _CopyWithImpl$Mutation$TopUpWallet(
    this._instance,
    this._then,
  );

  final Mutation$TopUpWallet _instance;

  final TRes Function(Mutation$TopUpWallet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? topUpWallet = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$TopUpWallet(
        topUpWallet: topUpWallet == _undefined || topUpWallet == null
            ? _instance.topUpWallet
            : (topUpWallet as Fragment$IntentResult),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$IntentResult<TRes> get topUpWallet {
    final local$topUpWallet = _instance.topUpWallet;
    return CopyWith$Fragment$IntentResult(
        local$topUpWallet, (e) => call(topUpWallet: e));
  }
}

class _CopyWithStubImpl$Mutation$TopUpWallet<TRes>
    implements CopyWith$Mutation$TopUpWallet<TRes> {
  _CopyWithStubImpl$Mutation$TopUpWallet(this._res);

  TRes _res;

  call({
    Fragment$IntentResult? topUpWallet,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$IntentResult<TRes> get topUpWallet =>
      CopyWith$Fragment$IntentResult.stub(_res);
}

const documentNodeMutationTopUpWallet = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'TopUpWallet'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'TopUpWalletInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'topUpWallet'),
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
            name: NameNode(value: 'IntentResult'),
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
  fragmentDefinitionIntentResult,
]);
Mutation$TopUpWallet _parserFn$Mutation$TopUpWallet(
        Map<String, dynamic> data) =>
    Mutation$TopUpWallet.fromJson(data);
typedef OnMutationCompleted$Mutation$TopUpWallet = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$TopUpWallet?,
);

class Options$Mutation$TopUpWallet
    extends graphql.MutationOptions<Mutation$TopUpWallet> {
  Options$Mutation$TopUpWallet({
    String? operationName,
    required Variables$Mutation$TopUpWallet variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$TopUpWallet? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$TopUpWallet? onCompleted,
    graphql.OnMutationUpdate<Mutation$TopUpWallet>? update,
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
                    data == null ? null : _parserFn$Mutation$TopUpWallet(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationTopUpWallet,
          parserFn: _parserFn$Mutation$TopUpWallet,
        );

  final OnMutationCompleted$Mutation$TopUpWallet? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$TopUpWallet
    extends graphql.WatchQueryOptions<Mutation$TopUpWallet> {
  WatchOptions$Mutation$TopUpWallet({
    String? operationName,
    required Variables$Mutation$TopUpWallet variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$TopUpWallet? typedOptimisticResult,
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
          document: documentNodeMutationTopUpWallet,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$TopUpWallet,
        );
}

extension ClientExtension$Mutation$TopUpWallet on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$TopUpWallet>> mutate$TopUpWallet(
          Options$Mutation$TopUpWallet options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$TopUpWallet> watchMutation$TopUpWallet(
          WatchOptions$Mutation$TopUpWallet options) =>
      this.watchMutation(options);
}
