import '../schema.gql.dart';
import 'package:flutter_common/core/graphql/scalars/timestamp.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$SavedPaymentMethodFragment {
  Fragment$SavedPaymentMethodFragment({
    required this.id,
    this.providerBrand,
    this.lastFour,
    required this.isEnabled,
    required this.isDefault,
    required this.title,
    this.expiryDate,
    this.holderName,
    this.$__typename = 'SavedPaymentMethod',
  });

  factory Fragment$SavedPaymentMethodFragment.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$providerBrand = json['providerBrand'];
    final l$lastFour = json['lastFour'];
    final l$isEnabled = json['isEnabled'];
    final l$isDefault = json['isDefault'];
    final l$title = json['title'];
    final l$expiryDate = json['expiryDate'];
    final l$holderName = json['holderName'];
    final l$$__typename = json['__typename'];
    return Fragment$SavedPaymentMethodFragment(
      id: (l$id as String),
      providerBrand: l$providerBrand == null
          ? null
          : fromJson$Enum$ProviderBrand((l$providerBrand as String)),
      lastFour: (l$lastFour as String?),
      isEnabled: (l$isEnabled as bool),
      isDefault: (l$isDefault as bool),
      title: (l$title as String),
      expiryDate: l$expiryDate == null
          ? null
          : fromGraphQLTimestampToDartDateTime(l$expiryDate),
      holderName: (l$holderName as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Enum$ProviderBrand? providerBrand;

  final String? lastFour;

  final bool isEnabled;

  final bool isDefault;

  final String title;

  final DateTime? expiryDate;

  final String? holderName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$providerBrand = providerBrand;
    _resultData['providerBrand'] = l$providerBrand == null
        ? null
        : toJson$Enum$ProviderBrand(l$providerBrand);
    final l$lastFour = lastFour;
    _resultData['lastFour'] = l$lastFour;
    final l$isEnabled = isEnabled;
    _resultData['isEnabled'] = l$isEnabled;
    final l$isDefault = isDefault;
    _resultData['isDefault'] = l$isDefault;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$expiryDate = expiryDate;
    _resultData['expiryDate'] = l$expiryDate == null
        ? null
        : fromDartDateTimeToGraphQLTimestamp(l$expiryDate);
    final l$holderName = holderName;
    _resultData['holderName'] = l$holderName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$providerBrand = providerBrand;
    final l$lastFour = lastFour;
    final l$isEnabled = isEnabled;
    final l$isDefault = isDefault;
    final l$title = title;
    final l$expiryDate = expiryDate;
    final l$holderName = holderName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$providerBrand,
      l$lastFour,
      l$isEnabled,
      l$isDefault,
      l$title,
      l$expiryDate,
      l$holderName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$SavedPaymentMethodFragment ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$providerBrand = providerBrand;
    final lOther$providerBrand = other.providerBrand;
    if (l$providerBrand != lOther$providerBrand) {
      return false;
    }
    final l$lastFour = lastFour;
    final lOther$lastFour = other.lastFour;
    if (l$lastFour != lOther$lastFour) {
      return false;
    }
    final l$isEnabled = isEnabled;
    final lOther$isEnabled = other.isEnabled;
    if (l$isEnabled != lOther$isEnabled) {
      return false;
    }
    final l$isDefault = isDefault;
    final lOther$isDefault = other.isDefault;
    if (l$isDefault != lOther$isDefault) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$expiryDate = expiryDate;
    final lOther$expiryDate = other.expiryDate;
    if (l$expiryDate != lOther$expiryDate) {
      return false;
    }
    final l$holderName = holderName;
    final lOther$holderName = other.holderName;
    if (l$holderName != lOther$holderName) {
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

extension UtilityExtension$Fragment$SavedPaymentMethodFragment
    on Fragment$SavedPaymentMethodFragment {
  CopyWith$Fragment$SavedPaymentMethodFragment<
          Fragment$SavedPaymentMethodFragment>
      get copyWith => CopyWith$Fragment$SavedPaymentMethodFragment(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$SavedPaymentMethodFragment<TRes> {
  factory CopyWith$Fragment$SavedPaymentMethodFragment(
    Fragment$SavedPaymentMethodFragment instance,
    TRes Function(Fragment$SavedPaymentMethodFragment) then,
  ) = _CopyWithImpl$Fragment$SavedPaymentMethodFragment;

  factory CopyWith$Fragment$SavedPaymentMethodFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$SavedPaymentMethodFragment;

  TRes call({
    String? id,
    Enum$ProviderBrand? providerBrand,
    String? lastFour,
    bool? isEnabled,
    bool? isDefault,
    String? title,
    DateTime? expiryDate,
    String? holderName,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$SavedPaymentMethodFragment<TRes>
    implements CopyWith$Fragment$SavedPaymentMethodFragment<TRes> {
  _CopyWithImpl$Fragment$SavedPaymentMethodFragment(
    this._instance,
    this._then,
  );

  final Fragment$SavedPaymentMethodFragment _instance;

  final TRes Function(Fragment$SavedPaymentMethodFragment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? providerBrand = _undefined,
    Object? lastFour = _undefined,
    Object? isEnabled = _undefined,
    Object? isDefault = _undefined,
    Object? title = _undefined,
    Object? expiryDate = _undefined,
    Object? holderName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$SavedPaymentMethodFragment(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        providerBrand: providerBrand == _undefined
            ? _instance.providerBrand
            : (providerBrand as Enum$ProviderBrand?),
        lastFour:
            lastFour == _undefined ? _instance.lastFour : (lastFour as String?),
        isEnabled: isEnabled == _undefined || isEnabled == null
            ? _instance.isEnabled
            : (isEnabled as bool),
        isDefault: isDefault == _undefined || isDefault == null
            ? _instance.isDefault
            : (isDefault as bool),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        expiryDate: expiryDate == _undefined
            ? _instance.expiryDate
            : (expiryDate as DateTime?),
        holderName: holderName == _undefined
            ? _instance.holderName
            : (holderName as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$SavedPaymentMethodFragment<TRes>
    implements CopyWith$Fragment$SavedPaymentMethodFragment<TRes> {
  _CopyWithStubImpl$Fragment$SavedPaymentMethodFragment(this._res);

  TRes _res;

  call({
    String? id,
    Enum$ProviderBrand? providerBrand,
    String? lastFour,
    bool? isEnabled,
    bool? isDefault,
    String? title,
    DateTime? expiryDate,
    String? holderName,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionSavedPaymentMethodFragment = FragmentDefinitionNode(
  name: NameNode(value: 'SavedPaymentMethodFragment'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'SavedPaymentMethod'),
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
      name: NameNode(value: 'providerBrand'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'lastFour'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'isEnabled'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'isDefault'),
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
      name: NameNode(value: 'expiryDate'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'holderName'),
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
const documentNodeFragmentSavedPaymentMethodFragment =
    DocumentNode(definitions: [
  fragmentDefinitionSavedPaymentMethodFragment,
]);

extension ClientExtension$Fragment$SavedPaymentMethodFragment
    on graphql.GraphQLClient {
  void writeFragment$SavedPaymentMethodFragment({
    required Fragment$SavedPaymentMethodFragment data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'SavedPaymentMethodFragment',
            document: documentNodeFragmentSavedPaymentMethodFragment,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$SavedPaymentMethodFragment? readFragment$SavedPaymentMethodFragment({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'SavedPaymentMethodFragment',
          document: documentNodeFragmentSavedPaymentMethodFragment,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Fragment$SavedPaymentMethodFragment.fromJson(result);
  }
}
