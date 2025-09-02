import '../schema.gql.dart';
import 'package:flutter_common/core/graphql/scalars/timestamp.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$ChatMessage {
  Fragment$ChatMessage({
    required this.id,
    required this.sentAt,
    required this.requestId,
    required this.content,
    required this.status,
    required this.sentByDriver,
    this.$__typename = 'OrderMessage',
  });

  factory Fragment$ChatMessage.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$sentAt = json['sentAt'];
    final l$requestId = json['requestId'];
    final l$content = json['content'];
    final l$status = json['status'];
    final l$sentByDriver = json['sentByDriver'];
    final l$$__typename = json['__typename'];
    return Fragment$ChatMessage(
      id: (l$id as String),
      sentAt: fromGraphQLTimestampToDartDateTime(l$sentAt),
      requestId: (l$requestId as String),
      content: (l$content as String),
      status: fromJson$Enum$MessageStatus((l$status as String)),
      sentByDriver: (l$sentByDriver as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final DateTime sentAt;

  final String requestId;

  final String content;

  final Enum$MessageStatus status;

  final bool sentByDriver;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$sentAt = sentAt;
    _resultData['sentAt'] = fromDartDateTimeToGraphQLTimestamp(l$sentAt);
    final l$requestId = requestId;
    _resultData['requestId'] = l$requestId;
    final l$content = content;
    _resultData['content'] = l$content;
    final l$status = status;
    _resultData['status'] = toJson$Enum$MessageStatus(l$status);
    final l$sentByDriver = sentByDriver;
    _resultData['sentByDriver'] = l$sentByDriver;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$sentAt = sentAt;
    final l$requestId = requestId;
    final l$content = content;
    final l$status = status;
    final l$sentByDriver = sentByDriver;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$sentAt,
      l$requestId,
      l$content,
      l$status,
      l$sentByDriver,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$ChatMessage || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$sentAt = sentAt;
    final lOther$sentAt = other.sentAt;
    if (l$sentAt != lOther$sentAt) {
      return false;
    }
    final l$requestId = requestId;
    final lOther$requestId = other.requestId;
    if (l$requestId != lOther$requestId) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$sentByDriver = sentByDriver;
    final lOther$sentByDriver = other.sentByDriver;
    if (l$sentByDriver != lOther$sentByDriver) {
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

extension UtilityExtension$Fragment$ChatMessage on Fragment$ChatMessage {
  CopyWith$Fragment$ChatMessage<Fragment$ChatMessage> get copyWith =>
      CopyWith$Fragment$ChatMessage(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$ChatMessage<TRes> {
  factory CopyWith$Fragment$ChatMessage(
    Fragment$ChatMessage instance,
    TRes Function(Fragment$ChatMessage) then,
  ) = _CopyWithImpl$Fragment$ChatMessage;

  factory CopyWith$Fragment$ChatMessage.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ChatMessage;

  TRes call({
    String? id,
    DateTime? sentAt,
    String? requestId,
    String? content,
    Enum$MessageStatus? status,
    bool? sentByDriver,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$ChatMessage<TRes>
    implements CopyWith$Fragment$ChatMessage<TRes> {
  _CopyWithImpl$Fragment$ChatMessage(
    this._instance,
    this._then,
  );

  final Fragment$ChatMessage _instance;

  final TRes Function(Fragment$ChatMessage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? sentAt = _undefined,
    Object? requestId = _undefined,
    Object? content = _undefined,
    Object? status = _undefined,
    Object? sentByDriver = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ChatMessage(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        sentAt: sentAt == _undefined || sentAt == null
            ? _instance.sentAt
            : (sentAt as DateTime),
        requestId: requestId == _undefined || requestId == null
            ? _instance.requestId
            : (requestId as String),
        content: content == _undefined || content == null
            ? _instance.content
            : (content as String),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$MessageStatus),
        sentByDriver: sentByDriver == _undefined || sentByDriver == null
            ? _instance.sentByDriver
            : (sentByDriver as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$ChatMessage<TRes>
    implements CopyWith$Fragment$ChatMessage<TRes> {
  _CopyWithStubImpl$Fragment$ChatMessage(this._res);

  TRes _res;

  call({
    String? id,
    DateTime? sentAt,
    String? requestId,
    String? content,
    Enum$MessageStatus? status,
    bool? sentByDriver,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionChatMessage = FragmentDefinitionNode(
  name: NameNode(value: 'ChatMessage'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'OrderMessage'),
    isNonNull: false,
  )),
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
      name: NameNode(value: 'sentAt'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'requestId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'content'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'status'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'sentByDriver'),
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
);
const documentNodeFragmentChatMessage = DocumentNode(definitions: [
  fragmentDefinitionChatMessage,
]);

extension ClientExtension$Fragment$ChatMessage on graphql.GraphQLClient {
  void writeFragment$ChatMessage({
    required Fragment$ChatMessage data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'ChatMessage',
            document: documentNodeFragmentChatMessage,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$ChatMessage? readFragment$ChatMessage({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'ChatMessage',
          document: documentNodeFragmentChatMessage,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$ChatMessage.fromJson(result);
  }
}
