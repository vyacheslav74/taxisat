import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$ReviewParameter {
  Fragment$ReviewParameter({
    required this.id,
    required this.isGood,
    required this.title,
    this.$__typename = 'FeedbackParameter',
  });

  factory Fragment$ReviewParameter.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$isGood = json['isGood'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Fragment$ReviewParameter(
      id: (l$id as String),
      isGood: (l$isGood as bool),
      title: (l$title as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final bool isGood;

  final String title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$isGood = isGood;
    _resultData['isGood'] = l$isGood;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$isGood = isGood;
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$isGood,
      l$title,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$ReviewParameter ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$isGood = isGood;
    final lOther$isGood = other.isGood;
    if (l$isGood != lOther$isGood) {
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

extension UtilityExtension$Fragment$ReviewParameter
    on Fragment$ReviewParameter {
  CopyWith$Fragment$ReviewParameter<Fragment$ReviewParameter> get copyWith =>
      CopyWith$Fragment$ReviewParameter(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$ReviewParameter<TRes> {
  factory CopyWith$Fragment$ReviewParameter(
    Fragment$ReviewParameter instance,
    TRes Function(Fragment$ReviewParameter) then,
  ) = _CopyWithImpl$Fragment$ReviewParameter;

  factory CopyWith$Fragment$ReviewParameter.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ReviewParameter;

  TRes call({
    String? id,
    bool? isGood,
    String? title,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$ReviewParameter<TRes>
    implements CopyWith$Fragment$ReviewParameter<TRes> {
  _CopyWithImpl$Fragment$ReviewParameter(
    this._instance,
    this._then,
  );

  final Fragment$ReviewParameter _instance;

  final TRes Function(Fragment$ReviewParameter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? isGood = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ReviewParameter(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        isGood: isGood == _undefined || isGood == null
            ? _instance.isGood
            : (isGood as bool),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$ReviewParameter<TRes>
    implements CopyWith$Fragment$ReviewParameter<TRes> {
  _CopyWithStubImpl$Fragment$ReviewParameter(this._res);

  TRes _res;

  call({
    String? id,
    bool? isGood,
    String? title,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionReviewParameter = FragmentDefinitionNode(
  name: NameNode(value: 'ReviewParameter'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'FeedbackParameter'),
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
      name: NameNode(value: 'isGood'),
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
);
const documentNodeFragmentReviewParameter = DocumentNode(definitions: [
  fragmentDefinitionReviewParameter,
]);

extension ClientExtension$Fragment$ReviewParameter on graphql.GraphQLClient {
  void writeFragment$ReviewParameter({
    required Fragment$ReviewParameter data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'ReviewParameter',
            document: documentNodeFragmentReviewParameter,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$ReviewParameter? readFragment$ReviewParameter({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'ReviewParameter',
          document: documentNodeFragmentReviewParameter,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$ReviewParameter.fromJson(result);
  }
}
