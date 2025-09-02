import '../fragments/login.fragment.graphql.dart';
import '../fragments/media.fragment.graphql.dart';
import '../fragments/profile.fragment.graphql.dart';
import '../schema.gql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Mutation$VerifyNumber {
  factory Variables$Mutation$VerifyNumber({
    required String number,
    required String countryIso,
  }) =>
      Variables$Mutation$VerifyNumber._({
        r'number': number,
        r'countryIso': countryIso,
      });

  Variables$Mutation$VerifyNumber._(this._$data);

  factory Variables$Mutation$VerifyNumber.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$number = data['number'];
    result$data['number'] = (l$number as String);
    final l$countryIso = data['countryIso'];
    result$data['countryIso'] = (l$countryIso as String);
    return Variables$Mutation$VerifyNumber._(result$data);
  }

  Map<String, dynamic> _$data;

  String get number => (_$data['number'] as String);

  String get countryIso => (_$data['countryIso'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$number = number;
    result$data['number'] = l$number;
    final l$countryIso = countryIso;
    result$data['countryIso'] = l$countryIso;
    return result$data;
  }

  CopyWith$Variables$Mutation$VerifyNumber<Variables$Mutation$VerifyNumber>
      get copyWith => CopyWith$Variables$Mutation$VerifyNumber(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$VerifyNumber ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$number = number;
    final lOther$number = other.number;
    if (l$number != lOther$number) {
      return false;
    }
    final l$countryIso = countryIso;
    final lOther$countryIso = other.countryIso;
    if (l$countryIso != lOther$countryIso) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$number = number;
    final l$countryIso = countryIso;
    return Object.hashAll([
      l$number,
      l$countryIso,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$VerifyNumber<TRes> {
  factory CopyWith$Variables$Mutation$VerifyNumber(
    Variables$Mutation$VerifyNumber instance,
    TRes Function(Variables$Mutation$VerifyNumber) then,
  ) = _CopyWithImpl$Variables$Mutation$VerifyNumber;

  factory CopyWith$Variables$Mutation$VerifyNumber.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$VerifyNumber;

  TRes call({
    String? number,
    String? countryIso,
  });
}

class _CopyWithImpl$Variables$Mutation$VerifyNumber<TRes>
    implements CopyWith$Variables$Mutation$VerifyNumber<TRes> {
  _CopyWithImpl$Variables$Mutation$VerifyNumber(
    this._instance,
    this._then,
  );

  final Variables$Mutation$VerifyNumber _instance;

  final TRes Function(Variables$Mutation$VerifyNumber) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? number = _undefined,
    Object? countryIso = _undefined,
  }) =>
      _then(Variables$Mutation$VerifyNumber._({
        ..._instance._$data,
        if (number != _undefined && number != null)
          'number': (number as String),
        if (countryIso != _undefined && countryIso != null)
          'countryIso': (countryIso as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$VerifyNumber<TRes>
    implements CopyWith$Variables$Mutation$VerifyNumber<TRes> {
  _CopyWithStubImpl$Variables$Mutation$VerifyNumber(this._res);

  TRes _res;

  call({
    String? number,
    String? countryIso,
  }) =>
      _res;
}

class Mutation$VerifyNumber {
  Mutation$VerifyNumber({
    required this.verifyNumber,
    this.$__typename = 'Mutation',
  });

  factory Mutation$VerifyNumber.fromJson(Map<String, dynamic> json) {
    final l$verifyNumber = json['verifyNumber'];
    final l$$__typename = json['__typename'];
    return Mutation$VerifyNumber(
      verifyNumber: Fragment$VerifyNumberFragment.fromJson(
          (l$verifyNumber as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$VerifyNumberFragment verifyNumber;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$verifyNumber = verifyNumber;
    _resultData['verifyNumber'] = l$verifyNumber.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$verifyNumber = verifyNumber;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$verifyNumber,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$VerifyNumber || runtimeType != other.runtimeType) {
      return false;
    }
    final l$verifyNumber = verifyNumber;
    final lOther$verifyNumber = other.verifyNumber;
    if (l$verifyNumber != lOther$verifyNumber) {
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

extension UtilityExtension$Mutation$VerifyNumber on Mutation$VerifyNumber {
  CopyWith$Mutation$VerifyNumber<Mutation$VerifyNumber> get copyWith =>
      CopyWith$Mutation$VerifyNumber(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$VerifyNumber<TRes> {
  factory CopyWith$Mutation$VerifyNumber(
    Mutation$VerifyNumber instance,
    TRes Function(Mutation$VerifyNumber) then,
  ) = _CopyWithImpl$Mutation$VerifyNumber;

  factory CopyWith$Mutation$VerifyNumber.stub(TRes res) =
      _CopyWithStubImpl$Mutation$VerifyNumber;

  TRes call({
    Fragment$VerifyNumberFragment? verifyNumber,
    String? $__typename,
  });
  CopyWith$Fragment$VerifyNumberFragment<TRes> get verifyNumber;
}

class _CopyWithImpl$Mutation$VerifyNumber<TRes>
    implements CopyWith$Mutation$VerifyNumber<TRes> {
  _CopyWithImpl$Mutation$VerifyNumber(
    this._instance,
    this._then,
  );

  final Mutation$VerifyNumber _instance;

  final TRes Function(Mutation$VerifyNumber) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? verifyNumber = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$VerifyNumber(
        verifyNumber: verifyNumber == _undefined || verifyNumber == null
            ? _instance.verifyNumber
            : (verifyNumber as Fragment$VerifyNumberFragment),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$VerifyNumberFragment<TRes> get verifyNumber {
    final local$verifyNumber = _instance.verifyNumber;
    return CopyWith$Fragment$VerifyNumberFragment(
        local$verifyNumber, (e) => call(verifyNumber: e));
  }
}

class _CopyWithStubImpl$Mutation$VerifyNumber<TRes>
    implements CopyWith$Mutation$VerifyNumber<TRes> {
  _CopyWithStubImpl$Mutation$VerifyNumber(this._res);

  TRes _res;

  call({
    Fragment$VerifyNumberFragment? verifyNumber,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$VerifyNumberFragment<TRes> get verifyNumber =>
      CopyWith$Fragment$VerifyNumberFragment.stub(_res);
}

const documentNodeMutationVerifyNumber = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'VerifyNumber'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'number')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'countryIso')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'verifyNumber'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'mobileNumber'),
            value: VariableNode(name: NameNode(value: 'number')),
          ),
          ArgumentNode(
            name: NameNode(value: 'countryIso'),
            value: VariableNode(name: NameNode(value: 'countryIso')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'VerifyNumberFragment'),
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
  fragmentDefinitionVerifyNumberFragment,
]);
Mutation$VerifyNumber _parserFn$Mutation$VerifyNumber(
        Map<String, dynamic> data) =>
    Mutation$VerifyNumber.fromJson(data);
typedef OnMutationCompleted$Mutation$VerifyNumber = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$VerifyNumber?,
);

class Options$Mutation$VerifyNumber
    extends graphql.MutationOptions<Mutation$VerifyNumber> {
  Options$Mutation$VerifyNumber({
    String? operationName,
    required Variables$Mutation$VerifyNumber variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$VerifyNumber? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$VerifyNumber? onCompleted,
    graphql.OnMutationUpdate<Mutation$VerifyNumber>? update,
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
                    data == null ? null : _parserFn$Mutation$VerifyNumber(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationVerifyNumber,
          parserFn: _parserFn$Mutation$VerifyNumber,
        );

  final OnMutationCompleted$Mutation$VerifyNumber? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$VerifyNumber
    extends graphql.WatchQueryOptions<Mutation$VerifyNumber> {
  WatchOptions$Mutation$VerifyNumber({
    String? operationName,
    required Variables$Mutation$VerifyNumber variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$VerifyNumber? typedOptimisticResult,
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
          document: documentNodeMutationVerifyNumber,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$VerifyNumber,
        );
}

extension ClientExtension$Mutation$VerifyNumber on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$VerifyNumber>> mutate$VerifyNumber(
          Options$Mutation$VerifyNumber options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$VerifyNumber> watchMutation$VerifyNumber(
          WatchOptions$Mutation$VerifyNumber options) =>
      this.watchMutation(options);
}

class Variables$Mutation$VerifyOtp {
  factory Variables$Mutation$VerifyOtp({
    required String hash,
    required String code,
  }) =>
      Variables$Mutation$VerifyOtp._({
        r'hash': hash,
        r'code': code,
      });

  Variables$Mutation$VerifyOtp._(this._$data);

  factory Variables$Mutation$VerifyOtp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$hash = data['hash'];
    result$data['hash'] = (l$hash as String);
    final l$code = data['code'];
    result$data['code'] = (l$code as String);
    return Variables$Mutation$VerifyOtp._(result$data);
  }

  Map<String, dynamic> _$data;

  String get hash => (_$data['hash'] as String);

  String get code => (_$data['code'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$hash = hash;
    result$data['hash'] = l$hash;
    final l$code = code;
    result$data['code'] = l$code;
    return result$data;
  }

  CopyWith$Variables$Mutation$VerifyOtp<Variables$Mutation$VerifyOtp>
      get copyWith => CopyWith$Variables$Mutation$VerifyOtp(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$VerifyOtp ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hash = hash;
    final lOther$hash = other.hash;
    if (l$hash != lOther$hash) {
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
    final l$hash = hash;
    final l$code = code;
    return Object.hashAll([
      l$hash,
      l$code,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$VerifyOtp<TRes> {
  factory CopyWith$Variables$Mutation$VerifyOtp(
    Variables$Mutation$VerifyOtp instance,
    TRes Function(Variables$Mutation$VerifyOtp) then,
  ) = _CopyWithImpl$Variables$Mutation$VerifyOtp;

  factory CopyWith$Variables$Mutation$VerifyOtp.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$VerifyOtp;

  TRes call({
    String? hash,
    String? code,
  });
}

class _CopyWithImpl$Variables$Mutation$VerifyOtp<TRes>
    implements CopyWith$Variables$Mutation$VerifyOtp<TRes> {
  _CopyWithImpl$Variables$Mutation$VerifyOtp(
    this._instance,
    this._then,
  );

  final Variables$Mutation$VerifyOtp _instance;

  final TRes Function(Variables$Mutation$VerifyOtp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hash = _undefined,
    Object? code = _undefined,
  }) =>
      _then(Variables$Mutation$VerifyOtp._({
        ..._instance._$data,
        if (hash != _undefined && hash != null) 'hash': (hash as String),
        if (code != _undefined && code != null) 'code': (code as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$VerifyOtp<TRes>
    implements CopyWith$Variables$Mutation$VerifyOtp<TRes> {
  _CopyWithStubImpl$Variables$Mutation$VerifyOtp(this._res);

  TRes _res;

  call({
    String? hash,
    String? code,
  }) =>
      _res;
}

class Mutation$VerifyOtp {
  Mutation$VerifyOtp({
    required this.verifyOtp,
    this.$__typename = 'Mutation',
  });

  factory Mutation$VerifyOtp.fromJson(Map<String, dynamic> json) {
    final l$verifyOtp = json['verifyOtp'];
    final l$$__typename = json['__typename'];
    return Mutation$VerifyOtp(
      verifyOtp: Fragment$VerifyOtpOrPasswordFragment.fromJson(
          (l$verifyOtp as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$VerifyOtpOrPasswordFragment verifyOtp;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$verifyOtp = verifyOtp;
    _resultData['verifyOtp'] = l$verifyOtp.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$verifyOtp = verifyOtp;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$verifyOtp,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$VerifyOtp || runtimeType != other.runtimeType) {
      return false;
    }
    final l$verifyOtp = verifyOtp;
    final lOther$verifyOtp = other.verifyOtp;
    if (l$verifyOtp != lOther$verifyOtp) {
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

extension UtilityExtension$Mutation$VerifyOtp on Mutation$VerifyOtp {
  CopyWith$Mutation$VerifyOtp<Mutation$VerifyOtp> get copyWith =>
      CopyWith$Mutation$VerifyOtp(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$VerifyOtp<TRes> {
  factory CopyWith$Mutation$VerifyOtp(
    Mutation$VerifyOtp instance,
    TRes Function(Mutation$VerifyOtp) then,
  ) = _CopyWithImpl$Mutation$VerifyOtp;

  factory CopyWith$Mutation$VerifyOtp.stub(TRes res) =
      _CopyWithStubImpl$Mutation$VerifyOtp;

  TRes call({
    Fragment$VerifyOtpOrPasswordFragment? verifyOtp,
    String? $__typename,
  });
  CopyWith$Fragment$VerifyOtpOrPasswordFragment<TRes> get verifyOtp;
}

class _CopyWithImpl$Mutation$VerifyOtp<TRes>
    implements CopyWith$Mutation$VerifyOtp<TRes> {
  _CopyWithImpl$Mutation$VerifyOtp(
    this._instance,
    this._then,
  );

  final Mutation$VerifyOtp _instance;

  final TRes Function(Mutation$VerifyOtp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? verifyOtp = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$VerifyOtp(
        verifyOtp: verifyOtp == _undefined || verifyOtp == null
            ? _instance.verifyOtp
            : (verifyOtp as Fragment$VerifyOtpOrPasswordFragment),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$VerifyOtpOrPasswordFragment<TRes> get verifyOtp {
    final local$verifyOtp = _instance.verifyOtp;
    return CopyWith$Fragment$VerifyOtpOrPasswordFragment(
        local$verifyOtp, (e) => call(verifyOtp: e));
  }
}

class _CopyWithStubImpl$Mutation$VerifyOtp<TRes>
    implements CopyWith$Mutation$VerifyOtp<TRes> {
  _CopyWithStubImpl$Mutation$VerifyOtp(this._res);

  TRes _res;

  call({
    Fragment$VerifyOtpOrPasswordFragment? verifyOtp,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$VerifyOtpOrPasswordFragment<TRes> get verifyOtp =>
      CopyWith$Fragment$VerifyOtpOrPasswordFragment.stub(_res);
}

const documentNodeMutationVerifyOtp = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'VerifyOtp'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'hash')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'code')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'verifyOtp'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'hash'),
            value: VariableNode(name: NameNode(value: 'hash')),
          ),
          ArgumentNode(
            name: NameNode(value: 'code'),
            value: VariableNode(name: NameNode(value: 'code')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'VerifyOtpOrPasswordFragment'),
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
  fragmentDefinitionVerifyOtpOrPasswordFragment,
  fragmentDefinitionProfileFragment,
  fragmentDefinitionMediaFragment,
]);
Mutation$VerifyOtp _parserFn$Mutation$VerifyOtp(Map<String, dynamic> data) =>
    Mutation$VerifyOtp.fromJson(data);
typedef OnMutationCompleted$Mutation$VerifyOtp = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$VerifyOtp?,
);

class Options$Mutation$VerifyOtp
    extends graphql.MutationOptions<Mutation$VerifyOtp> {
  Options$Mutation$VerifyOtp({
    String? operationName,
    required Variables$Mutation$VerifyOtp variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$VerifyOtp? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$VerifyOtp? onCompleted,
    graphql.OnMutationUpdate<Mutation$VerifyOtp>? update,
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
                    data == null ? null : _parserFn$Mutation$VerifyOtp(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationVerifyOtp,
          parserFn: _parserFn$Mutation$VerifyOtp,
        );

  final OnMutationCompleted$Mutation$VerifyOtp? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$VerifyOtp
    extends graphql.WatchQueryOptions<Mutation$VerifyOtp> {
  WatchOptions$Mutation$VerifyOtp({
    String? operationName,
    required Variables$Mutation$VerifyOtp variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$VerifyOtp? typedOptimisticResult,
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
          document: documentNodeMutationVerifyOtp,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$VerifyOtp,
        );
}

extension ClientExtension$Mutation$VerifyOtp on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$VerifyOtp>> mutate$VerifyOtp(
          Options$Mutation$VerifyOtp options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$VerifyOtp> watchMutation$VerifyOtp(
          WatchOptions$Mutation$VerifyOtp options) =>
      this.watchMutation(options);
}

class Variables$Mutation$VerifyPassword {
  factory Variables$Mutation$VerifyPassword({
    required String mobileNumber,
    required String password,
  }) =>
      Variables$Mutation$VerifyPassword._({
        r'mobileNumber': mobileNumber,
        r'password': password,
      });

  Variables$Mutation$VerifyPassword._(this._$data);

  factory Variables$Mutation$VerifyPassword.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$mobileNumber = data['mobileNumber'];
    result$data['mobileNumber'] = (l$mobileNumber as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    return Variables$Mutation$VerifyPassword._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mobileNumber => (_$data['mobileNumber'] as String);

  String get password => (_$data['password'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mobileNumber = mobileNumber;
    result$data['mobileNumber'] = l$mobileNumber;
    final l$password = password;
    result$data['password'] = l$password;
    return result$data;
  }

  CopyWith$Variables$Mutation$VerifyPassword<Variables$Mutation$VerifyPassword>
      get copyWith => CopyWith$Variables$Mutation$VerifyPassword(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$VerifyPassword ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mobileNumber = mobileNumber;
    final lOther$mobileNumber = other.mobileNumber;
    if (l$mobileNumber != lOther$mobileNumber) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$mobileNumber = mobileNumber;
    final l$password = password;
    return Object.hashAll([
      l$mobileNumber,
      l$password,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$VerifyPassword<TRes> {
  factory CopyWith$Variables$Mutation$VerifyPassword(
    Variables$Mutation$VerifyPassword instance,
    TRes Function(Variables$Mutation$VerifyPassword) then,
  ) = _CopyWithImpl$Variables$Mutation$VerifyPassword;

  factory CopyWith$Variables$Mutation$VerifyPassword.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$VerifyPassword;

  TRes call({
    String? mobileNumber,
    String? password,
  });
}

class _CopyWithImpl$Variables$Mutation$VerifyPassword<TRes>
    implements CopyWith$Variables$Mutation$VerifyPassword<TRes> {
  _CopyWithImpl$Variables$Mutation$VerifyPassword(
    this._instance,
    this._then,
  );

  final Variables$Mutation$VerifyPassword _instance;

  final TRes Function(Variables$Mutation$VerifyPassword) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mobileNumber = _undefined,
    Object? password = _undefined,
  }) =>
      _then(Variables$Mutation$VerifyPassword._({
        ..._instance._$data,
        if (mobileNumber != _undefined && mobileNumber != null)
          'mobileNumber': (mobileNumber as String),
        if (password != _undefined && password != null)
          'password': (password as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$VerifyPassword<TRes>
    implements CopyWith$Variables$Mutation$VerifyPassword<TRes> {
  _CopyWithStubImpl$Variables$Mutation$VerifyPassword(this._res);

  TRes _res;

  call({
    String? mobileNumber,
    String? password,
  }) =>
      _res;
}

class Mutation$VerifyPassword {
  Mutation$VerifyPassword({
    required this.verifyPassword,
    this.$__typename = 'Mutation',
  });

  factory Mutation$VerifyPassword.fromJson(Map<String, dynamic> json) {
    final l$verifyPassword = json['verifyPassword'];
    final l$$__typename = json['__typename'];
    return Mutation$VerifyPassword(
      verifyPassword: Fragment$VerifyOtpOrPasswordFragment.fromJson(
          (l$verifyPassword as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$VerifyOtpOrPasswordFragment verifyPassword;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$verifyPassword = verifyPassword;
    _resultData['verifyPassword'] = l$verifyPassword.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$verifyPassword = verifyPassword;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$verifyPassword,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$VerifyPassword || runtimeType != other.runtimeType) {
      return false;
    }
    final l$verifyPassword = verifyPassword;
    final lOther$verifyPassword = other.verifyPassword;
    if (l$verifyPassword != lOther$verifyPassword) {
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

extension UtilityExtension$Mutation$VerifyPassword on Mutation$VerifyPassword {
  CopyWith$Mutation$VerifyPassword<Mutation$VerifyPassword> get copyWith =>
      CopyWith$Mutation$VerifyPassword(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$VerifyPassword<TRes> {
  factory CopyWith$Mutation$VerifyPassword(
    Mutation$VerifyPassword instance,
    TRes Function(Mutation$VerifyPassword) then,
  ) = _CopyWithImpl$Mutation$VerifyPassword;

  factory CopyWith$Mutation$VerifyPassword.stub(TRes res) =
      _CopyWithStubImpl$Mutation$VerifyPassword;

  TRes call({
    Fragment$VerifyOtpOrPasswordFragment? verifyPassword,
    String? $__typename,
  });
  CopyWith$Fragment$VerifyOtpOrPasswordFragment<TRes> get verifyPassword;
}

class _CopyWithImpl$Mutation$VerifyPassword<TRes>
    implements CopyWith$Mutation$VerifyPassword<TRes> {
  _CopyWithImpl$Mutation$VerifyPassword(
    this._instance,
    this._then,
  );

  final Mutation$VerifyPassword _instance;

  final TRes Function(Mutation$VerifyPassword) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? verifyPassword = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$VerifyPassword(
        verifyPassword: verifyPassword == _undefined || verifyPassword == null
            ? _instance.verifyPassword
            : (verifyPassword as Fragment$VerifyOtpOrPasswordFragment),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$VerifyOtpOrPasswordFragment<TRes> get verifyPassword {
    final local$verifyPassword = _instance.verifyPassword;
    return CopyWith$Fragment$VerifyOtpOrPasswordFragment(
        local$verifyPassword, (e) => call(verifyPassword: e));
  }
}

class _CopyWithStubImpl$Mutation$VerifyPassword<TRes>
    implements CopyWith$Mutation$VerifyPassword<TRes> {
  _CopyWithStubImpl$Mutation$VerifyPassword(this._res);

  TRes _res;

  call({
    Fragment$VerifyOtpOrPasswordFragment? verifyPassword,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$VerifyOtpOrPasswordFragment<TRes> get verifyPassword =>
      CopyWith$Fragment$VerifyOtpOrPasswordFragment.stub(_res);
}

const documentNodeMutationVerifyPassword = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'VerifyPassword'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'mobileNumber')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'password')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'verifyPassword'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'mobileNumber'),
            value: VariableNode(name: NameNode(value: 'mobileNumber')),
          ),
          ArgumentNode(
            name: NameNode(value: 'password'),
            value: VariableNode(name: NameNode(value: 'password')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'VerifyOtpOrPasswordFragment'),
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
  fragmentDefinitionVerifyOtpOrPasswordFragment,
  fragmentDefinitionProfileFragment,
  fragmentDefinitionMediaFragment,
]);
Mutation$VerifyPassword _parserFn$Mutation$VerifyPassword(
        Map<String, dynamic> data) =>
    Mutation$VerifyPassword.fromJson(data);
typedef OnMutationCompleted$Mutation$VerifyPassword = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$VerifyPassword?,
);

class Options$Mutation$VerifyPassword
    extends graphql.MutationOptions<Mutation$VerifyPassword> {
  Options$Mutation$VerifyPassword({
    String? operationName,
    required Variables$Mutation$VerifyPassword variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$VerifyPassword? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$VerifyPassword? onCompleted,
    graphql.OnMutationUpdate<Mutation$VerifyPassword>? update,
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
                        : _parserFn$Mutation$VerifyPassword(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationVerifyPassword,
          parserFn: _parserFn$Mutation$VerifyPassword,
        );

  final OnMutationCompleted$Mutation$VerifyPassword? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$VerifyPassword
    extends graphql.WatchQueryOptions<Mutation$VerifyPassword> {
  WatchOptions$Mutation$VerifyPassword({
    String? operationName,
    required Variables$Mutation$VerifyPassword variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$VerifyPassword? typedOptimisticResult,
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
          document: documentNodeMutationVerifyPassword,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$VerifyPassword,
        );
}

extension ClientExtension$Mutation$VerifyPassword on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$VerifyPassword>> mutate$VerifyPassword(
          Options$Mutation$VerifyPassword options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$VerifyPassword> watchMutation$VerifyPassword(
          WatchOptions$Mutation$VerifyPassword options) =>
      this.watchMutation(options);
}

class Variables$Mutation$SetName {
  factory Variables$Mutation$SetName({
    required String firstName,
    required String lastName,
    String? email,
    Enum$Gender? gender,
  }) =>
      Variables$Mutation$SetName._({
        r'firstName': firstName,
        r'lastName': lastName,
        if (email != null) r'email': email,
        if (gender != null) r'gender': gender,
      });

  Variables$Mutation$SetName._(this._$data);

  factory Variables$Mutation$SetName.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$firstName = data['firstName'];
    result$data['firstName'] = (l$firstName as String);
    final l$lastName = data['lastName'];
    result$data['lastName'] = (l$lastName as String);
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    if (data.containsKey('gender')) {
      final l$gender = data['gender'];
      result$data['gender'] =
          l$gender == null ? null : fromJson$Enum$Gender((l$gender as String));
    }
    return Variables$Mutation$SetName._(result$data);
  }

  Map<String, dynamic> _$data;

  String get firstName => (_$data['firstName'] as String);

  String get lastName => (_$data['lastName'] as String);

  String? get email => (_$data['email'] as String?);

  Enum$Gender? get gender => (_$data['gender'] as Enum$Gender?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$firstName = firstName;
    result$data['firstName'] = l$firstName;
    final l$lastName = lastName;
    result$data['lastName'] = l$lastName;
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    if (_$data.containsKey('gender')) {
      final l$gender = gender;
      result$data['gender'] =
          l$gender == null ? null : toJson$Enum$Gender(l$gender);
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$SetName<Variables$Mutation$SetName>
      get copyWith => CopyWith$Variables$Mutation$SetName(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$SetName ||
        runtimeType != other.runtimeType) {
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
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (_$data.containsKey('gender') != other._$data.containsKey('gender')) {
      return false;
    }
    if (l$gender != lOther$gender) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$email = email;
    final l$gender = gender;
    return Object.hashAll([
      l$firstName,
      l$lastName,
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('gender') ? l$gender : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$SetName<TRes> {
  factory CopyWith$Variables$Mutation$SetName(
    Variables$Mutation$SetName instance,
    TRes Function(Variables$Mutation$SetName) then,
  ) = _CopyWithImpl$Variables$Mutation$SetName;

  factory CopyWith$Variables$Mutation$SetName.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SetName;

  TRes call({
    String? firstName,
    String? lastName,
    String? email,
    Enum$Gender? gender,
  });
}

class _CopyWithImpl$Variables$Mutation$SetName<TRes>
    implements CopyWith$Variables$Mutation$SetName<TRes> {
  _CopyWithImpl$Variables$Mutation$SetName(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SetName _instance;

  final TRes Function(Variables$Mutation$SetName) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? email = _undefined,
    Object? gender = _undefined,
  }) =>
      _then(Variables$Mutation$SetName._({
        ..._instance._$data,
        if (firstName != _undefined && firstName != null)
          'firstName': (firstName as String),
        if (lastName != _undefined && lastName != null)
          'lastName': (lastName as String),
        if (email != _undefined) 'email': (email as String?),
        if (gender != _undefined) 'gender': (gender as Enum$Gender?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SetName<TRes>
    implements CopyWith$Variables$Mutation$SetName<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SetName(this._res);

  TRes _res;

  call({
    String? firstName,
    String? lastName,
    String? email,
    Enum$Gender? gender,
  }) =>
      _res;
}

class Mutation$SetName {
  Mutation$SetName({
    required this.updateOneRider,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SetName.fromJson(Map<String, dynamic> json) {
    final l$updateOneRider = json['updateOneRider'];
    final l$$__typename = json['__typename'];
    return Mutation$SetName(
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
    if (other is! Mutation$SetName || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$SetName on Mutation$SetName {
  CopyWith$Mutation$SetName<Mutation$SetName> get copyWith =>
      CopyWith$Mutation$SetName(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SetName<TRes> {
  factory CopyWith$Mutation$SetName(
    Mutation$SetName instance,
    TRes Function(Mutation$SetName) then,
  ) = _CopyWithImpl$Mutation$SetName;

  factory CopyWith$Mutation$SetName.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SetName;

  TRes call({
    Fragment$ProfileFragment? updateOneRider,
    String? $__typename,
  });
  CopyWith$Fragment$ProfileFragment<TRes> get updateOneRider;
}

class _CopyWithImpl$Mutation$SetName<TRes>
    implements CopyWith$Mutation$SetName<TRes> {
  _CopyWithImpl$Mutation$SetName(
    this._instance,
    this._then,
  );

  final Mutation$SetName _instance;

  final TRes Function(Mutation$SetName) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateOneRider = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SetName(
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

class _CopyWithStubImpl$Mutation$SetName<TRes>
    implements CopyWith$Mutation$SetName<TRes> {
  _CopyWithStubImpl$Mutation$SetName(this._res);

  TRes _res;

  call({
    Fragment$ProfileFragment? updateOneRider,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ProfileFragment<TRes> get updateOneRider =>
      CopyWith$Fragment$ProfileFragment.stub(_res);
}

const documentNodeMutationSetName = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SetName'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'firstName')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'lastName')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'email')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'gender')),
        type: NamedTypeNode(
          name: NameNode(value: 'Gender'),
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
                    name: NameNode(value: 'firstName'),
                    value: VariableNode(name: NameNode(value: 'firstName')),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'lastName'),
                    value: VariableNode(name: NameNode(value: 'lastName')),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'email'),
                    value: VariableNode(name: NameNode(value: 'email')),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'gender'),
                    value: VariableNode(name: NameNode(value: 'gender')),
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
Mutation$SetName _parserFn$Mutation$SetName(Map<String, dynamic> data) =>
    Mutation$SetName.fromJson(data);
typedef OnMutationCompleted$Mutation$SetName = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$SetName?,
);

class Options$Mutation$SetName
    extends graphql.MutationOptions<Mutation$SetName> {
  Options$Mutation$SetName({
    String? operationName,
    required Variables$Mutation$SetName variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SetName? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SetName? onCompleted,
    graphql.OnMutationUpdate<Mutation$SetName>? update,
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
                    data == null ? null : _parserFn$Mutation$SetName(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSetName,
          parserFn: _parserFn$Mutation$SetName,
        );

  final OnMutationCompleted$Mutation$SetName? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$SetName
    extends graphql.WatchQueryOptions<Mutation$SetName> {
  WatchOptions$Mutation$SetName({
    String? operationName,
    required Variables$Mutation$SetName variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SetName? typedOptimisticResult,
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
          document: documentNodeMutationSetName,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$SetName,
        );
}

extension ClientExtension$Mutation$SetName on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SetName>> mutate$SetName(
          Options$Mutation$SetName options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$SetName> watchMutation$SetName(
          WatchOptions$Mutation$SetName options) =>
      this.watchMutation(options);
}

class Variables$Mutation$SetPassword {
  factory Variables$Mutation$SetPassword({required String password}) =>
      Variables$Mutation$SetPassword._({
        r'password': password,
      });

  Variables$Mutation$SetPassword._(this._$data);

  factory Variables$Mutation$SetPassword.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    return Variables$Mutation$SetPassword._(result$data);
  }

  Map<String, dynamic> _$data;

  String get password => (_$data['password'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$password = password;
    result$data['password'] = l$password;
    return result$data;
  }

  CopyWith$Variables$Mutation$SetPassword<Variables$Mutation$SetPassword>
      get copyWith => CopyWith$Variables$Mutation$SetPassword(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$SetPassword ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$password = password;
    return Object.hashAll([l$password]);
  }
}

abstract class CopyWith$Variables$Mutation$SetPassword<TRes> {
  factory CopyWith$Variables$Mutation$SetPassword(
    Variables$Mutation$SetPassword instance,
    TRes Function(Variables$Mutation$SetPassword) then,
  ) = _CopyWithImpl$Variables$Mutation$SetPassword;

  factory CopyWith$Variables$Mutation$SetPassword.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SetPassword;

  TRes call({String? password});
}

class _CopyWithImpl$Variables$Mutation$SetPassword<TRes>
    implements CopyWith$Variables$Mutation$SetPassword<TRes> {
  _CopyWithImpl$Variables$Mutation$SetPassword(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SetPassword _instance;

  final TRes Function(Variables$Mutation$SetPassword) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? password = _undefined}) =>
      _then(Variables$Mutation$SetPassword._({
        ..._instance._$data,
        if (password != _undefined && password != null)
          'password': (password as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SetPassword<TRes>
    implements CopyWith$Variables$Mutation$SetPassword<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SetPassword(this._res);

  TRes _res;

  call({String? password}) => _res;
}

class Mutation$SetPassword {
  Mutation$SetPassword({
    required this.setPassword,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SetPassword.fromJson(Map<String, dynamic> json) {
    final l$setPassword = json['setPassword'];
    final l$$__typename = json['__typename'];
    return Mutation$SetPassword(
      setPassword: Fragment$VerifyOtpOrPasswordFragment.fromJson(
          (l$setPassword as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$VerifyOtpOrPasswordFragment setPassword;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$setPassword = setPassword;
    _resultData['setPassword'] = l$setPassword.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$setPassword = setPassword;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$setPassword,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SetPassword || runtimeType != other.runtimeType) {
      return false;
    }
    final l$setPassword = setPassword;
    final lOther$setPassword = other.setPassword;
    if (l$setPassword != lOther$setPassword) {
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

extension UtilityExtension$Mutation$SetPassword on Mutation$SetPassword {
  CopyWith$Mutation$SetPassword<Mutation$SetPassword> get copyWith =>
      CopyWith$Mutation$SetPassword(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SetPassword<TRes> {
  factory CopyWith$Mutation$SetPassword(
    Mutation$SetPassword instance,
    TRes Function(Mutation$SetPassword) then,
  ) = _CopyWithImpl$Mutation$SetPassword;

  factory CopyWith$Mutation$SetPassword.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SetPassword;

  TRes call({
    Fragment$VerifyOtpOrPasswordFragment? setPassword,
    String? $__typename,
  });
  CopyWith$Fragment$VerifyOtpOrPasswordFragment<TRes> get setPassword;
}

class _CopyWithImpl$Mutation$SetPassword<TRes>
    implements CopyWith$Mutation$SetPassword<TRes> {
  _CopyWithImpl$Mutation$SetPassword(
    this._instance,
    this._then,
  );

  final Mutation$SetPassword _instance;

  final TRes Function(Mutation$SetPassword) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? setPassword = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SetPassword(
        setPassword: setPassword == _undefined || setPassword == null
            ? _instance.setPassword
            : (setPassword as Fragment$VerifyOtpOrPasswordFragment),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$VerifyOtpOrPasswordFragment<TRes> get setPassword {
    final local$setPassword = _instance.setPassword;
    return CopyWith$Fragment$VerifyOtpOrPasswordFragment(
        local$setPassword, (e) => call(setPassword: e));
  }
}

class _CopyWithStubImpl$Mutation$SetPassword<TRes>
    implements CopyWith$Mutation$SetPassword<TRes> {
  _CopyWithStubImpl$Mutation$SetPassword(this._res);

  TRes _res;

  call({
    Fragment$VerifyOtpOrPasswordFragment? setPassword,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$VerifyOtpOrPasswordFragment<TRes> get setPassword =>
      CopyWith$Fragment$VerifyOtpOrPasswordFragment.stub(_res);
}

const documentNodeMutationSetPassword = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SetPassword'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'password')),
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
        name: NameNode(value: 'setPassword'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'password'),
            value: VariableNode(name: NameNode(value: 'password')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'VerifyOtpOrPasswordFragment'),
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
  fragmentDefinitionVerifyOtpOrPasswordFragment,
  fragmentDefinitionProfileFragment,
  fragmentDefinitionMediaFragment,
]);
Mutation$SetPassword _parserFn$Mutation$SetPassword(
        Map<String, dynamic> data) =>
    Mutation$SetPassword.fromJson(data);
typedef OnMutationCompleted$Mutation$SetPassword = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$SetPassword?,
);

class Options$Mutation$SetPassword
    extends graphql.MutationOptions<Mutation$SetPassword> {
  Options$Mutation$SetPassword({
    String? operationName,
    required Variables$Mutation$SetPassword variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SetPassword? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SetPassword? onCompleted,
    graphql.OnMutationUpdate<Mutation$SetPassword>? update,
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
                    data == null ? null : _parserFn$Mutation$SetPassword(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSetPassword,
          parserFn: _parserFn$Mutation$SetPassword,
        );

  final OnMutationCompleted$Mutation$SetPassword? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$SetPassword
    extends graphql.WatchQueryOptions<Mutation$SetPassword> {
  WatchOptions$Mutation$SetPassword({
    String? operationName,
    required Variables$Mutation$SetPassword variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SetPassword? typedOptimisticResult,
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
          document: documentNodeMutationSetPassword,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$SetPassword,
        );
}

extension ClientExtension$Mutation$SetPassword on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SetPassword>> mutate$SetPassword(
          Options$Mutation$SetPassword options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$SetPassword> watchMutation$SetPassword(
          WatchOptions$Mutation$SetPassword options) =>
      this.watchMutation(options);
}

class Variables$Mutation$ResendOtp {
  factory Variables$Mutation$ResendOtp({
    required String mobileNumber,
    required bool force,
  }) =>
      Variables$Mutation$ResendOtp._({
        r'mobileNumber': mobileNumber,
        r'force': force,
      });

  Variables$Mutation$ResendOtp._(this._$data);

  factory Variables$Mutation$ResendOtp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$mobileNumber = data['mobileNumber'];
    result$data['mobileNumber'] = (l$mobileNumber as String);
    final l$force = data['force'];
    result$data['force'] = (l$force as bool);
    return Variables$Mutation$ResendOtp._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mobileNumber => (_$data['mobileNumber'] as String);

  bool get force => (_$data['force'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mobileNumber = mobileNumber;
    result$data['mobileNumber'] = l$mobileNumber;
    final l$force = force;
    result$data['force'] = l$force;
    return result$data;
  }

  CopyWith$Variables$Mutation$ResendOtp<Variables$Mutation$ResendOtp>
      get copyWith => CopyWith$Variables$Mutation$ResendOtp(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$ResendOtp ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mobileNumber = mobileNumber;
    final lOther$mobileNumber = other.mobileNumber;
    if (l$mobileNumber != lOther$mobileNumber) {
      return false;
    }
    final l$force = force;
    final lOther$force = other.force;
    if (l$force != lOther$force) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$mobileNumber = mobileNumber;
    final l$force = force;
    return Object.hashAll([
      l$mobileNumber,
      l$force,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$ResendOtp<TRes> {
  factory CopyWith$Variables$Mutation$ResendOtp(
    Variables$Mutation$ResendOtp instance,
    TRes Function(Variables$Mutation$ResendOtp) then,
  ) = _CopyWithImpl$Variables$Mutation$ResendOtp;

  factory CopyWith$Variables$Mutation$ResendOtp.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ResendOtp;

  TRes call({
    String? mobileNumber,
    bool? force,
  });
}

class _CopyWithImpl$Variables$Mutation$ResendOtp<TRes>
    implements CopyWith$Variables$Mutation$ResendOtp<TRes> {
  _CopyWithImpl$Variables$Mutation$ResendOtp(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ResendOtp _instance;

  final TRes Function(Variables$Mutation$ResendOtp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mobileNumber = _undefined,
    Object? force = _undefined,
  }) =>
      _then(Variables$Mutation$ResendOtp._({
        ..._instance._$data,
        if (mobileNumber != _undefined && mobileNumber != null)
          'mobileNumber': (mobileNumber as String),
        if (force != _undefined && force != null) 'force': (force as bool),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$ResendOtp<TRes>
    implements CopyWith$Variables$Mutation$ResendOtp<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ResendOtp(this._res);

  TRes _res;

  call({
    String? mobileNumber,
    bool? force,
  }) =>
      _res;
}

class Mutation$ResendOtp {
  Mutation$ResendOtp({
    required this.verifyNumber,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ResendOtp.fromJson(Map<String, dynamic> json) {
    final l$verifyNumber = json['verifyNumber'];
    final l$$__typename = json['__typename'];
    return Mutation$ResendOtp(
      verifyNumber: Fragment$VerifyNumberFragment.fromJson(
          (l$verifyNumber as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$VerifyNumberFragment verifyNumber;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$verifyNumber = verifyNumber;
    _resultData['verifyNumber'] = l$verifyNumber.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$verifyNumber = verifyNumber;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$verifyNumber,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ResendOtp || runtimeType != other.runtimeType) {
      return false;
    }
    final l$verifyNumber = verifyNumber;
    final lOther$verifyNumber = other.verifyNumber;
    if (l$verifyNumber != lOther$verifyNumber) {
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

extension UtilityExtension$Mutation$ResendOtp on Mutation$ResendOtp {
  CopyWith$Mutation$ResendOtp<Mutation$ResendOtp> get copyWith =>
      CopyWith$Mutation$ResendOtp(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ResendOtp<TRes> {
  factory CopyWith$Mutation$ResendOtp(
    Mutation$ResendOtp instance,
    TRes Function(Mutation$ResendOtp) then,
  ) = _CopyWithImpl$Mutation$ResendOtp;

  factory CopyWith$Mutation$ResendOtp.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ResendOtp;

  TRes call({
    Fragment$VerifyNumberFragment? verifyNumber,
    String? $__typename,
  });
  CopyWith$Fragment$VerifyNumberFragment<TRes> get verifyNumber;
}

class _CopyWithImpl$Mutation$ResendOtp<TRes>
    implements CopyWith$Mutation$ResendOtp<TRes> {
  _CopyWithImpl$Mutation$ResendOtp(
    this._instance,
    this._then,
  );

  final Mutation$ResendOtp _instance;

  final TRes Function(Mutation$ResendOtp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? verifyNumber = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ResendOtp(
        verifyNumber: verifyNumber == _undefined || verifyNumber == null
            ? _instance.verifyNumber
            : (verifyNumber as Fragment$VerifyNumberFragment),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$VerifyNumberFragment<TRes> get verifyNumber {
    final local$verifyNumber = _instance.verifyNumber;
    return CopyWith$Fragment$VerifyNumberFragment(
        local$verifyNumber, (e) => call(verifyNumber: e));
  }
}

class _CopyWithStubImpl$Mutation$ResendOtp<TRes>
    implements CopyWith$Mutation$ResendOtp<TRes> {
  _CopyWithStubImpl$Mutation$ResendOtp(this._res);

  TRes _res;

  call({
    Fragment$VerifyNumberFragment? verifyNumber,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$VerifyNumberFragment<TRes> get verifyNumber =>
      CopyWith$Fragment$VerifyNumberFragment.stub(_res);
}

const documentNodeMutationResendOtp = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'ResendOtp'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'mobileNumber')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'force')),
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
        name: NameNode(value: 'verifyNumber'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'mobileNumber'),
            value: VariableNode(name: NameNode(value: 'mobileNumber')),
          ),
          ArgumentNode(
            name: NameNode(value: 'forceSendOtp'),
            value: VariableNode(name: NameNode(value: 'force')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'VerifyNumberFragment'),
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
  fragmentDefinitionVerifyNumberFragment,
]);
Mutation$ResendOtp _parserFn$Mutation$ResendOtp(Map<String, dynamic> data) =>
    Mutation$ResendOtp.fromJson(data);
typedef OnMutationCompleted$Mutation$ResendOtp = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$ResendOtp?,
);

class Options$Mutation$ResendOtp
    extends graphql.MutationOptions<Mutation$ResendOtp> {
  Options$Mutation$ResendOtp({
    String? operationName,
    required Variables$Mutation$ResendOtp variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ResendOtp? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ResendOtp? onCompleted,
    graphql.OnMutationUpdate<Mutation$ResendOtp>? update,
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
                    data == null ? null : _parserFn$Mutation$ResendOtp(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationResendOtp,
          parserFn: _parserFn$Mutation$ResendOtp,
        );

  final OnMutationCompleted$Mutation$ResendOtp? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$ResendOtp
    extends graphql.WatchQueryOptions<Mutation$ResendOtp> {
  WatchOptions$Mutation$ResendOtp({
    String? operationName,
    required Variables$Mutation$ResendOtp variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ResendOtp? typedOptimisticResult,
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
          document: documentNodeMutationResendOtp,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$ResendOtp,
        );
}

extension ClientExtension$Mutation$ResendOtp on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ResendOtp>> mutate$ResendOtp(
          Options$Mutation$ResendOtp options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$ResendOtp> watchMutation$ResendOtp(
          WatchOptions$Mutation$ResendOtp options) =>
      this.watchMutation(options);
}
