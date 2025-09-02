import '../schema.gql.dart';
import 'media.fragment.graphql.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$PaymentGatewayFragment {
  Fragment$PaymentGatewayFragment({
    required this.id,
    required this.title,
    required this.type,
    required this.linkMethod,
    this.media,
    this.$__typename = 'PaymentGateway',
  });

  factory Fragment$PaymentGatewayFragment.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$type = json['type'];
    final l$linkMethod = json['linkMethod'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Fragment$PaymentGatewayFragment(
      id: (l$id as String),
      title: (l$title as String),
      type: fromJson$Enum$PaymentGatewayType((l$type as String)),
      linkMethod: fromJson$Enum$GatewayLinkMethod((l$linkMethod as String)),
      media: l$media == null
          ? null
          : Fragment$PaymentGatewayFragment$media.fromJson(
              (l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final Enum$PaymentGatewayType type;

  final Enum$GatewayLinkMethod linkMethod;

  final Fragment$PaymentGatewayFragment$media? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$type = type;
    _resultData['type'] = toJson$Enum$PaymentGatewayType(l$type);
    final l$linkMethod = linkMethod;
    _resultData['linkMethod'] = toJson$Enum$GatewayLinkMethod(l$linkMethod);
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$type = type;
    final l$linkMethod = linkMethod;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$type,
      l$linkMethod,
      l$media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$PaymentGatewayFragment ||
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
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$linkMethod = linkMethod;
    final lOther$linkMethod = other.linkMethod;
    if (l$linkMethod != lOther$linkMethod) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
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

extension UtilityExtension$Fragment$PaymentGatewayFragment
    on Fragment$PaymentGatewayFragment {
  CopyWith$Fragment$PaymentGatewayFragment<Fragment$PaymentGatewayFragment>
      get copyWith => CopyWith$Fragment$PaymentGatewayFragment(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$PaymentGatewayFragment<TRes> {
  factory CopyWith$Fragment$PaymentGatewayFragment(
    Fragment$PaymentGatewayFragment instance,
    TRes Function(Fragment$PaymentGatewayFragment) then,
  ) = _CopyWithImpl$Fragment$PaymentGatewayFragment;

  factory CopyWith$Fragment$PaymentGatewayFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PaymentGatewayFragment;

  TRes call({
    String? id,
    String? title,
    Enum$PaymentGatewayType? type,
    Enum$GatewayLinkMethod? linkMethod,
    Fragment$PaymentGatewayFragment$media? media,
    String? $__typename,
  });
  CopyWith$Fragment$PaymentGatewayFragment$media<TRes> get media;
}

class _CopyWithImpl$Fragment$PaymentGatewayFragment<TRes>
    implements CopyWith$Fragment$PaymentGatewayFragment<TRes> {
  _CopyWithImpl$Fragment$PaymentGatewayFragment(
    this._instance,
    this._then,
  );

  final Fragment$PaymentGatewayFragment _instance;

  final TRes Function(Fragment$PaymentGatewayFragment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? type = _undefined,
    Object? linkMethod = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$PaymentGatewayFragment(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        type: type == _undefined || type == null
            ? _instance.type
            : (type as Enum$PaymentGatewayType),
        linkMethod: linkMethod == _undefined || linkMethod == null
            ? _instance.linkMethod
            : (linkMethod as Enum$GatewayLinkMethod),
        media: media == _undefined
            ? _instance.media
            : (media as Fragment$PaymentGatewayFragment$media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$PaymentGatewayFragment$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Fragment$PaymentGatewayFragment$media.stub(_then(_instance))
        : CopyWith$Fragment$PaymentGatewayFragment$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Fragment$PaymentGatewayFragment<TRes>
    implements CopyWith$Fragment$PaymentGatewayFragment<TRes> {
  _CopyWithStubImpl$Fragment$PaymentGatewayFragment(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    Enum$PaymentGatewayType? type,
    Enum$GatewayLinkMethod? linkMethod,
    Fragment$PaymentGatewayFragment$media? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PaymentGatewayFragment$media<TRes> get media =>
      CopyWith$Fragment$PaymentGatewayFragment$media.stub(_res);
}

const fragmentDefinitionPaymentGatewayFragment = FragmentDefinitionNode(
  name: NameNode(value: 'PaymentGatewayFragment'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'PaymentGateway'),
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
      name: NameNode(value: 'title'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'type'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'linkMethod'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'media'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'MediaFragment'),
          directives: [],
        ),
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
const documentNodeFragmentPaymentGatewayFragment = DocumentNode(definitions: [
  fragmentDefinitionPaymentGatewayFragment,
  fragmentDefinitionMediaFragment,
]);

extension ClientExtension$Fragment$PaymentGatewayFragment
    on graphql.GraphQLClient {
  void writeFragment$PaymentGatewayFragment({
    required Fragment$PaymentGatewayFragment data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'PaymentGatewayFragment',
            document: documentNodeFragmentPaymentGatewayFragment,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$PaymentGatewayFragment? readFragment$PaymentGatewayFragment({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'PaymentGatewayFragment',
          document: documentNodeFragmentPaymentGatewayFragment,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Fragment$PaymentGatewayFragment.fromJson(result);
  }
}

class Fragment$PaymentGatewayFragment$media implements Fragment$MediaFragment {
  Fragment$PaymentGatewayFragment$media({
    required this.id,
    required this.address,
    this.$__typename = 'Media',
  });

  factory Fragment$PaymentGatewayFragment$media.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$address = json['address'];
    final l$$__typename = json['__typename'];
    return Fragment$PaymentGatewayFragment$media(
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
    if (other is! Fragment$PaymentGatewayFragment$media ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$PaymentGatewayFragment$media
    on Fragment$PaymentGatewayFragment$media {
  CopyWith$Fragment$PaymentGatewayFragment$media<
          Fragment$PaymentGatewayFragment$media>
      get copyWith => CopyWith$Fragment$PaymentGatewayFragment$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$PaymentGatewayFragment$media<TRes> {
  factory CopyWith$Fragment$PaymentGatewayFragment$media(
    Fragment$PaymentGatewayFragment$media instance,
    TRes Function(Fragment$PaymentGatewayFragment$media) then,
  ) = _CopyWithImpl$Fragment$PaymentGatewayFragment$media;

  factory CopyWith$Fragment$PaymentGatewayFragment$media.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PaymentGatewayFragment$media;

  TRes call({
    String? id,
    String? address,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PaymentGatewayFragment$media<TRes>
    implements CopyWith$Fragment$PaymentGatewayFragment$media<TRes> {
  _CopyWithImpl$Fragment$PaymentGatewayFragment$media(
    this._instance,
    this._then,
  );

  final Fragment$PaymentGatewayFragment$media _instance;

  final TRes Function(Fragment$PaymentGatewayFragment$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? address = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$PaymentGatewayFragment$media(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        address: address == _undefined || address == null
            ? _instance.address
            : (address as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$PaymentGatewayFragment$media<TRes>
    implements CopyWith$Fragment$PaymentGatewayFragment$media<TRes> {
  _CopyWithStubImpl$Fragment$PaymentGatewayFragment$media(this._res);

  TRes _res;

  call({
    String? id,
    String? address,
    String? $__typename,
  }) =>
      _res;
}
