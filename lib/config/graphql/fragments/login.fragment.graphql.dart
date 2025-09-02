import 'media.fragment.graphql.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'profile.fragment.graphql.dart';

class Fragment$VerifyNumberFragment {
  Fragment$VerifyNumberFragment({
    this.hash,
    required this.isExistingUser,
    this.$__typename = 'VerifyNumberDto',
  });

  factory Fragment$VerifyNumberFragment.fromJson(Map<String, dynamic> json) {
    final l$hash = json['hash'];
    final l$isExistingUser = json['isExistingUser'];
    final l$$__typename = json['__typename'];
    return Fragment$VerifyNumberFragment(
      hash: (l$hash as String?),
      isExistingUser: (l$isExistingUser as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String? hash;

  final bool isExistingUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hash = hash;
    _resultData['hash'] = l$hash;
    final l$isExistingUser = isExistingUser;
    _resultData['isExistingUser'] = l$isExistingUser;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hash = hash;
    final l$isExistingUser = isExistingUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hash,
      l$isExistingUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$VerifyNumberFragment ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hash = hash;
    final lOther$hash = other.hash;
    if (l$hash != lOther$hash) {
      return false;
    }
    final l$isExistingUser = isExistingUser;
    final lOther$isExistingUser = other.isExistingUser;
    if (l$isExistingUser != lOther$isExistingUser) {
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

extension UtilityExtension$Fragment$VerifyNumberFragment
    on Fragment$VerifyNumberFragment {
  CopyWith$Fragment$VerifyNumberFragment<Fragment$VerifyNumberFragment>
      get copyWith => CopyWith$Fragment$VerifyNumberFragment(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$VerifyNumberFragment<TRes> {
  factory CopyWith$Fragment$VerifyNumberFragment(
    Fragment$VerifyNumberFragment instance,
    TRes Function(Fragment$VerifyNumberFragment) then,
  ) = _CopyWithImpl$Fragment$VerifyNumberFragment;

  factory CopyWith$Fragment$VerifyNumberFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$VerifyNumberFragment;

  TRes call({
    String? hash,
    bool? isExistingUser,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$VerifyNumberFragment<TRes>
    implements CopyWith$Fragment$VerifyNumberFragment<TRes> {
  _CopyWithImpl$Fragment$VerifyNumberFragment(
    this._instance,
    this._then,
  );

  final Fragment$VerifyNumberFragment _instance;

  final TRes Function(Fragment$VerifyNumberFragment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hash = _undefined,
    Object? isExistingUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$VerifyNumberFragment(
        hash: hash == _undefined ? _instance.hash : (hash as String?),
        isExistingUser: isExistingUser == _undefined || isExistingUser == null
            ? _instance.isExistingUser
            : (isExistingUser as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$VerifyNumberFragment<TRes>
    implements CopyWith$Fragment$VerifyNumberFragment<TRes> {
  _CopyWithStubImpl$Fragment$VerifyNumberFragment(this._res);

  TRes _res;

  call({
    String? hash,
    bool? isExistingUser,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionVerifyNumberFragment = FragmentDefinitionNode(
  name: NameNode(value: 'VerifyNumberFragment'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'VerifyNumberDto'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'hash'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'isExistingUser'),
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
const documentNodeFragmentVerifyNumberFragment = DocumentNode(definitions: [
  fragmentDefinitionVerifyNumberFragment,
]);

extension ClientExtension$Fragment$VerifyNumberFragment
    on graphql.GraphQLClient {
  void writeFragment$VerifyNumberFragment({
    required Fragment$VerifyNumberFragment data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'VerifyNumberFragment',
            document: documentNodeFragmentVerifyNumberFragment,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$VerifyNumberFragment? readFragment$VerifyNumberFragment({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'VerifyNumberFragment',
          document: documentNodeFragmentVerifyNumberFragment,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Fragment$VerifyNumberFragment.fromJson(result);
  }
}

class Fragment$VerifyOtpOrPasswordFragment {
  Fragment$VerifyOtpOrPasswordFragment({
    required this.hasPassword,
    required this.user,
    required this.hasName,
    required this.jwtToken,
    this.$__typename = 'VerifcationResult',
  });

  factory Fragment$VerifyOtpOrPasswordFragment.fromJson(
      Map<String, dynamic> json) {
    final l$hasPassword = json['hasPassword'];
    final l$user = json['user'];
    final l$hasName = json['hasName'];
    final l$jwtToken = json['jwtToken'];
    final l$$__typename = json['__typename'];
    return Fragment$VerifyOtpOrPasswordFragment(
      hasPassword: (l$hasPassword as bool),
      user: Fragment$ProfileFragment.fromJson((l$user as Map<String, dynamic>)),
      hasName: (l$hasName as bool),
      jwtToken: (l$jwtToken as String),
      $__typename: (l$$__typename as String),
    );
  }

  final bool hasPassword;

  final Fragment$ProfileFragment user;

  final bool hasName;

  final String jwtToken;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasPassword = hasPassword;
    _resultData['hasPassword'] = l$hasPassword;
    final l$user = user;
    _resultData['user'] = l$user.toJson();
    final l$hasName = hasName;
    _resultData['hasName'] = l$hasName;
    final l$jwtToken = jwtToken;
    _resultData['jwtToken'] = l$jwtToken;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hasPassword = hasPassword;
    final l$user = user;
    final l$hasName = hasName;
    final l$jwtToken = jwtToken;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hasPassword,
      l$user,
      l$hasName,
      l$jwtToken,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$VerifyOtpOrPasswordFragment ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hasPassword = hasPassword;
    final lOther$hasPassword = other.hasPassword;
    if (l$hasPassword != lOther$hasPassword) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$hasName = hasName;
    final lOther$hasName = other.hasName;
    if (l$hasName != lOther$hasName) {
      return false;
    }
    final l$jwtToken = jwtToken;
    final lOther$jwtToken = other.jwtToken;
    if (l$jwtToken != lOther$jwtToken) {
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

extension UtilityExtension$Fragment$VerifyOtpOrPasswordFragment
    on Fragment$VerifyOtpOrPasswordFragment {
  CopyWith$Fragment$VerifyOtpOrPasswordFragment<
          Fragment$VerifyOtpOrPasswordFragment>
      get copyWith => CopyWith$Fragment$VerifyOtpOrPasswordFragment(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$VerifyOtpOrPasswordFragment<TRes> {
  factory CopyWith$Fragment$VerifyOtpOrPasswordFragment(
    Fragment$VerifyOtpOrPasswordFragment instance,
    TRes Function(Fragment$VerifyOtpOrPasswordFragment) then,
  ) = _CopyWithImpl$Fragment$VerifyOtpOrPasswordFragment;

  factory CopyWith$Fragment$VerifyOtpOrPasswordFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$VerifyOtpOrPasswordFragment;

  TRes call({
    bool? hasPassword,
    Fragment$ProfileFragment? user,
    bool? hasName,
    String? jwtToken,
    String? $__typename,
  });
  CopyWith$Fragment$ProfileFragment<TRes> get user;
}

class _CopyWithImpl$Fragment$VerifyOtpOrPasswordFragment<TRes>
    implements CopyWith$Fragment$VerifyOtpOrPasswordFragment<TRes> {
  _CopyWithImpl$Fragment$VerifyOtpOrPasswordFragment(
    this._instance,
    this._then,
  );

  final Fragment$VerifyOtpOrPasswordFragment _instance;

  final TRes Function(Fragment$VerifyOtpOrPasswordFragment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasPassword = _undefined,
    Object? user = _undefined,
    Object? hasName = _undefined,
    Object? jwtToken = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$VerifyOtpOrPasswordFragment(
        hasPassword: hasPassword == _undefined || hasPassword == null
            ? _instance.hasPassword
            : (hasPassword as bool),
        user: user == _undefined || user == null
            ? _instance.user
            : (user as Fragment$ProfileFragment),
        hasName: hasName == _undefined || hasName == null
            ? _instance.hasName
            : (hasName as bool),
        jwtToken: jwtToken == _undefined || jwtToken == null
            ? _instance.jwtToken
            : (jwtToken as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ProfileFragment<TRes> get user {
    final local$user = _instance.user;
    return CopyWith$Fragment$ProfileFragment(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Fragment$VerifyOtpOrPasswordFragment<TRes>
    implements CopyWith$Fragment$VerifyOtpOrPasswordFragment<TRes> {
  _CopyWithStubImpl$Fragment$VerifyOtpOrPasswordFragment(this._res);

  TRes _res;

  call({
    bool? hasPassword,
    Fragment$ProfileFragment? user,
    bool? hasName,
    String? jwtToken,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ProfileFragment<TRes> get user =>
      CopyWith$Fragment$ProfileFragment.stub(_res);
}

const fragmentDefinitionVerifyOtpOrPasswordFragment = FragmentDefinitionNode(
  name: NameNode(value: 'VerifyOtpOrPasswordFragment'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'VerifcationResult'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'hasPassword'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'user'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'ProfileFragment'),
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
      name: NameNode(value: 'hasName'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'jwtToken'),
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
const documentNodeFragmentVerifyOtpOrPasswordFragment =
    DocumentNode(definitions: [
  fragmentDefinitionVerifyOtpOrPasswordFragment,
  fragmentDefinitionProfileFragment,
  fragmentDefinitionMediaFragment,
]);

extension ClientExtension$Fragment$VerifyOtpOrPasswordFragment
    on graphql.GraphQLClient {
  void writeFragment$VerifyOtpOrPasswordFragment({
    required Fragment$VerifyOtpOrPasswordFragment data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'VerifyOtpOrPasswordFragment',
            document: documentNodeFragmentVerifyOtpOrPasswordFragment,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$VerifyOtpOrPasswordFragment?
      readFragment$VerifyOtpOrPasswordFragment({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'VerifyOtpOrPasswordFragment',
          document: documentNodeFragmentVerifyOtpOrPasswordFragment,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Fragment$VerifyOtpOrPasswordFragment.fromJson(result);
  }
}
