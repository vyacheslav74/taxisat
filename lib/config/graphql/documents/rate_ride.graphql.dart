import '../fragments/review_parameter.fragment.graphql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Query$ReviewParameters {
  Query$ReviewParameters({
    required this.feedbackParameters,
    this.$__typename = 'Query',
  });

  factory Query$ReviewParameters.fromJson(Map<String, dynamic> json) {
    final l$feedbackParameters = json['feedbackParameters'];
    final l$$__typename = json['__typename'];
    return Query$ReviewParameters(
      feedbackParameters: (l$feedbackParameters as List<dynamic>)
          .map((e) =>
              Fragment$ReviewParameter.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$ReviewParameter> feedbackParameters;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$feedbackParameters = feedbackParameters;
    _resultData['feedbackParameters'] =
        l$feedbackParameters.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$feedbackParameters = feedbackParameters;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$feedbackParameters.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ReviewParameters || runtimeType != other.runtimeType) {
      return false;
    }
    final l$feedbackParameters = feedbackParameters;
    final lOther$feedbackParameters = other.feedbackParameters;
    if (l$feedbackParameters.length != lOther$feedbackParameters.length) {
      return false;
    }
    for (int i = 0; i < l$feedbackParameters.length; i++) {
      final l$feedbackParameters$entry = l$feedbackParameters[i];
      final lOther$feedbackParameters$entry = lOther$feedbackParameters[i];
      if (l$feedbackParameters$entry != lOther$feedbackParameters$entry) {
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

extension UtilityExtension$Query$ReviewParameters on Query$ReviewParameters {
  CopyWith$Query$ReviewParameters<Query$ReviewParameters> get copyWith =>
      CopyWith$Query$ReviewParameters(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ReviewParameters<TRes> {
  factory CopyWith$Query$ReviewParameters(
    Query$ReviewParameters instance,
    TRes Function(Query$ReviewParameters) then,
  ) = _CopyWithImpl$Query$ReviewParameters;

  factory CopyWith$Query$ReviewParameters.stub(TRes res) =
      _CopyWithStubImpl$Query$ReviewParameters;

  TRes call({
    List<Fragment$ReviewParameter>? feedbackParameters,
    String? $__typename,
  });
  TRes feedbackParameters(
      Iterable<Fragment$ReviewParameter> Function(
              Iterable<
                  CopyWith$Fragment$ReviewParameter<Fragment$ReviewParameter>>)
          _fn);
}

class _CopyWithImpl$Query$ReviewParameters<TRes>
    implements CopyWith$Query$ReviewParameters<TRes> {
  _CopyWithImpl$Query$ReviewParameters(
    this._instance,
    this._then,
  );

  final Query$ReviewParameters _instance;

  final TRes Function(Query$ReviewParameters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? feedbackParameters = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ReviewParameters(
        feedbackParameters:
            feedbackParameters == _undefined || feedbackParameters == null
                ? _instance.feedbackParameters
                : (feedbackParameters as List<Fragment$ReviewParameter>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes feedbackParameters(
          Iterable<Fragment$ReviewParameter> Function(
                  Iterable<
                      CopyWith$Fragment$ReviewParameter<
                          Fragment$ReviewParameter>>)
              _fn) =>
      call(
          feedbackParameters: _fn(_instance.feedbackParameters
              .map((e) => CopyWith$Fragment$ReviewParameter(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$ReviewParameters<TRes>
    implements CopyWith$Query$ReviewParameters<TRes> {
  _CopyWithStubImpl$Query$ReviewParameters(this._res);

  TRes _res;

  call({
    List<Fragment$ReviewParameter>? feedbackParameters,
    String? $__typename,
  }) =>
      _res;

  feedbackParameters(_fn) => _res;
}

const documentNodeQueryReviewParameters = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ReviewParameters'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'feedbackParameters'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'ReviewParameter'),
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
  fragmentDefinitionReviewParameter,
]);
Query$ReviewParameters _parserFn$Query$ReviewParameters(
        Map<String, dynamic> data) =>
    Query$ReviewParameters.fromJson(data);
typedef OnQueryComplete$Query$ReviewParameters = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$ReviewParameters?,
);

class Options$Query$ReviewParameters
    extends graphql.QueryOptions<Query$ReviewParameters> {
  Options$Query$ReviewParameters({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ReviewParameters? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ReviewParameters? onComplete,
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
                        : _parserFn$Query$ReviewParameters(data),
                  ),
          onError: onError,
          document: documentNodeQueryReviewParameters,
          parserFn: _parserFn$Query$ReviewParameters,
        );

  final OnQueryComplete$Query$ReviewParameters? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$ReviewParameters
    extends graphql.WatchQueryOptions<Query$ReviewParameters> {
  WatchOptions$Query$ReviewParameters({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ReviewParameters? typedOptimisticResult,
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
          document: documentNodeQueryReviewParameters,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$ReviewParameters,
        );
}

class FetchMoreOptions$Query$ReviewParameters extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ReviewParameters(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryReviewParameters,
        );
}

extension ClientExtension$Query$ReviewParameters on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ReviewParameters>> query$ReviewParameters(
          [Options$Query$ReviewParameters? options]) async =>
      await this.query(options ?? Options$Query$ReviewParameters());
  graphql.ObservableQuery<Query$ReviewParameters> watchQuery$ReviewParameters(
          [WatchOptions$Query$ReviewParameters? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$ReviewParameters());
  void writeQuery$ReviewParameters({
    required Query$ReviewParameters data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryReviewParameters)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$ReviewParameters? readQuery$ReviewParameters({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryReviewParameters)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ReviewParameters.fromJson(result);
  }
}

class Variables$Mutation$SubmitReview {
  factory Variables$Mutation$SubmitReview({
    required String requestId,
    required int score,
    String? feedback,
    required List<String> parameterIds,
    required bool addToFavorite,
  }) =>
      Variables$Mutation$SubmitReview._({
        r'requestId': requestId,
        r'score': score,
        if (feedback != null) r'feedback': feedback,
        r'parameterIds': parameterIds,
        r'addToFavorite': addToFavorite,
      });

  Variables$Mutation$SubmitReview._(this._$data);

  factory Variables$Mutation$SubmitReview.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$requestId = data['requestId'];
    result$data['requestId'] = (l$requestId as String);
    final l$score = data['score'];
    result$data['score'] = (l$score as int);
    if (data.containsKey('feedback')) {
      final l$feedback = data['feedback'];
      result$data['feedback'] = (l$feedback as String?);
    }
    final l$parameterIds = data['parameterIds'];
    result$data['parameterIds'] =
        (l$parameterIds as List<dynamic>).map((e) => (e as String)).toList();
    final l$addToFavorite = data['addToFavorite'];
    result$data['addToFavorite'] = (l$addToFavorite as bool);
    return Variables$Mutation$SubmitReview._(result$data);
  }

  Map<String, dynamic> _$data;

  String get requestId => (_$data['requestId'] as String);

  int get score => (_$data['score'] as int);

  String? get feedback => (_$data['feedback'] as String?);

  List<String> get parameterIds => (_$data['parameterIds'] as List<String>);

  bool get addToFavorite => (_$data['addToFavorite'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$requestId = requestId;
    result$data['requestId'] = l$requestId;
    final l$score = score;
    result$data['score'] = l$score;
    if (_$data.containsKey('feedback')) {
      final l$feedback = feedback;
      result$data['feedback'] = l$feedback;
    }
    final l$parameterIds = parameterIds;
    result$data['parameterIds'] = l$parameterIds.map((e) => e).toList();
    final l$addToFavorite = addToFavorite;
    result$data['addToFavorite'] = l$addToFavorite;
    return result$data;
  }

  CopyWith$Variables$Mutation$SubmitReview<Variables$Mutation$SubmitReview>
      get copyWith => CopyWith$Variables$Mutation$SubmitReview(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$SubmitReview ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$requestId = requestId;
    final lOther$requestId = other.requestId;
    if (l$requestId != lOther$requestId) {
      return false;
    }
    final l$score = score;
    final lOther$score = other.score;
    if (l$score != lOther$score) {
      return false;
    }
    final l$feedback = feedback;
    final lOther$feedback = other.feedback;
    if (_$data.containsKey('feedback') !=
        other._$data.containsKey('feedback')) {
      return false;
    }
    if (l$feedback != lOther$feedback) {
      return false;
    }
    final l$parameterIds = parameterIds;
    final lOther$parameterIds = other.parameterIds;
    if (l$parameterIds.length != lOther$parameterIds.length) {
      return false;
    }
    for (int i = 0; i < l$parameterIds.length; i++) {
      final l$parameterIds$entry = l$parameterIds[i];
      final lOther$parameterIds$entry = lOther$parameterIds[i];
      if (l$parameterIds$entry != lOther$parameterIds$entry) {
        return false;
      }
    }
    final l$addToFavorite = addToFavorite;
    final lOther$addToFavorite = other.addToFavorite;
    if (l$addToFavorite != lOther$addToFavorite) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$requestId = requestId;
    final l$score = score;
    final l$feedback = feedback;
    final l$parameterIds = parameterIds;
    final l$addToFavorite = addToFavorite;
    return Object.hashAll([
      l$requestId,
      l$score,
      _$data.containsKey('feedback') ? l$feedback : const {},
      Object.hashAll(l$parameterIds.map((v) => v)),
      l$addToFavorite,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$SubmitReview<TRes> {
  factory CopyWith$Variables$Mutation$SubmitReview(
    Variables$Mutation$SubmitReview instance,
    TRes Function(Variables$Mutation$SubmitReview) then,
  ) = _CopyWithImpl$Variables$Mutation$SubmitReview;

  factory CopyWith$Variables$Mutation$SubmitReview.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SubmitReview;

  TRes call({
    String? requestId,
    int? score,
    String? feedback,
    List<String>? parameterIds,
    bool? addToFavorite,
  });
}

class _CopyWithImpl$Variables$Mutation$SubmitReview<TRes>
    implements CopyWith$Variables$Mutation$SubmitReview<TRes> {
  _CopyWithImpl$Variables$Mutation$SubmitReview(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SubmitReview _instance;

  final TRes Function(Variables$Mutation$SubmitReview) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? requestId = _undefined,
    Object? score = _undefined,
    Object? feedback = _undefined,
    Object? parameterIds = _undefined,
    Object? addToFavorite = _undefined,
  }) =>
      _then(Variables$Mutation$SubmitReview._({
        ..._instance._$data,
        if (requestId != _undefined && requestId != null)
          'requestId': (requestId as String),
        if (score != _undefined && score != null) 'score': (score as int),
        if (feedback != _undefined) 'feedback': (feedback as String?),
        if (parameterIds != _undefined && parameterIds != null)
          'parameterIds': (parameterIds as List<String>),
        if (addToFavorite != _undefined && addToFavorite != null)
          'addToFavorite': (addToFavorite as bool),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SubmitReview<TRes>
    implements CopyWith$Variables$Mutation$SubmitReview<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SubmitReview(this._res);

  TRes _res;

  call({
    String? requestId,
    int? score,
    String? feedback,
    List<String>? parameterIds,
    bool? addToFavorite,
  }) =>
      _res;
}

class Mutation$SubmitReview {
  Mutation$SubmitReview({
    required this.submitReview,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SubmitReview.fromJson(Map<String, dynamic> json) {
    final l$submitReview = json['submitReview'];
    final l$$__typename = json['__typename'];
    return Mutation$SubmitReview(
      submitReview: Mutation$SubmitReview$submitReview.fromJson(
          (l$submitReview as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SubmitReview$submitReview submitReview;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$submitReview = submitReview;
    _resultData['submitReview'] = l$submitReview.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$submitReview = submitReview;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$submitReview,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SubmitReview || runtimeType != other.runtimeType) {
      return false;
    }
    final l$submitReview = submitReview;
    final lOther$submitReview = other.submitReview;
    if (l$submitReview != lOther$submitReview) {
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

extension UtilityExtension$Mutation$SubmitReview on Mutation$SubmitReview {
  CopyWith$Mutation$SubmitReview<Mutation$SubmitReview> get copyWith =>
      CopyWith$Mutation$SubmitReview(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SubmitReview<TRes> {
  factory CopyWith$Mutation$SubmitReview(
    Mutation$SubmitReview instance,
    TRes Function(Mutation$SubmitReview) then,
  ) = _CopyWithImpl$Mutation$SubmitReview;

  factory CopyWith$Mutation$SubmitReview.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SubmitReview;

  TRes call({
    Mutation$SubmitReview$submitReview? submitReview,
    String? $__typename,
  });
  CopyWith$Mutation$SubmitReview$submitReview<TRes> get submitReview;
}

class _CopyWithImpl$Mutation$SubmitReview<TRes>
    implements CopyWith$Mutation$SubmitReview<TRes> {
  _CopyWithImpl$Mutation$SubmitReview(
    this._instance,
    this._then,
  );

  final Mutation$SubmitReview _instance;

  final TRes Function(Mutation$SubmitReview) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? submitReview = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SubmitReview(
        submitReview: submitReview == _undefined || submitReview == null
            ? _instance.submitReview
            : (submitReview as Mutation$SubmitReview$submitReview),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$SubmitReview$submitReview<TRes> get submitReview {
    final local$submitReview = _instance.submitReview;
    return CopyWith$Mutation$SubmitReview$submitReview(
        local$submitReview, (e) => call(submitReview: e));
  }
}

class _CopyWithStubImpl$Mutation$SubmitReview<TRes>
    implements CopyWith$Mutation$SubmitReview<TRes> {
  _CopyWithStubImpl$Mutation$SubmitReview(this._res);

  TRes _res;

  call({
    Mutation$SubmitReview$submitReview? submitReview,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$SubmitReview$submitReview<TRes> get submitReview =>
      CopyWith$Mutation$SubmitReview$submitReview.stub(_res);
}

const documentNodeMutationSubmitReview = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SubmitReview'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'requestId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'score')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'feedback')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'parameterIds')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'ID'),
            isNonNull: true,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'addToFavorite')),
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
        name: NameNode(value: 'submitReview'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'review'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'score'),
                value: VariableNode(name: NameNode(value: 'score')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'description'),
                value: VariableNode(name: NameNode(value: 'feedback')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'parameterIds'),
                value: VariableNode(name: NameNode(value: 'parameterIds')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'requestId'),
                value: VariableNode(name: NameNode(value: 'requestId')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'addToFavorite'),
                value: VariableNode(name: NameNode(value: 'addToFavorite')),
              ),
            ]),
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
Mutation$SubmitReview _parserFn$Mutation$SubmitReview(
        Map<String, dynamic> data) =>
    Mutation$SubmitReview.fromJson(data);
typedef OnMutationCompleted$Mutation$SubmitReview = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$SubmitReview?,
);

class Options$Mutation$SubmitReview
    extends graphql.MutationOptions<Mutation$SubmitReview> {
  Options$Mutation$SubmitReview({
    String? operationName,
    required Variables$Mutation$SubmitReview variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SubmitReview? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SubmitReview? onCompleted,
    graphql.OnMutationUpdate<Mutation$SubmitReview>? update,
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
                    data == null ? null : _parserFn$Mutation$SubmitReview(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSubmitReview,
          parserFn: _parserFn$Mutation$SubmitReview,
        );

  final OnMutationCompleted$Mutation$SubmitReview? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$SubmitReview
    extends graphql.WatchQueryOptions<Mutation$SubmitReview> {
  WatchOptions$Mutation$SubmitReview({
    String? operationName,
    required Variables$Mutation$SubmitReview variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SubmitReview? typedOptimisticResult,
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
          document: documentNodeMutationSubmitReview,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$SubmitReview,
        );
}

extension ClientExtension$Mutation$SubmitReview on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SubmitReview>> mutate$SubmitReview(
          Options$Mutation$SubmitReview options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$SubmitReview> watchMutation$SubmitReview(
          WatchOptions$Mutation$SubmitReview options) =>
      this.watchMutation(options);
}

class Mutation$SubmitReview$submitReview {
  Mutation$SubmitReview$submitReview({
    required this.id,
    this.$__typename = 'Order',
  });

  factory Mutation$SubmitReview$submitReview.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$SubmitReview$submitReview(
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
    if (other is! Mutation$SubmitReview$submitReview ||
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

extension UtilityExtension$Mutation$SubmitReview$submitReview
    on Mutation$SubmitReview$submitReview {
  CopyWith$Mutation$SubmitReview$submitReview<
          Mutation$SubmitReview$submitReview>
      get copyWith => CopyWith$Mutation$SubmitReview$submitReview(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SubmitReview$submitReview<TRes> {
  factory CopyWith$Mutation$SubmitReview$submitReview(
    Mutation$SubmitReview$submitReview instance,
    TRes Function(Mutation$SubmitReview$submitReview) then,
  ) = _CopyWithImpl$Mutation$SubmitReview$submitReview;

  factory CopyWith$Mutation$SubmitReview$submitReview.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SubmitReview$submitReview;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SubmitReview$submitReview<TRes>
    implements CopyWith$Mutation$SubmitReview$submitReview<TRes> {
  _CopyWithImpl$Mutation$SubmitReview$submitReview(
    this._instance,
    this._then,
  );

  final Mutation$SubmitReview$submitReview _instance;

  final TRes Function(Mutation$SubmitReview$submitReview) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SubmitReview$submitReview(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$SubmitReview$submitReview<TRes>
    implements CopyWith$Mutation$SubmitReview$submitReview<TRes> {
  _CopyWithStubImpl$Mutation$SubmitReview$submitReview(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$SkipReview {
  Mutation$SkipReview({
    required this.skipReview,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SkipReview.fromJson(Map<String, dynamic> json) {
    final l$skipReview = json['skipReview'];
    final l$$__typename = json['__typename'];
    return Mutation$SkipReview(
      skipReview: Mutation$SkipReview$skipReview.fromJson(
          (l$skipReview as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SkipReview$skipReview skipReview;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$skipReview = skipReview;
    _resultData['skipReview'] = l$skipReview.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$skipReview = skipReview;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$skipReview,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SkipReview || runtimeType != other.runtimeType) {
      return false;
    }
    final l$skipReview = skipReview;
    final lOther$skipReview = other.skipReview;
    if (l$skipReview != lOther$skipReview) {
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

extension UtilityExtension$Mutation$SkipReview on Mutation$SkipReview {
  CopyWith$Mutation$SkipReview<Mutation$SkipReview> get copyWith =>
      CopyWith$Mutation$SkipReview(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SkipReview<TRes> {
  factory CopyWith$Mutation$SkipReview(
    Mutation$SkipReview instance,
    TRes Function(Mutation$SkipReview) then,
  ) = _CopyWithImpl$Mutation$SkipReview;

  factory CopyWith$Mutation$SkipReview.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SkipReview;

  TRes call({
    Mutation$SkipReview$skipReview? skipReview,
    String? $__typename,
  });
  CopyWith$Mutation$SkipReview$skipReview<TRes> get skipReview;
}

class _CopyWithImpl$Mutation$SkipReview<TRes>
    implements CopyWith$Mutation$SkipReview<TRes> {
  _CopyWithImpl$Mutation$SkipReview(
    this._instance,
    this._then,
  );

  final Mutation$SkipReview _instance;

  final TRes Function(Mutation$SkipReview) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? skipReview = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SkipReview(
        skipReview: skipReview == _undefined || skipReview == null
            ? _instance.skipReview
            : (skipReview as Mutation$SkipReview$skipReview),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$SkipReview$skipReview<TRes> get skipReview {
    final local$skipReview = _instance.skipReview;
    return CopyWith$Mutation$SkipReview$skipReview(
        local$skipReview, (e) => call(skipReview: e));
  }
}

class _CopyWithStubImpl$Mutation$SkipReview<TRes>
    implements CopyWith$Mutation$SkipReview<TRes> {
  _CopyWithStubImpl$Mutation$SkipReview(this._res);

  TRes _res;

  call({
    Mutation$SkipReview$skipReview? skipReview,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$SkipReview$skipReview<TRes> get skipReview =>
      CopyWith$Mutation$SkipReview$skipReview.stub(_res);
}

const documentNodeMutationSkipReview = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SkipReview'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'skipReview'),
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
Mutation$SkipReview _parserFn$Mutation$SkipReview(Map<String, dynamic> data) =>
    Mutation$SkipReview.fromJson(data);
typedef OnMutationCompleted$Mutation$SkipReview = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$SkipReview?,
);

class Options$Mutation$SkipReview
    extends graphql.MutationOptions<Mutation$SkipReview> {
  Options$Mutation$SkipReview({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SkipReview? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SkipReview? onCompleted,
    graphql.OnMutationUpdate<Mutation$SkipReview>? update,
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
                    data == null ? null : _parserFn$Mutation$SkipReview(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSkipReview,
          parserFn: _parserFn$Mutation$SkipReview,
        );

  final OnMutationCompleted$Mutation$SkipReview? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$SkipReview
    extends graphql.WatchQueryOptions<Mutation$SkipReview> {
  WatchOptions$Mutation$SkipReview({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SkipReview? typedOptimisticResult,
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
          document: documentNodeMutationSkipReview,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$SkipReview,
        );
}

extension ClientExtension$Mutation$SkipReview on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SkipReview>> mutate$SkipReview(
          [Options$Mutation$SkipReview? options]) async =>
      await this.mutate(options ?? Options$Mutation$SkipReview());
  graphql.ObservableQuery<Mutation$SkipReview> watchMutation$SkipReview(
          [WatchOptions$Mutation$SkipReview? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$SkipReview());
}

class Mutation$SkipReview$skipReview {
  Mutation$SkipReview$skipReview({
    required this.id,
    this.$__typename = 'Order',
  });

  factory Mutation$SkipReview$skipReview.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$SkipReview$skipReview(
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
    if (other is! Mutation$SkipReview$skipReview ||
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

extension UtilityExtension$Mutation$SkipReview$skipReview
    on Mutation$SkipReview$skipReview {
  CopyWith$Mutation$SkipReview$skipReview<Mutation$SkipReview$skipReview>
      get copyWith => CopyWith$Mutation$SkipReview$skipReview(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SkipReview$skipReview<TRes> {
  factory CopyWith$Mutation$SkipReview$skipReview(
    Mutation$SkipReview$skipReview instance,
    TRes Function(Mutation$SkipReview$skipReview) then,
  ) = _CopyWithImpl$Mutation$SkipReview$skipReview;

  factory CopyWith$Mutation$SkipReview$skipReview.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SkipReview$skipReview;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SkipReview$skipReview<TRes>
    implements CopyWith$Mutation$SkipReview$skipReview<TRes> {
  _CopyWithImpl$Mutation$SkipReview$skipReview(
    this._instance,
    this._then,
  );

  final Mutation$SkipReview$skipReview _instance;

  final TRes Function(Mutation$SkipReview$skipReview) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SkipReview$skipReview(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$SkipReview$skipReview<TRes>
    implements CopyWith$Mutation$SkipReview$skipReview<TRes> {
  _CopyWithStubImpl$Mutation$SkipReview$skipReview(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}
