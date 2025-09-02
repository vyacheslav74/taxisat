import '../fragments/favorite_location.graphql.dart';
import '../fragments/point.fragment.graphql.dart';
import '../schema.gql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Query$FavoriteLocations {
  Query$FavoriteLocations({
    required this.riderAddresses,
    this.$__typename = 'Query',
  });

  factory Query$FavoriteLocations.fromJson(Map<String, dynamic> json) {
    final l$riderAddresses = json['riderAddresses'];
    final l$$__typename = json['__typename'];
    return Query$FavoriteLocations(
      riderAddresses: (l$riderAddresses as List<dynamic>)
          .map((e) => Fragment$FavoriteLocationFragment.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$FavoriteLocationFragment> riderAddresses;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$riderAddresses = riderAddresses;
    _resultData['riderAddresses'] =
        l$riderAddresses.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$riderAddresses = riderAddresses;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$riderAddresses.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FavoriteLocations || runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FavoriteLocations on Query$FavoriteLocations {
  CopyWith$Query$FavoriteLocations<Query$FavoriteLocations> get copyWith =>
      CopyWith$Query$FavoriteLocations(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FavoriteLocations<TRes> {
  factory CopyWith$Query$FavoriteLocations(
    Query$FavoriteLocations instance,
    TRes Function(Query$FavoriteLocations) then,
  ) = _CopyWithImpl$Query$FavoriteLocations;

  factory CopyWith$Query$FavoriteLocations.stub(TRes res) =
      _CopyWithStubImpl$Query$FavoriteLocations;

  TRes call({
    List<Fragment$FavoriteLocationFragment>? riderAddresses,
    String? $__typename,
  });
  TRes riderAddresses(
      Iterable<Fragment$FavoriteLocationFragment> Function(
              Iterable<
                  CopyWith$Fragment$FavoriteLocationFragment<
                      Fragment$FavoriteLocationFragment>>)
          _fn);
}

class _CopyWithImpl$Query$FavoriteLocations<TRes>
    implements CopyWith$Query$FavoriteLocations<TRes> {
  _CopyWithImpl$Query$FavoriteLocations(
    this._instance,
    this._then,
  );

  final Query$FavoriteLocations _instance;

  final TRes Function(Query$FavoriteLocations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? riderAddresses = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FavoriteLocations(
        riderAddresses: riderAddresses == _undefined || riderAddresses == null
            ? _instance.riderAddresses
            : (riderAddresses as List<Fragment$FavoriteLocationFragment>),
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
}

class _CopyWithStubImpl$Query$FavoriteLocations<TRes>
    implements CopyWith$Query$FavoriteLocations<TRes> {
  _CopyWithStubImpl$Query$FavoriteLocations(this._res);

  TRes _res;

  call({
    List<Fragment$FavoriteLocationFragment>? riderAddresses,
    String? $__typename,
  }) =>
      _res;

  riderAddresses(_fn) => _res;
}

const documentNodeQueryFavoriteLocations = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FavoriteLocations'),
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
Query$FavoriteLocations _parserFn$Query$FavoriteLocations(
        Map<String, dynamic> data) =>
    Query$FavoriteLocations.fromJson(data);
typedef OnQueryComplete$Query$FavoriteLocations = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$FavoriteLocations?,
);

class Options$Query$FavoriteLocations
    extends graphql.QueryOptions<Query$FavoriteLocations> {
  Options$Query$FavoriteLocations({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FavoriteLocations? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$FavoriteLocations? onComplete,
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
                        : _parserFn$Query$FavoriteLocations(data),
                  ),
          onError: onError,
          document: documentNodeQueryFavoriteLocations,
          parserFn: _parserFn$Query$FavoriteLocations,
        );

  final OnQueryComplete$Query$FavoriteLocations? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$FavoriteLocations
    extends graphql.WatchQueryOptions<Query$FavoriteLocations> {
  WatchOptions$Query$FavoriteLocations({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FavoriteLocations? typedOptimisticResult,
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
          document: documentNodeQueryFavoriteLocations,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FavoriteLocations,
        );
}

class FetchMoreOptions$Query$FavoriteLocations
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FavoriteLocations(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryFavoriteLocations,
        );
}

extension ClientExtension$Query$FavoriteLocations on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FavoriteLocations>> query$FavoriteLocations(
          [Options$Query$FavoriteLocations? options]) async =>
      await this.query(options ?? Options$Query$FavoriteLocations());
  graphql.ObservableQuery<Query$FavoriteLocations> watchQuery$FavoriteLocations(
          [WatchOptions$Query$FavoriteLocations? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$FavoriteLocations());
  void writeQuery$FavoriteLocations({
    required Query$FavoriteLocations data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQueryFavoriteLocations)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FavoriteLocations? readQuery$FavoriteLocations(
      {bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryFavoriteLocations)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FavoriteLocations.fromJson(result);
  }
}

class Variables$Mutation$UpdateFavoriteLocation {
  factory Variables$Mutation$UpdateFavoriteLocation(
          {required Input$UpdateOneRiderAddressInput input}) =>
      Variables$Mutation$UpdateFavoriteLocation._({
        r'input': input,
      });

  Variables$Mutation$UpdateFavoriteLocation._(this._$data);

  factory Variables$Mutation$UpdateFavoriteLocation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$UpdateOneRiderAddressInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$UpdateFavoriteLocation._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UpdateOneRiderAddressInput get input =>
      (_$data['input'] as Input$UpdateOneRiderAddressInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateFavoriteLocation<
          Variables$Mutation$UpdateFavoriteLocation>
      get copyWith => CopyWith$Variables$Mutation$UpdateFavoriteLocation(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateFavoriteLocation ||
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

abstract class CopyWith$Variables$Mutation$UpdateFavoriteLocation<TRes> {
  factory CopyWith$Variables$Mutation$UpdateFavoriteLocation(
    Variables$Mutation$UpdateFavoriteLocation instance,
    TRes Function(Variables$Mutation$UpdateFavoriteLocation) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateFavoriteLocation;

  factory CopyWith$Variables$Mutation$UpdateFavoriteLocation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateFavoriteLocation;

  TRes call({Input$UpdateOneRiderAddressInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpdateFavoriteLocation<TRes>
    implements CopyWith$Variables$Mutation$UpdateFavoriteLocation<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateFavoriteLocation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateFavoriteLocation _instance;

  final TRes Function(Variables$Mutation$UpdateFavoriteLocation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$UpdateFavoriteLocation._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$UpdateOneRiderAddressInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateFavoriteLocation<TRes>
    implements CopyWith$Variables$Mutation$UpdateFavoriteLocation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateFavoriteLocation(this._res);

  TRes _res;

  call({Input$UpdateOneRiderAddressInput? input}) => _res;
}

class Mutation$UpdateFavoriteLocation {
  Mutation$UpdateFavoriteLocation({
    required this.updateOneRiderAddress,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateFavoriteLocation.fromJson(Map<String, dynamic> json) {
    final l$updateOneRiderAddress = json['updateOneRiderAddress'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateFavoriteLocation(
      updateOneRiderAddress: Fragment$FavoriteLocationFragment.fromJson(
          (l$updateOneRiderAddress as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$FavoriteLocationFragment updateOneRiderAddress;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateOneRiderAddress = updateOneRiderAddress;
    _resultData['updateOneRiderAddress'] = l$updateOneRiderAddress.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateOneRiderAddress = updateOneRiderAddress;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateOneRiderAddress,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateFavoriteLocation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateOneRiderAddress = updateOneRiderAddress;
    final lOther$updateOneRiderAddress = other.updateOneRiderAddress;
    if (l$updateOneRiderAddress != lOther$updateOneRiderAddress) {
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

extension UtilityExtension$Mutation$UpdateFavoriteLocation
    on Mutation$UpdateFavoriteLocation {
  CopyWith$Mutation$UpdateFavoriteLocation<Mutation$UpdateFavoriteLocation>
      get copyWith => CopyWith$Mutation$UpdateFavoriteLocation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateFavoriteLocation<TRes> {
  factory CopyWith$Mutation$UpdateFavoriteLocation(
    Mutation$UpdateFavoriteLocation instance,
    TRes Function(Mutation$UpdateFavoriteLocation) then,
  ) = _CopyWithImpl$Mutation$UpdateFavoriteLocation;

  factory CopyWith$Mutation$UpdateFavoriteLocation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateFavoriteLocation;

  TRes call({
    Fragment$FavoriteLocationFragment? updateOneRiderAddress,
    String? $__typename,
  });
  CopyWith$Fragment$FavoriteLocationFragment<TRes> get updateOneRiderAddress;
}

class _CopyWithImpl$Mutation$UpdateFavoriteLocation<TRes>
    implements CopyWith$Mutation$UpdateFavoriteLocation<TRes> {
  _CopyWithImpl$Mutation$UpdateFavoriteLocation(
    this._instance,
    this._then,
  );

  final Mutation$UpdateFavoriteLocation _instance;

  final TRes Function(Mutation$UpdateFavoriteLocation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateOneRiderAddress = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateFavoriteLocation(
        updateOneRiderAddress:
            updateOneRiderAddress == _undefined || updateOneRiderAddress == null
                ? _instance.updateOneRiderAddress
                : (updateOneRiderAddress as Fragment$FavoriteLocationFragment),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$FavoriteLocationFragment<TRes> get updateOneRiderAddress {
    final local$updateOneRiderAddress = _instance.updateOneRiderAddress;
    return CopyWith$Fragment$FavoriteLocationFragment(
        local$updateOneRiderAddress, (e) => call(updateOneRiderAddress: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateFavoriteLocation<TRes>
    implements CopyWith$Mutation$UpdateFavoriteLocation<TRes> {
  _CopyWithStubImpl$Mutation$UpdateFavoriteLocation(this._res);

  TRes _res;

  call({
    Fragment$FavoriteLocationFragment? updateOneRiderAddress,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$FavoriteLocationFragment<TRes> get updateOneRiderAddress =>
      CopyWith$Fragment$FavoriteLocationFragment.stub(_res);
}

const documentNodeMutationUpdateFavoriteLocation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateFavoriteLocation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'UpdateOneRiderAddressInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateOneRiderAddress'),
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
Mutation$UpdateFavoriteLocation _parserFn$Mutation$UpdateFavoriteLocation(
        Map<String, dynamic> data) =>
    Mutation$UpdateFavoriteLocation.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateFavoriteLocation = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UpdateFavoriteLocation?,
);

class Options$Mutation$UpdateFavoriteLocation
    extends graphql.MutationOptions<Mutation$UpdateFavoriteLocation> {
  Options$Mutation$UpdateFavoriteLocation({
    String? operationName,
    required Variables$Mutation$UpdateFavoriteLocation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateFavoriteLocation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateFavoriteLocation? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateFavoriteLocation>? update,
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
                        : _parserFn$Mutation$UpdateFavoriteLocation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateFavoriteLocation,
          parserFn: _parserFn$Mutation$UpdateFavoriteLocation,
        );

  final OnMutationCompleted$Mutation$UpdateFavoriteLocation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateFavoriteLocation
    extends graphql.WatchQueryOptions<Mutation$UpdateFavoriteLocation> {
  WatchOptions$Mutation$UpdateFavoriteLocation({
    String? operationName,
    required Variables$Mutation$UpdateFavoriteLocation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateFavoriteLocation? typedOptimisticResult,
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
          document: documentNodeMutationUpdateFavoriteLocation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateFavoriteLocation,
        );
}

extension ClientExtension$Mutation$UpdateFavoriteLocation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateFavoriteLocation>>
      mutate$UpdateFavoriteLocation(
              Options$Mutation$UpdateFavoriteLocation options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateFavoriteLocation>
      watchMutation$UpdateFavoriteLocation(
              WatchOptions$Mutation$UpdateFavoriteLocation options) =>
          this.watchMutation(options);
}

class Variables$Mutation$CreateFavoriteLocation {
  factory Variables$Mutation$CreateFavoriteLocation(
          {required Input$CreateOneRiderAddressInput input}) =>
      Variables$Mutation$CreateFavoriteLocation._({
        r'input': input,
      });

  Variables$Mutation$CreateFavoriteLocation._(this._$data);

  factory Variables$Mutation$CreateFavoriteLocation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$CreateOneRiderAddressInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$CreateFavoriteLocation._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateOneRiderAddressInput get input =>
      (_$data['input'] as Input$CreateOneRiderAddressInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateFavoriteLocation<
          Variables$Mutation$CreateFavoriteLocation>
      get copyWith => CopyWith$Variables$Mutation$CreateFavoriteLocation(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateFavoriteLocation ||
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

abstract class CopyWith$Variables$Mutation$CreateFavoriteLocation<TRes> {
  factory CopyWith$Variables$Mutation$CreateFavoriteLocation(
    Variables$Mutation$CreateFavoriteLocation instance,
    TRes Function(Variables$Mutation$CreateFavoriteLocation) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateFavoriteLocation;

  factory CopyWith$Variables$Mutation$CreateFavoriteLocation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateFavoriteLocation;

  TRes call({Input$CreateOneRiderAddressInput? input});
}

class _CopyWithImpl$Variables$Mutation$CreateFavoriteLocation<TRes>
    implements CopyWith$Variables$Mutation$CreateFavoriteLocation<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateFavoriteLocation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateFavoriteLocation _instance;

  final TRes Function(Variables$Mutation$CreateFavoriteLocation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$CreateFavoriteLocation._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$CreateOneRiderAddressInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateFavoriteLocation<TRes>
    implements CopyWith$Variables$Mutation$CreateFavoriteLocation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateFavoriteLocation(this._res);

  TRes _res;

  call({Input$CreateOneRiderAddressInput? input}) => _res;
}

class Mutation$CreateFavoriteLocation {
  Mutation$CreateFavoriteLocation({
    required this.createOneRiderAddress,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateFavoriteLocation.fromJson(Map<String, dynamic> json) {
    final l$createOneRiderAddress = json['createOneRiderAddress'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateFavoriteLocation(
      createOneRiderAddress: Fragment$FavoriteLocationFragment.fromJson(
          (l$createOneRiderAddress as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$FavoriteLocationFragment createOneRiderAddress;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createOneRiderAddress = createOneRiderAddress;
    _resultData['createOneRiderAddress'] = l$createOneRiderAddress.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createOneRiderAddress = createOneRiderAddress;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createOneRiderAddress,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateFavoriteLocation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createOneRiderAddress = createOneRiderAddress;
    final lOther$createOneRiderAddress = other.createOneRiderAddress;
    if (l$createOneRiderAddress != lOther$createOneRiderAddress) {
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

extension UtilityExtension$Mutation$CreateFavoriteLocation
    on Mutation$CreateFavoriteLocation {
  CopyWith$Mutation$CreateFavoriteLocation<Mutation$CreateFavoriteLocation>
      get copyWith => CopyWith$Mutation$CreateFavoriteLocation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateFavoriteLocation<TRes> {
  factory CopyWith$Mutation$CreateFavoriteLocation(
    Mutation$CreateFavoriteLocation instance,
    TRes Function(Mutation$CreateFavoriteLocation) then,
  ) = _CopyWithImpl$Mutation$CreateFavoriteLocation;

  factory CopyWith$Mutation$CreateFavoriteLocation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateFavoriteLocation;

  TRes call({
    Fragment$FavoriteLocationFragment? createOneRiderAddress,
    String? $__typename,
  });
  CopyWith$Fragment$FavoriteLocationFragment<TRes> get createOneRiderAddress;
}

class _CopyWithImpl$Mutation$CreateFavoriteLocation<TRes>
    implements CopyWith$Mutation$CreateFavoriteLocation<TRes> {
  _CopyWithImpl$Mutation$CreateFavoriteLocation(
    this._instance,
    this._then,
  );

  final Mutation$CreateFavoriteLocation _instance;

  final TRes Function(Mutation$CreateFavoriteLocation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createOneRiderAddress = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateFavoriteLocation(
        createOneRiderAddress:
            createOneRiderAddress == _undefined || createOneRiderAddress == null
                ? _instance.createOneRiderAddress
                : (createOneRiderAddress as Fragment$FavoriteLocationFragment),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$FavoriteLocationFragment<TRes> get createOneRiderAddress {
    final local$createOneRiderAddress = _instance.createOneRiderAddress;
    return CopyWith$Fragment$FavoriteLocationFragment(
        local$createOneRiderAddress, (e) => call(createOneRiderAddress: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateFavoriteLocation<TRes>
    implements CopyWith$Mutation$CreateFavoriteLocation<TRes> {
  _CopyWithStubImpl$Mutation$CreateFavoriteLocation(this._res);

  TRes _res;

  call({
    Fragment$FavoriteLocationFragment? createOneRiderAddress,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$FavoriteLocationFragment<TRes> get createOneRiderAddress =>
      CopyWith$Fragment$FavoriteLocationFragment.stub(_res);
}

const documentNodeMutationCreateFavoriteLocation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateFavoriteLocation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'CreateOneRiderAddressInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createOneRiderAddress'),
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
Mutation$CreateFavoriteLocation _parserFn$Mutation$CreateFavoriteLocation(
        Map<String, dynamic> data) =>
    Mutation$CreateFavoriteLocation.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateFavoriteLocation = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$CreateFavoriteLocation?,
);

class Options$Mutation$CreateFavoriteLocation
    extends graphql.MutationOptions<Mutation$CreateFavoriteLocation> {
  Options$Mutation$CreateFavoriteLocation({
    String? operationName,
    required Variables$Mutation$CreateFavoriteLocation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateFavoriteLocation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateFavoriteLocation? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateFavoriteLocation>? update,
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
                        : _parserFn$Mutation$CreateFavoriteLocation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateFavoriteLocation,
          parserFn: _parserFn$Mutation$CreateFavoriteLocation,
        );

  final OnMutationCompleted$Mutation$CreateFavoriteLocation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateFavoriteLocation
    extends graphql.WatchQueryOptions<Mutation$CreateFavoriteLocation> {
  WatchOptions$Mutation$CreateFavoriteLocation({
    String? operationName,
    required Variables$Mutation$CreateFavoriteLocation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateFavoriteLocation? typedOptimisticResult,
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
          document: documentNodeMutationCreateFavoriteLocation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateFavoriteLocation,
        );
}

extension ClientExtension$Mutation$CreateFavoriteLocation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateFavoriteLocation>>
      mutate$CreateFavoriteLocation(
              Options$Mutation$CreateFavoriteLocation options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreateFavoriteLocation>
      watchMutation$CreateFavoriteLocation(
              WatchOptions$Mutation$CreateFavoriteLocation options) =>
          this.watchMutation(options);
}

class Variables$Mutation$DeleteFavoriteLocation {
  factory Variables$Mutation$DeleteFavoriteLocation(
          {required Input$DeleteOneRiderAddressInput input}) =>
      Variables$Mutation$DeleteFavoriteLocation._({
        r'input': input,
      });

  Variables$Mutation$DeleteFavoriteLocation._(this._$data);

  factory Variables$Mutation$DeleteFavoriteLocation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$DeleteOneRiderAddressInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$DeleteFavoriteLocation._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$DeleteOneRiderAddressInput get input =>
      (_$data['input'] as Input$DeleteOneRiderAddressInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteFavoriteLocation<
          Variables$Mutation$DeleteFavoriteLocation>
      get copyWith => CopyWith$Variables$Mutation$DeleteFavoriteLocation(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$DeleteFavoriteLocation ||
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

abstract class CopyWith$Variables$Mutation$DeleteFavoriteLocation<TRes> {
  factory CopyWith$Variables$Mutation$DeleteFavoriteLocation(
    Variables$Mutation$DeleteFavoriteLocation instance,
    TRes Function(Variables$Mutation$DeleteFavoriteLocation) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteFavoriteLocation;

  factory CopyWith$Variables$Mutation$DeleteFavoriteLocation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteFavoriteLocation;

  TRes call({Input$DeleteOneRiderAddressInput? input});
}

class _CopyWithImpl$Variables$Mutation$DeleteFavoriteLocation<TRes>
    implements CopyWith$Variables$Mutation$DeleteFavoriteLocation<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteFavoriteLocation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteFavoriteLocation _instance;

  final TRes Function(Variables$Mutation$DeleteFavoriteLocation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$DeleteFavoriteLocation._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$DeleteOneRiderAddressInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteFavoriteLocation<TRes>
    implements CopyWith$Variables$Mutation$DeleteFavoriteLocation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteFavoriteLocation(this._res);

  TRes _res;

  call({Input$DeleteOneRiderAddressInput? input}) => _res;
}

class Mutation$DeleteFavoriteLocation {
  Mutation$DeleteFavoriteLocation({
    required this.deleteOneRiderAddress,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteFavoriteLocation.fromJson(Map<String, dynamic> json) {
    final l$deleteOneRiderAddress = json['deleteOneRiderAddress'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteFavoriteLocation(
      deleteOneRiderAddress:
          Mutation$DeleteFavoriteLocation$deleteOneRiderAddress.fromJson(
              (l$deleteOneRiderAddress as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteFavoriteLocation$deleteOneRiderAddress
      deleteOneRiderAddress;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteOneRiderAddress = deleteOneRiderAddress;
    _resultData['deleteOneRiderAddress'] = l$deleteOneRiderAddress.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteOneRiderAddress = deleteOneRiderAddress;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteOneRiderAddress,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteFavoriteLocation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteOneRiderAddress = deleteOneRiderAddress;
    final lOther$deleteOneRiderAddress = other.deleteOneRiderAddress;
    if (l$deleteOneRiderAddress != lOther$deleteOneRiderAddress) {
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

extension UtilityExtension$Mutation$DeleteFavoriteLocation
    on Mutation$DeleteFavoriteLocation {
  CopyWith$Mutation$DeleteFavoriteLocation<Mutation$DeleteFavoriteLocation>
      get copyWith => CopyWith$Mutation$DeleteFavoriteLocation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteFavoriteLocation<TRes> {
  factory CopyWith$Mutation$DeleteFavoriteLocation(
    Mutation$DeleteFavoriteLocation instance,
    TRes Function(Mutation$DeleteFavoriteLocation) then,
  ) = _CopyWithImpl$Mutation$DeleteFavoriteLocation;

  factory CopyWith$Mutation$DeleteFavoriteLocation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteFavoriteLocation;

  TRes call({
    Mutation$DeleteFavoriteLocation$deleteOneRiderAddress?
        deleteOneRiderAddress,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteFavoriteLocation$deleteOneRiderAddress<TRes>
      get deleteOneRiderAddress;
}

class _CopyWithImpl$Mutation$DeleteFavoriteLocation<TRes>
    implements CopyWith$Mutation$DeleteFavoriteLocation<TRes> {
  _CopyWithImpl$Mutation$DeleteFavoriteLocation(
    this._instance,
    this._then,
  );

  final Mutation$DeleteFavoriteLocation _instance;

  final TRes Function(Mutation$DeleteFavoriteLocation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteOneRiderAddress = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteFavoriteLocation(
        deleteOneRiderAddress:
            deleteOneRiderAddress == _undefined || deleteOneRiderAddress == null
                ? _instance.deleteOneRiderAddress
                : (deleteOneRiderAddress
                    as Mutation$DeleteFavoriteLocation$deleteOneRiderAddress),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$DeleteFavoriteLocation$deleteOneRiderAddress<TRes>
      get deleteOneRiderAddress {
    final local$deleteOneRiderAddress = _instance.deleteOneRiderAddress;
    return CopyWith$Mutation$DeleteFavoriteLocation$deleteOneRiderAddress(
        local$deleteOneRiderAddress, (e) => call(deleteOneRiderAddress: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteFavoriteLocation<TRes>
    implements CopyWith$Mutation$DeleteFavoriteLocation<TRes> {
  _CopyWithStubImpl$Mutation$DeleteFavoriteLocation(this._res);

  TRes _res;

  call({
    Mutation$DeleteFavoriteLocation$deleteOneRiderAddress?
        deleteOneRiderAddress,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$DeleteFavoriteLocation$deleteOneRiderAddress<TRes>
      get deleteOneRiderAddress =>
          CopyWith$Mutation$DeleteFavoriteLocation$deleteOneRiderAddress.stub(
              _res);
}

const documentNodeMutationDeleteFavoriteLocation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteFavoriteLocation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'DeleteOneRiderAddressInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deleteOneRiderAddress'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
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
Mutation$DeleteFavoriteLocation _parserFn$Mutation$DeleteFavoriteLocation(
        Map<String, dynamic> data) =>
    Mutation$DeleteFavoriteLocation.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteFavoriteLocation = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$DeleteFavoriteLocation?,
);

class Options$Mutation$DeleteFavoriteLocation
    extends graphql.MutationOptions<Mutation$DeleteFavoriteLocation> {
  Options$Mutation$DeleteFavoriteLocation({
    String? operationName,
    required Variables$Mutation$DeleteFavoriteLocation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteFavoriteLocation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteFavoriteLocation? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteFavoriteLocation>? update,
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
                        : _parserFn$Mutation$DeleteFavoriteLocation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteFavoriteLocation,
          parserFn: _parserFn$Mutation$DeleteFavoriteLocation,
        );

  final OnMutationCompleted$Mutation$DeleteFavoriteLocation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteFavoriteLocation
    extends graphql.WatchQueryOptions<Mutation$DeleteFavoriteLocation> {
  WatchOptions$Mutation$DeleteFavoriteLocation({
    String? operationName,
    required Variables$Mutation$DeleteFavoriteLocation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteFavoriteLocation? typedOptimisticResult,
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
          document: documentNodeMutationDeleteFavoriteLocation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteFavoriteLocation,
        );
}

extension ClientExtension$Mutation$DeleteFavoriteLocation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteFavoriteLocation>>
      mutate$DeleteFavoriteLocation(
              Options$Mutation$DeleteFavoriteLocation options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$DeleteFavoriteLocation>
      watchMutation$DeleteFavoriteLocation(
              WatchOptions$Mutation$DeleteFavoriteLocation options) =>
          this.watchMutation(options);
}

class Mutation$DeleteFavoriteLocation$deleteOneRiderAddress {
  Mutation$DeleteFavoriteLocation$deleteOneRiderAddress({
    this.id,
    this.$__typename = 'RiderAddressDeleteResponse',
  });

  factory Mutation$DeleteFavoriteLocation$deleteOneRiderAddress.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteFavoriteLocation$deleteOneRiderAddress(
      id: (l$id as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

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
    if (other is! Mutation$DeleteFavoriteLocation$deleteOneRiderAddress ||
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

extension UtilityExtension$Mutation$DeleteFavoriteLocation$deleteOneRiderAddress
    on Mutation$DeleteFavoriteLocation$deleteOneRiderAddress {
  CopyWith$Mutation$DeleteFavoriteLocation$deleteOneRiderAddress<
          Mutation$DeleteFavoriteLocation$deleteOneRiderAddress>
      get copyWith =>
          CopyWith$Mutation$DeleteFavoriteLocation$deleteOneRiderAddress(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteFavoriteLocation$deleteOneRiderAddress<
    TRes> {
  factory CopyWith$Mutation$DeleteFavoriteLocation$deleteOneRiderAddress(
    Mutation$DeleteFavoriteLocation$deleteOneRiderAddress instance,
    TRes Function(Mutation$DeleteFavoriteLocation$deleteOneRiderAddress) then,
  ) = _CopyWithImpl$Mutation$DeleteFavoriteLocation$deleteOneRiderAddress;

  factory CopyWith$Mutation$DeleteFavoriteLocation$deleteOneRiderAddress.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$DeleteFavoriteLocation$deleteOneRiderAddress;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteFavoriteLocation$deleteOneRiderAddress<TRes>
    implements
        CopyWith$Mutation$DeleteFavoriteLocation$deleteOneRiderAddress<TRes> {
  _CopyWithImpl$Mutation$DeleteFavoriteLocation$deleteOneRiderAddress(
    this._instance,
    this._then,
  );

  final Mutation$DeleteFavoriteLocation$deleteOneRiderAddress _instance;

  final TRes Function(Mutation$DeleteFavoriteLocation$deleteOneRiderAddress)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteFavoriteLocation$deleteOneRiderAddress(
        id: id == _undefined ? _instance.id : (id as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteFavoriteLocation$deleteOneRiderAddress<
        TRes>
    implements
        CopyWith$Mutation$DeleteFavoriteLocation$deleteOneRiderAddress<TRes> {
  _CopyWithStubImpl$Mutation$DeleteFavoriteLocation$deleteOneRiderAddress(
      this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}
