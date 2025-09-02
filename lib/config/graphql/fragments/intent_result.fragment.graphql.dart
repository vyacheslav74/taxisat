import '../schema.gql.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$IntentResult {
  Fragment$IntentResult({
    required this.status,
    this.url,
    this.error,
    this.$__typename = 'TopUpWalletResponse',
  });

  factory Fragment$IntentResult.fromJson(Map<String, dynamic> json) {
    final l$status = json['status'];
    final l$url = json['url'];
    final l$error = json['error'];
    final l$$__typename = json['__typename'];
    return Fragment$IntentResult(
      status: fromJson$Enum$TopUpWalletStatus((l$status as String)),
      url: (l$url as String?),
      error: (l$error as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$TopUpWalletStatus status;

  final String? url;

  final String? error;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$status = status;
    _resultData['status'] = toJson$Enum$TopUpWalletStatus(l$status);
    final l$url = url;
    _resultData['url'] = l$url;
    final l$error = error;
    _resultData['error'] = l$error;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$status = status;
    final l$url = url;
    final l$error = error;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$status,
      l$url,
      l$error,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$IntentResult || runtimeType != other.runtimeType) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$error = error;
    final lOther$error = other.error;
    if (l$error != lOther$error) {
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

extension UtilityExtension$Fragment$IntentResult on Fragment$IntentResult {
  CopyWith$Fragment$IntentResult<Fragment$IntentResult> get copyWith =>
      CopyWith$Fragment$IntentResult(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$IntentResult<TRes> {
  factory CopyWith$Fragment$IntentResult(
    Fragment$IntentResult instance,
    TRes Function(Fragment$IntentResult) then,
  ) = _CopyWithImpl$Fragment$IntentResult;

  factory CopyWith$Fragment$IntentResult.stub(TRes res) =
      _CopyWithStubImpl$Fragment$IntentResult;

  TRes call({
    Enum$TopUpWalletStatus? status,
    String? url,
    String? error,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$IntentResult<TRes>
    implements CopyWith$Fragment$IntentResult<TRes> {
  _CopyWithImpl$Fragment$IntentResult(
    this._instance,
    this._then,
  );

  final Fragment$IntentResult _instance;

  final TRes Function(Fragment$IntentResult) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? status = _undefined,
    Object? url = _undefined,
    Object? error = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$IntentResult(
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$TopUpWalletStatus),
        url: url == _undefined ? _instance.url : (url as String?),
        error: error == _undefined ? _instance.error : (error as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$IntentResult<TRes>
    implements CopyWith$Fragment$IntentResult<TRes> {
  _CopyWithStubImpl$Fragment$IntentResult(this._res);

  TRes _res;

  call({
    Enum$TopUpWalletStatus? status,
    String? url,
    String? error,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionIntentResult = FragmentDefinitionNode(
  name: NameNode(value: 'IntentResult'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'TopUpWalletResponse'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'status'),
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
      name: NameNode(value: 'error'),
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
const documentNodeFragmentIntentResult = DocumentNode(definitions: [
  fragmentDefinitionIntentResult,
]);

extension ClientExtension$Fragment$IntentResult on graphql.GraphQLClient {
  void writeFragment$IntentResult({
    required Fragment$IntentResult data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'IntentResult',
            document: documentNodeFragmentIntentResult,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$IntentResult? readFragment$IntentResult({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'IntentResult',
          document: documentNodeFragmentIntentResult,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$IntentResult.fromJson(result);
  }
}
