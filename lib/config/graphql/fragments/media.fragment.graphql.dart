import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$MediaFragment {
  Fragment$MediaFragment({
    required this.id,
    required this.address,
    this.$__typename = 'Media',
  });

  factory Fragment$MediaFragment.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$address = json['address'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaFragment(
      id: (l$id as String),
      address: (l$address as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String address;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$address = address;
    _resultData['address'] = l$address;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$address = address;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$address,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$MediaFragment || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
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

extension UtilityExtension$Fragment$MediaFragment on Fragment$MediaFragment {
  CopyWith$Fragment$MediaFragment<Fragment$MediaFragment> get copyWith =>
      CopyWith$Fragment$MediaFragment(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$MediaFragment<TRes> {
  factory CopyWith$Fragment$MediaFragment(
    Fragment$MediaFragment instance,
    TRes Function(Fragment$MediaFragment) then,
  ) = _CopyWithImpl$Fragment$MediaFragment;

  factory CopyWith$Fragment$MediaFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaFragment;

  TRes call({
    String? id,
    String? address,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MediaFragment<TRes>
    implements CopyWith$Fragment$MediaFragment<TRes> {
  _CopyWithImpl$Fragment$MediaFragment(
    this._instance,
    this._then,
  );

  final Fragment$MediaFragment _instance;

  final TRes Function(Fragment$MediaFragment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? address = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaFragment(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        address: address == _undefined || address == null
            ? _instance.address
            : (address as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MediaFragment<TRes>
    implements CopyWith$Fragment$MediaFragment<TRes> {
  _CopyWithStubImpl$Fragment$MediaFragment(this._res);

  TRes _res;

  call({
    String? id,
    String? address,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionMediaFragment = FragmentDefinitionNode(
  name: NameNode(value: 'MediaFragment'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Media'),
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
      name: NameNode(value: 'address'),
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
const documentNodeFragmentMediaFragment = DocumentNode(definitions: [
  fragmentDefinitionMediaFragment,
]);

extension ClientExtension$Fragment$MediaFragment on graphql.GraphQLClient {
  void writeFragment$MediaFragment({
    required Fragment$MediaFragment data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'MediaFragment',
            document: documentNodeFragmentMediaFragment,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$MediaFragment? readFragment$MediaFragment({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'MediaFragment',
          document: documentNodeFragmentMediaFragment,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$MediaFragment.fromJson(result);
  }
}
