import '../schema.gql.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'point.fragment.graphql.dart';

class Fragment$FavoriteLocationFragment {
  Fragment$FavoriteLocationFragment({
    required this.id,
    required this.title,
    required this.type,
    required this.details,
    required this.location,
    this.$__typename = 'RiderAddress',
  });

  factory Fragment$FavoriteLocationFragment.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$type = json['type'];
    final l$details = json['details'];
    final l$location = json['location'];
    final l$$__typename = json['__typename'];
    return Fragment$FavoriteLocationFragment(
      id: (l$id as String),
      title: (l$title as String),
      type: fromJson$Enum$RiderAddressType((l$type as String)),
      details: (l$details as String),
      location:
          Fragment$PointFragment.fromJson((l$location as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final Enum$RiderAddressType type;

  final String details;

  final Fragment$PointFragment location;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$type = type;
    _resultData['type'] = toJson$Enum$RiderAddressType(l$type);
    final l$details = details;
    _resultData['details'] = l$details;
    final l$location = location;
    _resultData['location'] = l$location.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$type = type;
    final l$details = details;
    final l$location = location;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$type,
      l$details,
      l$location,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$FavoriteLocationFragment ||
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
    final l$details = details;
    final lOther$details = other.details;
    if (l$details != lOther$details) {
      return false;
    }
    final l$location = location;
    final lOther$location = other.location;
    if (l$location != lOther$location) {
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

extension UtilityExtension$Fragment$FavoriteLocationFragment
    on Fragment$FavoriteLocationFragment {
  CopyWith$Fragment$FavoriteLocationFragment<Fragment$FavoriteLocationFragment>
      get copyWith => CopyWith$Fragment$FavoriteLocationFragment(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FavoriteLocationFragment<TRes> {
  factory CopyWith$Fragment$FavoriteLocationFragment(
    Fragment$FavoriteLocationFragment instance,
    TRes Function(Fragment$FavoriteLocationFragment) then,
  ) = _CopyWithImpl$Fragment$FavoriteLocationFragment;

  factory CopyWith$Fragment$FavoriteLocationFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FavoriteLocationFragment;

  TRes call({
    String? id,
    String? title,
    Enum$RiderAddressType? type,
    String? details,
    Fragment$PointFragment? location,
    String? $__typename,
  });
  CopyWith$Fragment$PointFragment<TRes> get location;
}

class _CopyWithImpl$Fragment$FavoriteLocationFragment<TRes>
    implements CopyWith$Fragment$FavoriteLocationFragment<TRes> {
  _CopyWithImpl$Fragment$FavoriteLocationFragment(
    this._instance,
    this._then,
  );

  final Fragment$FavoriteLocationFragment _instance;

  final TRes Function(Fragment$FavoriteLocationFragment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? type = _undefined,
    Object? details = _undefined,
    Object? location = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FavoriteLocationFragment(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        type: type == _undefined || type == null
            ? _instance.type
            : (type as Enum$RiderAddressType),
        details: details == _undefined || details == null
            ? _instance.details
            : (details as String),
        location: location == _undefined || location == null
            ? _instance.location
            : (location as Fragment$PointFragment),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$PointFragment<TRes> get location {
    final local$location = _instance.location;
    return CopyWith$Fragment$PointFragment(
        local$location, (e) => call(location: e));
  }
}

class _CopyWithStubImpl$Fragment$FavoriteLocationFragment<TRes>
    implements CopyWith$Fragment$FavoriteLocationFragment<TRes> {
  _CopyWithStubImpl$Fragment$FavoriteLocationFragment(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    Enum$RiderAddressType? type,
    String? details,
    Fragment$PointFragment? location,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PointFragment<TRes> get location =>
      CopyWith$Fragment$PointFragment.stub(_res);
}

const fragmentDefinitionFavoriteLocationFragment = FragmentDefinitionNode(
  name: NameNode(value: 'FavoriteLocationFragment'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'RiderAddress'),
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
      name: NameNode(value: 'details'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'location'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'PointFragment'),
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
);
const documentNodeFragmentFavoriteLocationFragment = DocumentNode(definitions: [
  fragmentDefinitionFavoriteLocationFragment,
  fragmentDefinitionPointFragment,
]);

extension ClientExtension$Fragment$FavoriteLocationFragment
    on graphql.GraphQLClient {
  void writeFragment$FavoriteLocationFragment({
    required Fragment$FavoriteLocationFragment data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'FavoriteLocationFragment',
            document: documentNodeFragmentFavoriteLocationFragment,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$FavoriteLocationFragment? readFragment$FavoriteLocationFragment({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'FavoriteLocationFragment',
          document: documentNodeFragmentFavoriteLocationFragment,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Fragment$FavoriteLocationFragment.fromJson(result);
  }
}
