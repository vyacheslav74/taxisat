import '../schema.gql.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$RideOption {
  Fragment$RideOption({
    required this.id,
    required this.name,
    this.description,
    required this.type,
    this.additionalFee,
    required this.icon,
    this.$__typename = 'ServiceOption',
  });

  factory Fragment$RideOption.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$type = json['type'];
    final l$additionalFee = json['additionalFee'];
    final l$icon = json['icon'];
    final l$$__typename = json['__typename'];
    return Fragment$RideOption(
      id: (l$id as String),
      name: (l$name as String),
      description: (l$description as String?),
      type: fromJson$Enum$ServiceOptionType((l$type as String)),
      additionalFee: (l$additionalFee as num?)?.toDouble(),
      icon: fromJson$Enum$ServiceOptionIcon((l$icon as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String? description;

  final Enum$ServiceOptionType type;

  final double? additionalFee;

  final Enum$ServiceOptionIcon icon;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$type = type;
    _resultData['type'] = toJson$Enum$ServiceOptionType(l$type);
    final l$additionalFee = additionalFee;
    _resultData['additionalFee'] = l$additionalFee;
    final l$icon = icon;
    _resultData['icon'] = toJson$Enum$ServiceOptionIcon(l$icon);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$description = description;
    final l$type = type;
    final l$additionalFee = additionalFee;
    final l$icon = icon;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$description,
      l$type,
      l$additionalFee,
      l$icon,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$RideOption || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$additionalFee = additionalFee;
    final lOther$additionalFee = other.additionalFee;
    if (l$additionalFee != lOther$additionalFee) {
      return false;
    }
    final l$icon = icon;
    final lOther$icon = other.icon;
    if (l$icon != lOther$icon) {
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

extension UtilityExtension$Fragment$RideOption on Fragment$RideOption {
  CopyWith$Fragment$RideOption<Fragment$RideOption> get copyWith =>
      CopyWith$Fragment$RideOption(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$RideOption<TRes> {
  factory CopyWith$Fragment$RideOption(
    Fragment$RideOption instance,
    TRes Function(Fragment$RideOption) then,
  ) = _CopyWithImpl$Fragment$RideOption;

  factory CopyWith$Fragment$RideOption.stub(TRes res) =
      _CopyWithStubImpl$Fragment$RideOption;

  TRes call({
    String? id,
    String? name,
    String? description,
    Enum$ServiceOptionType? type,
    double? additionalFee,
    Enum$ServiceOptionIcon? icon,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$RideOption<TRes>
    implements CopyWith$Fragment$RideOption<TRes> {
  _CopyWithImpl$Fragment$RideOption(
    this._instance,
    this._then,
  );

  final Fragment$RideOption _instance;

  final TRes Function(Fragment$RideOption) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? type = _undefined,
    Object? additionalFee = _undefined,
    Object? icon = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$RideOption(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        type: type == _undefined || type == null
            ? _instance.type
            : (type as Enum$ServiceOptionType),
        additionalFee: additionalFee == _undefined
            ? _instance.additionalFee
            : (additionalFee as double?),
        icon: icon == _undefined || icon == null
            ? _instance.icon
            : (icon as Enum$ServiceOptionIcon),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$RideOption<TRes>
    implements CopyWith$Fragment$RideOption<TRes> {
  _CopyWithStubImpl$Fragment$RideOption(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? description,
    Enum$ServiceOptionType? type,
    double? additionalFee,
    Enum$ServiceOptionIcon? icon,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionRideOption = FragmentDefinitionNode(
  name: NameNode(value: 'RideOption'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'ServiceOption'),
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
      name: NameNode(value: 'name'),
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
      name: NameNode(value: 'type'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'additionalFee'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'icon'),
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
const documentNodeFragmentRideOption = DocumentNode(definitions: [
  fragmentDefinitionRideOption,
]);

extension ClientExtension$Fragment$RideOption on graphql.GraphQLClient {
  void writeFragment$RideOption({
    required Fragment$RideOption data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'RideOption',
            document: documentNodeFragmentRideOption,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$RideOption? readFragment$RideOption({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'RideOption',
          document: documentNodeFragmentRideOption,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$RideOption.fromJson(result);
  }
}
