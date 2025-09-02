import 'dart:async';
import 'package:flutter_common/core/graphql/scalars/timestamp.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Query$Announcements {
  Query$Announcements({
    required this.announcements,
    this.$__typename = 'Query',
  });

  factory Query$Announcements.fromJson(Map<String, dynamic> json) {
    final l$announcements = json['announcements'];
    final l$$__typename = json['__typename'];
    return Query$Announcements(
      announcements: Query$Announcements$announcements.fromJson(
          (l$announcements as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Announcements$announcements announcements;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$announcements = announcements;
    _resultData['announcements'] = l$announcements.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$announcements = announcements;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$announcements,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Announcements || runtimeType != other.runtimeType) {
      return false;
    }
    final l$announcements = announcements;
    final lOther$announcements = other.announcements;
    if (l$announcements != lOther$announcements) {
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

extension UtilityExtension$Query$Announcements on Query$Announcements {
  CopyWith$Query$Announcements<Query$Announcements> get copyWith =>
      CopyWith$Query$Announcements(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Announcements<TRes> {
  factory CopyWith$Query$Announcements(
    Query$Announcements instance,
    TRes Function(Query$Announcements) then,
  ) = _CopyWithImpl$Query$Announcements;

  factory CopyWith$Query$Announcements.stub(TRes res) =
      _CopyWithStubImpl$Query$Announcements;

  TRes call({
    Query$Announcements$announcements? announcements,
    String? $__typename,
  });
  CopyWith$Query$Announcements$announcements<TRes> get announcements;
}

class _CopyWithImpl$Query$Announcements<TRes>
    implements CopyWith$Query$Announcements<TRes> {
  _CopyWithImpl$Query$Announcements(
    this._instance,
    this._then,
  );

  final Query$Announcements _instance;

  final TRes Function(Query$Announcements) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? announcements = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Announcements(
        announcements: announcements == _undefined || announcements == null
            ? _instance.announcements
            : (announcements as Query$Announcements$announcements),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Announcements$announcements<TRes> get announcements {
    final local$announcements = _instance.announcements;
    return CopyWith$Query$Announcements$announcements(
        local$announcements, (e) => call(announcements: e));
  }
}

class _CopyWithStubImpl$Query$Announcements<TRes>
    implements CopyWith$Query$Announcements<TRes> {
  _CopyWithStubImpl$Query$Announcements(this._res);

  TRes _res;

  call({
    Query$Announcements$announcements? announcements,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Announcements$announcements<TRes> get announcements =>
      CopyWith$Query$Announcements$announcements.stub(_res);
}

const documentNodeQueryAnnouncements = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Announcements'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'announcements'),
        alias: null,
        arguments: [],
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
                    name: NameNode(value: 'description'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'startAt'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'expireAt'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
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
Query$Announcements _parserFn$Query$Announcements(Map<String, dynamic> data) =>
    Query$Announcements.fromJson(data);
typedef OnQueryComplete$Query$Announcements = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Announcements?,
);

class Options$Query$Announcements
    extends graphql.QueryOptions<Query$Announcements> {
  Options$Query$Announcements({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Announcements? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Announcements? onComplete,
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
                    data == null ? null : _parserFn$Query$Announcements(data),
                  ),
          onError: onError,
          document: documentNodeQueryAnnouncements,
          parserFn: _parserFn$Query$Announcements,
        );

  final OnQueryComplete$Query$Announcements? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Announcements
    extends graphql.WatchQueryOptions<Query$Announcements> {
  WatchOptions$Query$Announcements({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Announcements? typedOptimisticResult,
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
          document: documentNodeQueryAnnouncements,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Announcements,
        );
}

class FetchMoreOptions$Query$Announcements extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Announcements(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryAnnouncements,
        );
}

extension ClientExtension$Query$Announcements on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Announcements>> query$Announcements(
          [Options$Query$Announcements? options]) async =>
      await this.query(options ?? Options$Query$Announcements());
  graphql.ObservableQuery<Query$Announcements> watchQuery$Announcements(
          [WatchOptions$Query$Announcements? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Announcements());
  void writeQuery$Announcements({
    required Query$Announcements data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryAnnouncements)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Announcements? readQuery$Announcements({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryAnnouncements)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Announcements.fromJson(result);
  }
}

class Query$Announcements$announcements {
  Query$Announcements$announcements({
    required this.edges,
    this.$__typename = 'AnnouncementConnection',
  });

  factory Query$Announcements$announcements.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$Announcements$announcements(
      edges: (l$edges as List<dynamic>)
          .map((e) => Query$Announcements$announcements$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Announcements$announcements$edges> edges;

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
    if (other is! Query$Announcements$announcements ||
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

extension UtilityExtension$Query$Announcements$announcements
    on Query$Announcements$announcements {
  CopyWith$Query$Announcements$announcements<Query$Announcements$announcements>
      get copyWith => CopyWith$Query$Announcements$announcements(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Announcements$announcements<TRes> {
  factory CopyWith$Query$Announcements$announcements(
    Query$Announcements$announcements instance,
    TRes Function(Query$Announcements$announcements) then,
  ) = _CopyWithImpl$Query$Announcements$announcements;

  factory CopyWith$Query$Announcements$announcements.stub(TRes res) =
      _CopyWithStubImpl$Query$Announcements$announcements;

  TRes call({
    List<Query$Announcements$announcements$edges>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$Announcements$announcements$edges> Function(
              Iterable<
                  CopyWith$Query$Announcements$announcements$edges<
                      Query$Announcements$announcements$edges>>)
          _fn);
}

class _CopyWithImpl$Query$Announcements$announcements<TRes>
    implements CopyWith$Query$Announcements$announcements<TRes> {
  _CopyWithImpl$Query$Announcements$announcements(
    this._instance,
    this._then,
  );

  final Query$Announcements$announcements _instance;

  final TRes Function(Query$Announcements$announcements) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Announcements$announcements(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Query$Announcements$announcements$edges>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$Announcements$announcements$edges> Function(
                  Iterable<
                      CopyWith$Query$Announcements$announcements$edges<
                          Query$Announcements$announcements$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              .map((e) => CopyWith$Query$Announcements$announcements$edges(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$Announcements$announcements<TRes>
    implements CopyWith$Query$Announcements$announcements<TRes> {
  _CopyWithStubImpl$Query$Announcements$announcements(this._res);

  TRes _res;

  call({
    List<Query$Announcements$announcements$edges>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Query$Announcements$announcements$edges {
  Query$Announcements$announcements$edges({
    required this.node,
    this.$__typename = 'AnnouncementEdge',
  });

  factory Query$Announcements$announcements$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$Announcements$announcements$edges(
      node: Query$Announcements$announcements$edges$node.fromJson(
          (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Announcements$announcements$edges$node node;

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
    if (other is! Query$Announcements$announcements$edges ||
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

extension UtilityExtension$Query$Announcements$announcements$edges
    on Query$Announcements$announcements$edges {
  CopyWith$Query$Announcements$announcements$edges<
          Query$Announcements$announcements$edges>
      get copyWith => CopyWith$Query$Announcements$announcements$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Announcements$announcements$edges<TRes> {
  factory CopyWith$Query$Announcements$announcements$edges(
    Query$Announcements$announcements$edges instance,
    TRes Function(Query$Announcements$announcements$edges) then,
  ) = _CopyWithImpl$Query$Announcements$announcements$edges;

  factory CopyWith$Query$Announcements$announcements$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$Announcements$announcements$edges;

  TRes call({
    Query$Announcements$announcements$edges$node? node,
    String? $__typename,
  });
  CopyWith$Query$Announcements$announcements$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$Announcements$announcements$edges<TRes>
    implements CopyWith$Query$Announcements$announcements$edges<TRes> {
  _CopyWithImpl$Query$Announcements$announcements$edges(
    this._instance,
    this._then,
  );

  final Query$Announcements$announcements$edges _instance;

  final TRes Function(Query$Announcements$announcements$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Announcements$announcements$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Query$Announcements$announcements$edges$node),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Announcements$announcements$edges$node<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Query$Announcements$announcements$edges$node(
        local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$Announcements$announcements$edges<TRes>
    implements CopyWith$Query$Announcements$announcements$edges<TRes> {
  _CopyWithStubImpl$Query$Announcements$announcements$edges(this._res);

  TRes _res;

  call({
    Query$Announcements$announcements$edges$node? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Announcements$announcements$edges$node<TRes> get node =>
      CopyWith$Query$Announcements$announcements$edges$node.stub(_res);
}

class Query$Announcements$announcements$edges$node {
  Query$Announcements$announcements$edges$node({
    required this.id,
    required this.title,
    required this.description,
    required this.startAt,
    required this.expireAt,
    this.url,
    this.$__typename = 'Announcement',
  });

  factory Query$Announcements$announcements$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$description = json['description'];
    final l$startAt = json['startAt'];
    final l$expireAt = json['expireAt'];
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Query$Announcements$announcements$edges$node(
      id: (l$id as String),
      title: (l$title as String),
      description: (l$description as String),
      startAt: fromGraphQLTimestampToDartDateTime(l$startAt),
      expireAt: fromGraphQLTimestampToDartDateTime(l$expireAt),
      url: (l$url as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final String description;

  final DateTime startAt;

  final DateTime expireAt;

  final String? url;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$startAt = startAt;
    _resultData['startAt'] = fromDartDateTimeToGraphQLTimestamp(l$startAt);
    final l$expireAt = expireAt;
    _resultData['expireAt'] = fromDartDateTimeToGraphQLTimestamp(l$expireAt);
    final l$url = url;
    _resultData['url'] = l$url;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$description = description;
    final l$startAt = startAt;
    final l$expireAt = expireAt;
    final l$url = url;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$description,
      l$startAt,
      l$expireAt,
      l$url,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Announcements$announcements$edges$node ||
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
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$startAt = startAt;
    final lOther$startAt = other.startAt;
    if (l$startAt != lOther$startAt) {
      return false;
    }
    final l$expireAt = expireAt;
    final lOther$expireAt = other.expireAt;
    if (l$expireAt != lOther$expireAt) {
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

extension UtilityExtension$Query$Announcements$announcements$edges$node
    on Query$Announcements$announcements$edges$node {
  CopyWith$Query$Announcements$announcements$edges$node<
          Query$Announcements$announcements$edges$node>
      get copyWith => CopyWith$Query$Announcements$announcements$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Announcements$announcements$edges$node<TRes> {
  factory CopyWith$Query$Announcements$announcements$edges$node(
    Query$Announcements$announcements$edges$node instance,
    TRes Function(Query$Announcements$announcements$edges$node) then,
  ) = _CopyWithImpl$Query$Announcements$announcements$edges$node;

  factory CopyWith$Query$Announcements$announcements$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$Announcements$announcements$edges$node;

  TRes call({
    String? id,
    String? title,
    String? description,
    DateTime? startAt,
    DateTime? expireAt,
    String? url,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Announcements$announcements$edges$node<TRes>
    implements CopyWith$Query$Announcements$announcements$edges$node<TRes> {
  _CopyWithImpl$Query$Announcements$announcements$edges$node(
    this._instance,
    this._then,
  );

  final Query$Announcements$announcements$edges$node _instance;

  final TRes Function(Query$Announcements$announcements$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? description = _undefined,
    Object? startAt = _undefined,
    Object? expireAt = _undefined,
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Announcements$announcements$edges$node(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        description: description == _undefined || description == null
            ? _instance.description
            : (description as String),
        startAt: startAt == _undefined || startAt == null
            ? _instance.startAt
            : (startAt as DateTime),
        expireAt: expireAt == _undefined || expireAt == null
            ? _instance.expireAt
            : (expireAt as DateTime),
        url: url == _undefined ? _instance.url : (url as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Announcements$announcements$edges$node<TRes>
    implements CopyWith$Query$Announcements$announcements$edges$node<TRes> {
  _CopyWithStubImpl$Query$Announcements$announcements$edges$node(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? description,
    DateTime? startAt,
    DateTime? expireAt,
    String? url,
    String? $__typename,
  }) =>
      _res;
}
