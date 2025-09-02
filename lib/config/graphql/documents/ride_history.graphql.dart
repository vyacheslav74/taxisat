import '../fragments/chat_message.fragment.graphql.dart';
import '../fragments/current_order.fragment.graphql.dart';
import '../fragments/media.fragment.graphql.dart';
import '../fragments/payment_gateway.fragment.graphql.dart';
import '../fragments/point.fragment.graphql.dart';
import '../fragments/ride_option.fragment.graphql.dart';
import '../fragments/saved_payment_method.fragment.graphql.dart';
import '../schema.gql.dart';
import 'dart:async';
import 'package:flutter_common/core/graphql/scalars/timestamp.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Query$RideHistory {
  Query$RideHistory({
    required this.orders,
    this.$__typename = 'Query',
  });

  factory Query$RideHistory.fromJson(Map<String, dynamic> json) {
    final l$orders = json['orders'];
    final l$$__typename = json['__typename'];
    return Query$RideHistory(
      orders:
          Query$RideHistory$orders.fromJson((l$orders as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$RideHistory$orders orders;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$orders = orders;
    _resultData['orders'] = l$orders.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$orders = orders;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$orders,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$RideHistory || runtimeType != other.runtimeType) {
      return false;
    }
    final l$orders = orders;
    final lOther$orders = other.orders;
    if (l$orders != lOther$orders) {
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

extension UtilityExtension$Query$RideHistory on Query$RideHistory {
  CopyWith$Query$RideHistory<Query$RideHistory> get copyWith =>
      CopyWith$Query$RideHistory(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$RideHistory<TRes> {
  factory CopyWith$Query$RideHistory(
    Query$RideHistory instance,
    TRes Function(Query$RideHistory) then,
  ) = _CopyWithImpl$Query$RideHistory;

  factory CopyWith$Query$RideHistory.stub(TRes res) =
      _CopyWithStubImpl$Query$RideHistory;

  TRes call({
    Query$RideHistory$orders? orders,
    String? $__typename,
  });
  CopyWith$Query$RideHistory$orders<TRes> get orders;
}

class _CopyWithImpl$Query$RideHistory<TRes>
    implements CopyWith$Query$RideHistory<TRes> {
  _CopyWithImpl$Query$RideHistory(
    this._instance,
    this._then,
  );

  final Query$RideHistory _instance;

  final TRes Function(Query$RideHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? orders = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$RideHistory(
        orders: orders == _undefined || orders == null
            ? _instance.orders
            : (orders as Query$RideHistory$orders),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$RideHistory$orders<TRes> get orders {
    final local$orders = _instance.orders;
    return CopyWith$Query$RideHistory$orders(
        local$orders, (e) => call(orders: e));
  }
}

class _CopyWithStubImpl$Query$RideHistory<TRes>
    implements CopyWith$Query$RideHistory<TRes> {
  _CopyWithStubImpl$Query$RideHistory(this._res);

  TRes _res;

  call({
    Query$RideHistory$orders? orders,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$RideHistory$orders<TRes> get orders =>
      CopyWith$Query$RideHistory$orders.stub(_res);
}

const documentNodeQueryRideHistory = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'RideHistory'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'orders'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'sorting'),
            value: ListValueNode(values: [
              ObjectValueNode(fields: [
                ObjectFieldNode(
                  name: NameNode(value: 'field'),
                  value: EnumValueNode(name: NameNode(value: 'id')),
                ),
                ObjectFieldNode(
                  name: NameNode(value: 'direction'),
                  value: EnumValueNode(name: NameNode(value: 'DESC')),
                ),
              ])
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: 'paging'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'first'),
                value: IntValueNode(value: '20'),
              )
            ]),
          ),
        ],
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
                  FragmentSpreadNode(
                    name: NameNode(value: 'CurrentOrder'),
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
                    name: NameNode(value: 'createdOn'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'expectedTimestamp'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'startTimestamp'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'finishTimestamp'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'riderLastSeenMessagesAt'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'distanceBest'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'durationBest'),
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
                    name: NameNode(value: 'destinationArrivedTo'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'etaPickup'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'paidAmount'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'costAfterCoupon'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'costBest'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'currency'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'addresses'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'waitMinutes'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'paymentMode'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'durationBest'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'riderLastSeenMessagesAt'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'paymentGateway'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'PaymentGatewayFragment'),
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
                  ),
                  FieldNode(
                    name: NameNode(value: 'savedPaymentMethod'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'SavedPaymentMethodFragment'),
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
                  ),
                  FieldNode(
                    name: NameNode(value: 'points'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'PointFragment'),
                        directives: [],
                      ),
                      FieldNode(
                        name: NameNode(value: 'lat'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'lng'),
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
                    name: NameNode(value: 'directions'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'PointFragment'),
                        directives: [],
                      ),
                      FieldNode(
                        name: NameNode(value: 'lat'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'lng'),
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
                    name: NameNode(value: 'driverDirections'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'PointFragment'),
                        directives: [],
                      ),
                      FieldNode(
                        name: NameNode(value: 'lat'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'lng'),
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
                    name: NameNode(value: 'driver'),
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
                        name: NameNode(value: 'firstName'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'lastName'),
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
                        name: NameNode(value: 'mobileNumber'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'carPlate'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'car'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'name'),
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
                        name: NameNode(value: 'carColor'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'name'),
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
                        name: NameNode(value: 'rating'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'reviewCount'),
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
                    name: NameNode(value: 'service'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'media'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
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
                        name: NameNode(value: 'prepayPercent'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'cancellationTotalFee'),
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
                    name: NameNode(value: 'options'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'RideOption'),
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
                  ),
                  FieldNode(
                    name: NameNode(value: 'directions'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'PointFragment'),
                        directives: [],
                      ),
                      FieldNode(
                        name: NameNode(value: 'lat'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'lng'),
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
                    name: NameNode(value: 'conversations'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'ChatMessage'),
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
  fragmentDefinitionCurrentOrder,
  fragmentDefinitionPaymentGatewayFragment,
  fragmentDefinitionMediaFragment,
  fragmentDefinitionSavedPaymentMethodFragment,
  fragmentDefinitionPointFragment,
  fragmentDefinitionRideOption,
  fragmentDefinitionChatMessage,
]);
Query$RideHistory _parserFn$Query$RideHistory(Map<String, dynamic> data) =>
    Query$RideHistory.fromJson(data);
typedef OnQueryComplete$Query$RideHistory = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$RideHistory?,
);

class Options$Query$RideHistory
    extends graphql.QueryOptions<Query$RideHistory> {
  Options$Query$RideHistory({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$RideHistory? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$RideHistory? onComplete,
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
                    data == null ? null : _parserFn$Query$RideHistory(data),
                  ),
          onError: onError,
          document: documentNodeQueryRideHistory,
          parserFn: _parserFn$Query$RideHistory,
        );

  final OnQueryComplete$Query$RideHistory? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$RideHistory
    extends graphql.WatchQueryOptions<Query$RideHistory> {
  WatchOptions$Query$RideHistory({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$RideHistory? typedOptimisticResult,
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
          document: documentNodeQueryRideHistory,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$RideHistory,
        );
}

class FetchMoreOptions$Query$RideHistory extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$RideHistory({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryRideHistory,
        );
}

extension ClientExtension$Query$RideHistory on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$RideHistory>> query$RideHistory(
          [Options$Query$RideHistory? options]) async =>
      await this.query(options ?? Options$Query$RideHistory());
  graphql.ObservableQuery<Query$RideHistory> watchQuery$RideHistory(
          [WatchOptions$Query$RideHistory? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$RideHistory());
  void writeQuery$RideHistory({
    required Query$RideHistory data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryRideHistory)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$RideHistory? readQuery$RideHistory({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryRideHistory)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$RideHistory.fromJson(result);
  }
}

class Query$RideHistory$orders {
  Query$RideHistory$orders({
    required this.edges,
    this.$__typename = 'OrderConnection',
  });

  factory Query$RideHistory$orders.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$RideHistory$orders(
      edges: (l$edges as List<dynamic>)
          .map((e) => Query$RideHistory$orders$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$RideHistory$orders$edges> edges;

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
    if (other is! Query$RideHistory$orders ||
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

extension UtilityExtension$Query$RideHistory$orders
    on Query$RideHistory$orders {
  CopyWith$Query$RideHistory$orders<Query$RideHistory$orders> get copyWith =>
      CopyWith$Query$RideHistory$orders(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$RideHistory$orders<TRes> {
  factory CopyWith$Query$RideHistory$orders(
    Query$RideHistory$orders instance,
    TRes Function(Query$RideHistory$orders) then,
  ) = _CopyWithImpl$Query$RideHistory$orders;

  factory CopyWith$Query$RideHistory$orders.stub(TRes res) =
      _CopyWithStubImpl$Query$RideHistory$orders;

  TRes call({
    List<Query$RideHistory$orders$edges>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$RideHistory$orders$edges> Function(
              Iterable<
                  CopyWith$Query$RideHistory$orders$edges<
                      Query$RideHistory$orders$edges>>)
          _fn);
}

class _CopyWithImpl$Query$RideHistory$orders<TRes>
    implements CopyWith$Query$RideHistory$orders<TRes> {
  _CopyWithImpl$Query$RideHistory$orders(
    this._instance,
    this._then,
  );

  final Query$RideHistory$orders _instance;

  final TRes Function(Query$RideHistory$orders) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$RideHistory$orders(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Query$RideHistory$orders$edges>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$RideHistory$orders$edges> Function(
                  Iterable<
                      CopyWith$Query$RideHistory$orders$edges<
                          Query$RideHistory$orders$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              .map((e) => CopyWith$Query$RideHistory$orders$edges(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$RideHistory$orders<TRes>
    implements CopyWith$Query$RideHistory$orders<TRes> {
  _CopyWithStubImpl$Query$RideHistory$orders(this._res);

  TRes _res;

  call({
    List<Query$RideHistory$orders$edges>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Query$RideHistory$orders$edges {
  Query$RideHistory$orders$edges({
    required this.node,
    this.$__typename = 'OrderEdge',
  });

  factory Query$RideHistory$orders$edges.fromJson(Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$RideHistory$orders$edges(
      node: Query$RideHistory$orders$edges$node.fromJson(
          (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$RideHistory$orders$edges$node node;

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
    if (other is! Query$RideHistory$orders$edges ||
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

extension UtilityExtension$Query$RideHistory$orders$edges
    on Query$RideHistory$orders$edges {
  CopyWith$Query$RideHistory$orders$edges<Query$RideHistory$orders$edges>
      get copyWith => CopyWith$Query$RideHistory$orders$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RideHistory$orders$edges<TRes> {
  factory CopyWith$Query$RideHistory$orders$edges(
    Query$RideHistory$orders$edges instance,
    TRes Function(Query$RideHistory$orders$edges) then,
  ) = _CopyWithImpl$Query$RideHistory$orders$edges;

  factory CopyWith$Query$RideHistory$orders$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$RideHistory$orders$edges;

  TRes call({
    Query$RideHistory$orders$edges$node? node,
    String? $__typename,
  });
  CopyWith$Query$RideHistory$orders$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$RideHistory$orders$edges<TRes>
    implements CopyWith$Query$RideHistory$orders$edges<TRes> {
  _CopyWithImpl$Query$RideHistory$orders$edges(
    this._instance,
    this._then,
  );

  final Query$RideHistory$orders$edges _instance;

  final TRes Function(Query$RideHistory$orders$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$RideHistory$orders$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Query$RideHistory$orders$edges$node),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$RideHistory$orders$edges$node<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Query$RideHistory$orders$edges$node(
        local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$RideHistory$orders$edges<TRes>
    implements CopyWith$Query$RideHistory$orders$edges<TRes> {
  _CopyWithStubImpl$Query$RideHistory$orders$edges(this._res);

  TRes _res;

  call({
    Query$RideHistory$orders$edges$node? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$RideHistory$orders$edges$node<TRes> get node =>
      CopyWith$Query$RideHistory$orders$edges$node.stub(_res);
}

class Query$RideHistory$orders$edges$node implements Fragment$CurrentOrder {
  Query$RideHistory$orders$edges$node({
    required this.id,
    required this.createdOn,
    required this.expectedTimestamp,
    this.startTimestamp,
    this.finishTimestamp,
    required this.riderLastSeenMessagesAt,
    required this.distanceBest,
    required this.durationBest,
    required this.status,
    required this.destinationArrivedTo,
    this.etaPickup,
    required this.paidAmount,
    required this.costAfterCoupon,
    required this.costBest,
    required this.currency,
    required this.addresses,
    required this.waitMinutes,
    this.paymentMode,
    this.paymentGateway,
    this.savedPaymentMethod,
    required this.points,
    this.directions,
    this.driverDirections,
    this.driver,
    this.service,
    required this.options,
    this.rider,
    required this.conversations,
    this.$__typename = 'Order',
  });

  factory Query$RideHistory$orders$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$createdOn = json['createdOn'];
    final l$expectedTimestamp = json['expectedTimestamp'];
    final l$startTimestamp = json['startTimestamp'];
    final l$finishTimestamp = json['finishTimestamp'];
    final l$riderLastSeenMessagesAt = json['riderLastSeenMessagesAt'];
    final l$distanceBest = json['distanceBest'];
    final l$durationBest = json['durationBest'];
    final l$status = json['status'];
    final l$destinationArrivedTo = json['destinationArrivedTo'];
    final l$etaPickup = json['etaPickup'];
    final l$paidAmount = json['paidAmount'];
    final l$costAfterCoupon = json['costAfterCoupon'];
    final l$costBest = json['costBest'];
    final l$currency = json['currency'];
    final l$addresses = json['addresses'];
    final l$waitMinutes = json['waitMinutes'];
    final l$paymentMode = json['paymentMode'];
    final l$paymentGateway = json['paymentGateway'];
    final l$savedPaymentMethod = json['savedPaymentMethod'];
    final l$points = json['points'];
    final l$directions = json['directions'];
    final l$driverDirections = json['driverDirections'];
    final l$driver = json['driver'];
    final l$service = json['service'];
    final l$options = json['options'];
    final l$rider = json['rider'];
    final l$conversations = json['conversations'];
    final l$$__typename = json['__typename'];
    return Query$RideHistory$orders$edges$node(
      id: (l$id as String),
      createdOn: fromGraphQLTimestampToDartDateTime(l$createdOn),
      expectedTimestamp:
          fromGraphQLTimestampToDartDateTime(l$expectedTimestamp),
      startTimestamp: l$startTimestamp == null
          ? null
          : fromGraphQLTimestampToDartDateTime(l$startTimestamp),
      finishTimestamp: l$finishTimestamp == null
          ? null
          : fromGraphQLTimestampToDartDateTime(l$finishTimestamp),
      riderLastSeenMessagesAt:
          fromGraphQLTimestampToDartDateTime(l$riderLastSeenMessagesAt),
      distanceBest: (l$distanceBest as int),
      durationBest: (l$durationBest as int),
      status: fromJson$Enum$OrderStatus((l$status as String)),
      destinationArrivedTo: (l$destinationArrivedTo as int),
      etaPickup: l$etaPickup == null
          ? null
          : fromGraphQLTimestampToDartDateTime(l$etaPickup),
      paidAmount: (l$paidAmount as num).toDouble(),
      costAfterCoupon: (l$costAfterCoupon as num).toDouble(),
      costBest: (l$costBest as num).toDouble(),
      currency: (l$currency as String),
      addresses:
          (l$addresses as List<dynamic>).map((e) => (e as String)).toList(),
      waitMinutes: (l$waitMinutes as int),
      paymentMode: l$paymentMode == null
          ? null
          : fromJson$Enum$PaymentMode((l$paymentMode as String)),
      paymentGateway: l$paymentGateway == null
          ? null
          : Query$RideHistory$orders$edges$node$paymentGateway.fromJson(
              (l$paymentGateway as Map<String, dynamic>)),
      savedPaymentMethod: l$savedPaymentMethod == null
          ? null
          : Query$RideHistory$orders$edges$node$savedPaymentMethod.fromJson(
              (l$savedPaymentMethod as Map<String, dynamic>)),
      points: (l$points as List<dynamic>)
          .map((e) => Query$RideHistory$orders$edges$node$points.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      directions: (l$directions as List<dynamic>?)
          ?.map((e) => Query$RideHistory$orders$edges$node$directions.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      driverDirections: (l$driverDirections as List<dynamic>?)
          ?.map((e) =>
              Query$RideHistory$orders$edges$node$driverDirections.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      driver: l$driver == null
          ? null
          : Query$RideHistory$orders$edges$node$driver.fromJson(
              (l$driver as Map<String, dynamic>)),
      service: l$service == null
          ? null
          : Query$RideHistory$orders$edges$node$service.fromJson(
              (l$service as Map<String, dynamic>)),
      options: (l$options as List<dynamic>)
          .map((e) => Query$RideHistory$orders$edges$node$options.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      rider: l$rider == null
          ? null
          : Query$RideHistory$orders$edges$node$rider.fromJson(
              (l$rider as Map<String, dynamic>)),
      conversations: (l$conversations as List<dynamic>)
          .map((e) =>
              Query$RideHistory$orders$edges$node$conversations.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final DateTime createdOn;

  final DateTime expectedTimestamp;

  final DateTime? startTimestamp;

  final DateTime? finishTimestamp;

  final DateTime riderLastSeenMessagesAt;

  final int distanceBest;

  final int durationBest;

  final Enum$OrderStatus status;

  final int destinationArrivedTo;

  final DateTime? etaPickup;

  final double paidAmount;

  final double costAfterCoupon;

  final double costBest;

  final String currency;

  final List<String> addresses;

  final int waitMinutes;

  final Enum$PaymentMode? paymentMode;

  final Query$RideHistory$orders$edges$node$paymentGateway? paymentGateway;

  final Query$RideHistory$orders$edges$node$savedPaymentMethod?
      savedPaymentMethod;

  final List<Query$RideHistory$orders$edges$node$points> points;

  final List<Query$RideHistory$orders$edges$node$directions>? directions;

  final List<Query$RideHistory$orders$edges$node$driverDirections>?
      driverDirections;

  final Query$RideHistory$orders$edges$node$driver? driver;

  final Query$RideHistory$orders$edges$node$service? service;

  final List<Query$RideHistory$orders$edges$node$options> options;

  final Query$RideHistory$orders$edges$node$rider? rider;

  final List<Query$RideHistory$orders$edges$node$conversations> conversations;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$createdOn = createdOn;
    _resultData['createdOn'] = fromDartDateTimeToGraphQLTimestamp(l$createdOn);
    final l$expectedTimestamp = expectedTimestamp;
    _resultData['expectedTimestamp'] =
        fromDartDateTimeToGraphQLTimestamp(l$expectedTimestamp);
    final l$startTimestamp = startTimestamp;
    _resultData['startTimestamp'] = l$startTimestamp == null
        ? null
        : fromDartDateTimeToGraphQLTimestamp(l$startTimestamp);
    final l$finishTimestamp = finishTimestamp;
    _resultData['finishTimestamp'] = l$finishTimestamp == null
        ? null
        : fromDartDateTimeToGraphQLTimestamp(l$finishTimestamp);
    final l$riderLastSeenMessagesAt = riderLastSeenMessagesAt;
    _resultData['riderLastSeenMessagesAt'] =
        fromDartDateTimeToGraphQLTimestamp(l$riderLastSeenMessagesAt);
    final l$distanceBest = distanceBest;
    _resultData['distanceBest'] = l$distanceBest;
    final l$durationBest = durationBest;
    _resultData['durationBest'] = l$durationBest;
    final l$status = status;
    _resultData['status'] = toJson$Enum$OrderStatus(l$status);
    final l$destinationArrivedTo = destinationArrivedTo;
    _resultData['destinationArrivedTo'] = l$destinationArrivedTo;
    final l$etaPickup = etaPickup;
    _resultData['etaPickup'] = l$etaPickup == null
        ? null
        : fromDartDateTimeToGraphQLTimestamp(l$etaPickup);
    final l$paidAmount = paidAmount;
    _resultData['paidAmount'] = l$paidAmount;
    final l$costAfterCoupon = costAfterCoupon;
    _resultData['costAfterCoupon'] = l$costAfterCoupon;
    final l$costBest = costBest;
    _resultData['costBest'] = l$costBest;
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$addresses = addresses;
    _resultData['addresses'] = l$addresses.map((e) => e).toList();
    final l$waitMinutes = waitMinutes;
    _resultData['waitMinutes'] = l$waitMinutes;
    final l$paymentMode = paymentMode;
    _resultData['paymentMode'] =
        l$paymentMode == null ? null : toJson$Enum$PaymentMode(l$paymentMode);
    final l$paymentGateway = paymentGateway;
    _resultData['paymentGateway'] = l$paymentGateway?.toJson();
    final l$savedPaymentMethod = savedPaymentMethod;
    _resultData['savedPaymentMethod'] = l$savedPaymentMethod?.toJson();
    final l$points = points;
    _resultData['points'] = l$points.map((e) => e.toJson()).toList();
    final l$directions = directions;
    _resultData['directions'] = l$directions?.map((e) => e.toJson()).toList();
    final l$driverDirections = driverDirections;
    _resultData['driverDirections'] =
        l$driverDirections?.map((e) => e.toJson()).toList();
    final l$driver = driver;
    _resultData['driver'] = l$driver?.toJson();
    final l$service = service;
    _resultData['service'] = l$service?.toJson();
    final l$options = options;
    _resultData['options'] = l$options.map((e) => e.toJson()).toList();
    final l$rider = rider;
    _resultData['rider'] = l$rider?.toJson();
    final l$conversations = conversations;
    _resultData['conversations'] =
        l$conversations.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$createdOn = createdOn;
    final l$expectedTimestamp = expectedTimestamp;
    final l$startTimestamp = startTimestamp;
    final l$finishTimestamp = finishTimestamp;
    final l$riderLastSeenMessagesAt = riderLastSeenMessagesAt;
    final l$distanceBest = distanceBest;
    final l$durationBest = durationBest;
    final l$status = status;
    final l$destinationArrivedTo = destinationArrivedTo;
    final l$etaPickup = etaPickup;
    final l$paidAmount = paidAmount;
    final l$costAfterCoupon = costAfterCoupon;
    final l$costBest = costBest;
    final l$currency = currency;
    final l$addresses = addresses;
    final l$waitMinutes = waitMinutes;
    final l$paymentMode = paymentMode;
    final l$paymentGateway = paymentGateway;
    final l$savedPaymentMethod = savedPaymentMethod;
    final l$points = points;
    final l$directions = directions;
    final l$driverDirections = driverDirections;
    final l$driver = driver;
    final l$service = service;
    final l$options = options;
    final l$rider = rider;
    final l$conversations = conversations;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$createdOn,
      l$expectedTimestamp,
      l$startTimestamp,
      l$finishTimestamp,
      l$riderLastSeenMessagesAt,
      l$distanceBest,
      l$durationBest,
      l$status,
      l$destinationArrivedTo,
      l$etaPickup,
      l$paidAmount,
      l$costAfterCoupon,
      l$costBest,
      l$currency,
      Object.hashAll(l$addresses.map((v) => v)),
      l$waitMinutes,
      l$paymentMode,
      l$paymentGateway,
      l$savedPaymentMethod,
      Object.hashAll(l$points.map((v) => v)),
      l$directions == null ? null : Object.hashAll(l$directions.map((v) => v)),
      l$driverDirections == null
          ? null
          : Object.hashAll(l$driverDirections.map((v) => v)),
      l$driver,
      l$service,
      Object.hashAll(l$options.map((v) => v)),
      l$rider,
      Object.hashAll(l$conversations.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$RideHistory$orders$edges$node ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$createdOn = createdOn;
    final lOther$createdOn = other.createdOn;
    if (l$createdOn != lOther$createdOn) {
      return false;
    }
    final l$expectedTimestamp = expectedTimestamp;
    final lOther$expectedTimestamp = other.expectedTimestamp;
    if (l$expectedTimestamp != lOther$expectedTimestamp) {
      return false;
    }
    final l$startTimestamp = startTimestamp;
    final lOther$startTimestamp = other.startTimestamp;
    if (l$startTimestamp != lOther$startTimestamp) {
      return false;
    }
    final l$finishTimestamp = finishTimestamp;
    final lOther$finishTimestamp = other.finishTimestamp;
    if (l$finishTimestamp != lOther$finishTimestamp) {
      return false;
    }
    final l$riderLastSeenMessagesAt = riderLastSeenMessagesAt;
    final lOther$riderLastSeenMessagesAt = other.riderLastSeenMessagesAt;
    if (l$riderLastSeenMessagesAt != lOther$riderLastSeenMessagesAt) {
      return false;
    }
    final l$distanceBest = distanceBest;
    final lOther$distanceBest = other.distanceBest;
    if (l$distanceBest != lOther$distanceBest) {
      return false;
    }
    final l$durationBest = durationBest;
    final lOther$durationBest = other.durationBest;
    if (l$durationBest != lOther$durationBest) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$destinationArrivedTo = destinationArrivedTo;
    final lOther$destinationArrivedTo = other.destinationArrivedTo;
    if (l$destinationArrivedTo != lOther$destinationArrivedTo) {
      return false;
    }
    final l$etaPickup = etaPickup;
    final lOther$etaPickup = other.etaPickup;
    if (l$etaPickup != lOther$etaPickup) {
      return false;
    }
    final l$paidAmount = paidAmount;
    final lOther$paidAmount = other.paidAmount;
    if (l$paidAmount != lOther$paidAmount) {
      return false;
    }
    final l$costAfterCoupon = costAfterCoupon;
    final lOther$costAfterCoupon = other.costAfterCoupon;
    if (l$costAfterCoupon != lOther$costAfterCoupon) {
      return false;
    }
    final l$costBest = costBest;
    final lOther$costBest = other.costBest;
    if (l$costBest != lOther$costBest) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$addresses = addresses;
    final lOther$addresses = other.addresses;
    if (l$addresses.length != lOther$addresses.length) {
      return false;
    }
    for (int i = 0; i < l$addresses.length; i++) {
      final l$addresses$entry = l$addresses[i];
      final lOther$addresses$entry = lOther$addresses[i];
      if (l$addresses$entry != lOther$addresses$entry) {
        return false;
      }
    }
    final l$waitMinutes = waitMinutes;
    final lOther$waitMinutes = other.waitMinutes;
    if (l$waitMinutes != lOther$waitMinutes) {
      return false;
    }
    final l$paymentMode = paymentMode;
    final lOther$paymentMode = other.paymentMode;
    if (l$paymentMode != lOther$paymentMode) {
      return false;
    }
    final l$paymentGateway = paymentGateway;
    final lOther$paymentGateway = other.paymentGateway;
    if (l$paymentGateway != lOther$paymentGateway) {
      return false;
    }
    final l$savedPaymentMethod = savedPaymentMethod;
    final lOther$savedPaymentMethod = other.savedPaymentMethod;
    if (l$savedPaymentMethod != lOther$savedPaymentMethod) {
      return false;
    }
    final l$points = points;
    final lOther$points = other.points;
    if (l$points.length != lOther$points.length) {
      return false;
    }
    for (int i = 0; i < l$points.length; i++) {
      final l$points$entry = l$points[i];
      final lOther$points$entry = lOther$points[i];
      if (l$points$entry != lOther$points$entry) {
        return false;
      }
    }
    final l$directions = directions;
    final lOther$directions = other.directions;
    if (l$directions != null && lOther$directions != null) {
      if (l$directions.length != lOther$directions.length) {
        return false;
      }
      for (int i = 0; i < l$directions.length; i++) {
        final l$directions$entry = l$directions[i];
        final lOther$directions$entry = lOther$directions[i];
        if (l$directions$entry != lOther$directions$entry) {
          return false;
        }
      }
    } else if (l$directions != lOther$directions) {
      return false;
    }
    final l$driverDirections = driverDirections;
    final lOther$driverDirections = other.driverDirections;
    if (l$driverDirections != null && lOther$driverDirections != null) {
      if (l$driverDirections.length != lOther$driverDirections.length) {
        return false;
      }
      for (int i = 0; i < l$driverDirections.length; i++) {
        final l$driverDirections$entry = l$driverDirections[i];
        final lOther$driverDirections$entry = lOther$driverDirections[i];
        if (l$driverDirections$entry != lOther$driverDirections$entry) {
          return false;
        }
      }
    } else if (l$driverDirections != lOther$driverDirections) {
      return false;
    }
    final l$driver = driver;
    final lOther$driver = other.driver;
    if (l$driver != lOther$driver) {
      return false;
    }
    final l$service = service;
    final lOther$service = other.service;
    if (l$service != lOther$service) {
      return false;
    }
    final l$options = options;
    final lOther$options = other.options;
    if (l$options.length != lOther$options.length) {
      return false;
    }
    for (int i = 0; i < l$options.length; i++) {
      final l$options$entry = l$options[i];
      final lOther$options$entry = lOther$options[i];
      if (l$options$entry != lOther$options$entry) {
        return false;
      }
    }
    final l$rider = rider;
    final lOther$rider = other.rider;
    if (l$rider != lOther$rider) {
      return false;
    }
    final l$conversations = conversations;
    final lOther$conversations = other.conversations;
    if (l$conversations.length != lOther$conversations.length) {
      return false;
    }
    for (int i = 0; i < l$conversations.length; i++) {
      final l$conversations$entry = l$conversations[i];
      final lOther$conversations$entry = lOther$conversations[i];
      if (l$conversations$entry != lOther$conversations$entry) {
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

extension UtilityExtension$Query$RideHistory$orders$edges$node
    on Query$RideHistory$orders$edges$node {
  CopyWith$Query$RideHistory$orders$edges$node<
          Query$RideHistory$orders$edges$node>
      get copyWith => CopyWith$Query$RideHistory$orders$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RideHistory$orders$edges$node<TRes> {
  factory CopyWith$Query$RideHistory$orders$edges$node(
    Query$RideHistory$orders$edges$node instance,
    TRes Function(Query$RideHistory$orders$edges$node) then,
  ) = _CopyWithImpl$Query$RideHistory$orders$edges$node;

  factory CopyWith$Query$RideHistory$orders$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$RideHistory$orders$edges$node;

  TRes call({
    String? id,
    DateTime? createdOn,
    DateTime? expectedTimestamp,
    DateTime? startTimestamp,
    DateTime? finishTimestamp,
    DateTime? riderLastSeenMessagesAt,
    int? distanceBest,
    int? durationBest,
    Enum$OrderStatus? status,
    int? destinationArrivedTo,
    DateTime? etaPickup,
    double? paidAmount,
    double? costAfterCoupon,
    double? costBest,
    String? currency,
    List<String>? addresses,
    int? waitMinutes,
    Enum$PaymentMode? paymentMode,
    Query$RideHistory$orders$edges$node$paymentGateway? paymentGateway,
    Query$RideHistory$orders$edges$node$savedPaymentMethod? savedPaymentMethod,
    List<Query$RideHistory$orders$edges$node$points>? points,
    List<Query$RideHistory$orders$edges$node$directions>? directions,
    List<Query$RideHistory$orders$edges$node$driverDirections>?
        driverDirections,
    Query$RideHistory$orders$edges$node$driver? driver,
    Query$RideHistory$orders$edges$node$service? service,
    List<Query$RideHistory$orders$edges$node$options>? options,
    Query$RideHistory$orders$edges$node$rider? rider,
    List<Query$RideHistory$orders$edges$node$conversations>? conversations,
    String? $__typename,
  });
  CopyWith$Query$RideHistory$orders$edges$node$paymentGateway<TRes>
      get paymentGateway;
  CopyWith$Query$RideHistory$orders$edges$node$savedPaymentMethod<TRes>
      get savedPaymentMethod;
  TRes points(
      Iterable<Query$RideHistory$orders$edges$node$points> Function(
              Iterable<
                  CopyWith$Query$RideHistory$orders$edges$node$points<
                      Query$RideHistory$orders$edges$node$points>>)
          _fn);
  TRes directions(
      Iterable<Query$RideHistory$orders$edges$node$directions>? Function(
              Iterable<
                  CopyWith$Query$RideHistory$orders$edges$node$directions<
                      Query$RideHistory$orders$edges$node$directions>>?)
          _fn);
  TRes driverDirections(
      Iterable<Query$RideHistory$orders$edges$node$driverDirections>? Function(
              Iterable<
                  CopyWith$Query$RideHistory$orders$edges$node$driverDirections<
                      Query$RideHistory$orders$edges$node$driverDirections>>?)
          _fn);
  CopyWith$Query$RideHistory$orders$edges$node$driver<TRes> get driver;
  CopyWith$Query$RideHistory$orders$edges$node$service<TRes> get service;
  TRes options(
      Iterable<Query$RideHistory$orders$edges$node$options> Function(
              Iterable<
                  CopyWith$Query$RideHistory$orders$edges$node$options<
                      Query$RideHistory$orders$edges$node$options>>)
          _fn);
  CopyWith$Query$RideHistory$orders$edges$node$rider<TRes> get rider;
  TRes conversations(
      Iterable<Query$RideHistory$orders$edges$node$conversations> Function(
              Iterable<
                  CopyWith$Query$RideHistory$orders$edges$node$conversations<
                      Query$RideHistory$orders$edges$node$conversations>>)
          _fn);
}

class _CopyWithImpl$Query$RideHistory$orders$edges$node<TRes>
    implements CopyWith$Query$RideHistory$orders$edges$node<TRes> {
  _CopyWithImpl$Query$RideHistory$orders$edges$node(
    this._instance,
    this._then,
  );

  final Query$RideHistory$orders$edges$node _instance;

  final TRes Function(Query$RideHistory$orders$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? createdOn = _undefined,
    Object? expectedTimestamp = _undefined,
    Object? startTimestamp = _undefined,
    Object? finishTimestamp = _undefined,
    Object? riderLastSeenMessagesAt = _undefined,
    Object? distanceBest = _undefined,
    Object? durationBest = _undefined,
    Object? status = _undefined,
    Object? destinationArrivedTo = _undefined,
    Object? etaPickup = _undefined,
    Object? paidAmount = _undefined,
    Object? costAfterCoupon = _undefined,
    Object? costBest = _undefined,
    Object? currency = _undefined,
    Object? addresses = _undefined,
    Object? waitMinutes = _undefined,
    Object? paymentMode = _undefined,
    Object? paymentGateway = _undefined,
    Object? savedPaymentMethod = _undefined,
    Object? points = _undefined,
    Object? directions = _undefined,
    Object? driverDirections = _undefined,
    Object? driver = _undefined,
    Object? service = _undefined,
    Object? options = _undefined,
    Object? rider = _undefined,
    Object? conversations = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$RideHistory$orders$edges$node(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        createdOn: createdOn == _undefined || createdOn == null
            ? _instance.createdOn
            : (createdOn as DateTime),
        expectedTimestamp:
            expectedTimestamp == _undefined || expectedTimestamp == null
                ? _instance.expectedTimestamp
                : (expectedTimestamp as DateTime),
        startTimestamp: startTimestamp == _undefined
            ? _instance.startTimestamp
            : (startTimestamp as DateTime?),
        finishTimestamp: finishTimestamp == _undefined
            ? _instance.finishTimestamp
            : (finishTimestamp as DateTime?),
        riderLastSeenMessagesAt: riderLastSeenMessagesAt == _undefined ||
                riderLastSeenMessagesAt == null
            ? _instance.riderLastSeenMessagesAt
            : (riderLastSeenMessagesAt as DateTime),
        distanceBest: distanceBest == _undefined || distanceBest == null
            ? _instance.distanceBest
            : (distanceBest as int),
        durationBest: durationBest == _undefined || durationBest == null
            ? _instance.durationBest
            : (durationBest as int),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$OrderStatus),
        destinationArrivedTo:
            destinationArrivedTo == _undefined || destinationArrivedTo == null
                ? _instance.destinationArrivedTo
                : (destinationArrivedTo as int),
        etaPickup: etaPickup == _undefined
            ? _instance.etaPickup
            : (etaPickup as DateTime?),
        paidAmount: paidAmount == _undefined || paidAmount == null
            ? _instance.paidAmount
            : (paidAmount as double),
        costAfterCoupon:
            costAfterCoupon == _undefined || costAfterCoupon == null
                ? _instance.costAfterCoupon
                : (costAfterCoupon as double),
        costBest: costBest == _undefined || costBest == null
            ? _instance.costBest
            : (costBest as double),
        currency: currency == _undefined || currency == null
            ? _instance.currency
            : (currency as String),
        addresses: addresses == _undefined || addresses == null
            ? _instance.addresses
            : (addresses as List<String>),
        waitMinutes: waitMinutes == _undefined || waitMinutes == null
            ? _instance.waitMinutes
            : (waitMinutes as int),
        paymentMode: paymentMode == _undefined
            ? _instance.paymentMode
            : (paymentMode as Enum$PaymentMode?),
        paymentGateway: paymentGateway == _undefined
            ? _instance.paymentGateway
            : (paymentGateway
                as Query$RideHistory$orders$edges$node$paymentGateway?),
        savedPaymentMethod: savedPaymentMethod == _undefined
            ? _instance.savedPaymentMethod
            : (savedPaymentMethod
                as Query$RideHistory$orders$edges$node$savedPaymentMethod?),
        points: points == _undefined || points == null
            ? _instance.points
            : (points as List<Query$RideHistory$orders$edges$node$points>),
        directions: directions == _undefined
            ? _instance.directions
            : (directions
                as List<Query$RideHistory$orders$edges$node$directions>?),
        driverDirections: driverDirections == _undefined
            ? _instance.driverDirections
            : (driverDirections
                as List<Query$RideHistory$orders$edges$node$driverDirections>?),
        driver: driver == _undefined
            ? _instance.driver
            : (driver as Query$RideHistory$orders$edges$node$driver?),
        service: service == _undefined
            ? _instance.service
            : (service as Query$RideHistory$orders$edges$node$service?),
        options: options == _undefined || options == null
            ? _instance.options
            : (options as List<Query$RideHistory$orders$edges$node$options>),
        rider: rider == _undefined
            ? _instance.rider
            : (rider as Query$RideHistory$orders$edges$node$rider?),
        conversations: conversations == _undefined || conversations == null
            ? _instance.conversations
            : (conversations
                as List<Query$RideHistory$orders$edges$node$conversations>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$RideHistory$orders$edges$node$paymentGateway<TRes>
      get paymentGateway {
    final local$paymentGateway = _instance.paymentGateway;
    return local$paymentGateway == null
        ? CopyWith$Query$RideHistory$orders$edges$node$paymentGateway.stub(
            _then(_instance))
        : CopyWith$Query$RideHistory$orders$edges$node$paymentGateway(
            local$paymentGateway, (e) => call(paymentGateway: e));
  }

  CopyWith$Query$RideHistory$orders$edges$node$savedPaymentMethod<TRes>
      get savedPaymentMethod {
    final local$savedPaymentMethod = _instance.savedPaymentMethod;
    return local$savedPaymentMethod == null
        ? CopyWith$Query$RideHistory$orders$edges$node$savedPaymentMethod.stub(
            _then(_instance))
        : CopyWith$Query$RideHistory$orders$edges$node$savedPaymentMethod(
            local$savedPaymentMethod, (e) => call(savedPaymentMethod: e));
  }

  TRes points(
          Iterable<Query$RideHistory$orders$edges$node$points> Function(
                  Iterable<
                      CopyWith$Query$RideHistory$orders$edges$node$points<
                          Query$RideHistory$orders$edges$node$points>>)
              _fn) =>
      call(
          points: _fn(_instance.points
              .map((e) => CopyWith$Query$RideHistory$orders$edges$node$points(
                    e,
                    (i) => i,
                  ))).toList());

  TRes directions(
          Iterable<Query$RideHistory$orders$edges$node$directions>? Function(
                  Iterable<
                      CopyWith$Query$RideHistory$orders$edges$node$directions<
                          Query$RideHistory$orders$edges$node$directions>>?)
              _fn) =>
      call(
          directions: _fn(_instance.directions?.map(
              (e) => CopyWith$Query$RideHistory$orders$edges$node$directions(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes driverDirections(
          Iterable<Query$RideHistory$orders$edges$node$driverDirections>? Function(
                  Iterable<
                      CopyWith$Query$RideHistory$orders$edges$node$driverDirections<
                          Query$RideHistory$orders$edges$node$driverDirections>>?)
              _fn) =>
      call(
          driverDirections: _fn(_instance.driverDirections?.map((e) =>
              CopyWith$Query$RideHistory$orders$edges$node$driverDirections(
                e,
                (i) => i,
              )))?.toList());

  CopyWith$Query$RideHistory$orders$edges$node$driver<TRes> get driver {
    final local$driver = _instance.driver;
    return local$driver == null
        ? CopyWith$Query$RideHistory$orders$edges$node$driver.stub(
            _then(_instance))
        : CopyWith$Query$RideHistory$orders$edges$node$driver(
            local$driver, (e) => call(driver: e));
  }

  CopyWith$Query$RideHistory$orders$edges$node$service<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith$Query$RideHistory$orders$edges$node$service.stub(
            _then(_instance))
        : CopyWith$Query$RideHistory$orders$edges$node$service(
            local$service, (e) => call(service: e));
  }

  TRes options(
          Iterable<Query$RideHistory$orders$edges$node$options> Function(
                  Iterable<
                      CopyWith$Query$RideHistory$orders$edges$node$options<
                          Query$RideHistory$orders$edges$node$options>>)
              _fn) =>
      call(
          options: _fn(_instance.options
              .map((e) => CopyWith$Query$RideHistory$orders$edges$node$options(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith$Query$RideHistory$orders$edges$node$rider<TRes> get rider {
    final local$rider = _instance.rider;
    return local$rider == null
        ? CopyWith$Query$RideHistory$orders$edges$node$rider.stub(
            _then(_instance))
        : CopyWith$Query$RideHistory$orders$edges$node$rider(
            local$rider, (e) => call(rider: e));
  }

  TRes conversations(
          Iterable<Query$RideHistory$orders$edges$node$conversations> Function(
                  Iterable<
                      CopyWith$Query$RideHistory$orders$edges$node$conversations<
                          Query$RideHistory$orders$edges$node$conversations>>)
              _fn) =>
      call(
          conversations: _fn(_instance.conversations.map(
              (e) => CopyWith$Query$RideHistory$orders$edges$node$conversations(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$RideHistory$orders$edges$node<TRes>
    implements CopyWith$Query$RideHistory$orders$edges$node<TRes> {
  _CopyWithStubImpl$Query$RideHistory$orders$edges$node(this._res);

  TRes _res;

  call({
    String? id,
    DateTime? createdOn,
    DateTime? expectedTimestamp,
    DateTime? startTimestamp,
    DateTime? finishTimestamp,
    DateTime? riderLastSeenMessagesAt,
    int? distanceBest,
    int? durationBest,
    Enum$OrderStatus? status,
    int? destinationArrivedTo,
    DateTime? etaPickup,
    double? paidAmount,
    double? costAfterCoupon,
    double? costBest,
    String? currency,
    List<String>? addresses,
    int? waitMinutes,
    Enum$PaymentMode? paymentMode,
    Query$RideHistory$orders$edges$node$paymentGateway? paymentGateway,
    Query$RideHistory$orders$edges$node$savedPaymentMethod? savedPaymentMethod,
    List<Query$RideHistory$orders$edges$node$points>? points,
    List<Query$RideHistory$orders$edges$node$directions>? directions,
    List<Query$RideHistory$orders$edges$node$driverDirections>?
        driverDirections,
    Query$RideHistory$orders$edges$node$driver? driver,
    Query$RideHistory$orders$edges$node$service? service,
    List<Query$RideHistory$orders$edges$node$options>? options,
    Query$RideHistory$orders$edges$node$rider? rider,
    List<Query$RideHistory$orders$edges$node$conversations>? conversations,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$RideHistory$orders$edges$node$paymentGateway<TRes>
      get paymentGateway =>
          CopyWith$Query$RideHistory$orders$edges$node$paymentGateway.stub(
              _res);

  CopyWith$Query$RideHistory$orders$edges$node$savedPaymentMethod<TRes>
      get savedPaymentMethod =>
          CopyWith$Query$RideHistory$orders$edges$node$savedPaymentMethod.stub(
              _res);

  points(_fn) => _res;

  directions(_fn) => _res;

  driverDirections(_fn) => _res;

  CopyWith$Query$RideHistory$orders$edges$node$driver<TRes> get driver =>
      CopyWith$Query$RideHistory$orders$edges$node$driver.stub(_res);

  CopyWith$Query$RideHistory$orders$edges$node$service<TRes> get service =>
      CopyWith$Query$RideHistory$orders$edges$node$service.stub(_res);

  options(_fn) => _res;

  CopyWith$Query$RideHistory$orders$edges$node$rider<TRes> get rider =>
      CopyWith$Query$RideHistory$orders$edges$node$rider.stub(_res);

  conversations(_fn) => _res;
}

class Query$RideHistory$orders$edges$node$paymentGateway
    implements Fragment$PaymentGatewayFragment {
  Query$RideHistory$orders$edges$node$paymentGateway({
    required this.id,
    required this.title,
    required this.type,
    required this.linkMethod,
    this.media,
    this.$__typename = 'PaymentGateway',
  });

  factory Query$RideHistory$orders$edges$node$paymentGateway.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$type = json['type'];
    final l$linkMethod = json['linkMethod'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$RideHistory$orders$edges$node$paymentGateway(
      id: (l$id as String),
      title: (l$title as String),
      type: fromJson$Enum$PaymentGatewayType((l$type as String)),
      linkMethod: fromJson$Enum$GatewayLinkMethod((l$linkMethod as String)),
      media: l$media == null
          ? null
          : Query$RideHistory$orders$edges$node$paymentGateway$media.fromJson(
              (l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final Enum$PaymentGatewayType type;

  final Enum$GatewayLinkMethod linkMethod;

  final Query$RideHistory$orders$edges$node$paymentGateway$media? media;

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
    if (other is! Query$RideHistory$orders$edges$node$paymentGateway ||
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

extension UtilityExtension$Query$RideHistory$orders$edges$node$paymentGateway
    on Query$RideHistory$orders$edges$node$paymentGateway {
  CopyWith$Query$RideHistory$orders$edges$node$paymentGateway<
          Query$RideHistory$orders$edges$node$paymentGateway>
      get copyWith =>
          CopyWith$Query$RideHistory$orders$edges$node$paymentGateway(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RideHistory$orders$edges$node$paymentGateway<
    TRes> {
  factory CopyWith$Query$RideHistory$orders$edges$node$paymentGateway(
    Query$RideHistory$orders$edges$node$paymentGateway instance,
    TRes Function(Query$RideHistory$orders$edges$node$paymentGateway) then,
  ) = _CopyWithImpl$Query$RideHistory$orders$edges$node$paymentGateway;

  factory CopyWith$Query$RideHistory$orders$edges$node$paymentGateway.stub(
          TRes res) =
      _CopyWithStubImpl$Query$RideHistory$orders$edges$node$paymentGateway;

  TRes call({
    String? id,
    String? title,
    Enum$PaymentGatewayType? type,
    Enum$GatewayLinkMethod? linkMethod,
    Query$RideHistory$orders$edges$node$paymentGateway$media? media,
    String? $__typename,
  });
  CopyWith$Query$RideHistory$orders$edges$node$paymentGateway$media<TRes>
      get media;
}

class _CopyWithImpl$Query$RideHistory$orders$edges$node$paymentGateway<TRes>
    implements
        CopyWith$Query$RideHistory$orders$edges$node$paymentGateway<TRes> {
  _CopyWithImpl$Query$RideHistory$orders$edges$node$paymentGateway(
    this._instance,
    this._then,
  );

  final Query$RideHistory$orders$edges$node$paymentGateway _instance;

  final TRes Function(Query$RideHistory$orders$edges$node$paymentGateway) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? type = _undefined,
    Object? linkMethod = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$RideHistory$orders$edges$node$paymentGateway(
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
            : (media
                as Query$RideHistory$orders$edges$node$paymentGateway$media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$RideHistory$orders$edges$node$paymentGateway$media<TRes>
      get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Query$RideHistory$orders$edges$node$paymentGateway$media
            .stub(_then(_instance))
        : CopyWith$Query$RideHistory$orders$edges$node$paymentGateway$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Query$RideHistory$orders$edges$node$paymentGateway<TRes>
    implements
        CopyWith$Query$RideHistory$orders$edges$node$paymentGateway<TRes> {
  _CopyWithStubImpl$Query$RideHistory$orders$edges$node$paymentGateway(
      this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    Enum$PaymentGatewayType? type,
    Enum$GatewayLinkMethod? linkMethod,
    Query$RideHistory$orders$edges$node$paymentGateway$media? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$RideHistory$orders$edges$node$paymentGateway$media<TRes>
      get media =>
          CopyWith$Query$RideHistory$orders$edges$node$paymentGateway$media
              .stub(_res);
}

class Query$RideHistory$orders$edges$node$paymentGateway$media
    implements Fragment$PaymentGatewayFragment$media, Fragment$MediaFragment {
  Query$RideHistory$orders$edges$node$paymentGateway$media({
    required this.id,
    required this.address,
    this.$__typename = 'Media',
  });

  factory Query$RideHistory$orders$edges$node$paymentGateway$media.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$address = json['address'];
    final l$$__typename = json['__typename'];
    return Query$RideHistory$orders$edges$node$paymentGateway$media(
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
    if (other is! Query$RideHistory$orders$edges$node$paymentGateway$media ||
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

extension UtilityExtension$Query$RideHistory$orders$edges$node$paymentGateway$media
    on Query$RideHistory$orders$edges$node$paymentGateway$media {
  CopyWith$Query$RideHistory$orders$edges$node$paymentGateway$media<
          Query$RideHistory$orders$edges$node$paymentGateway$media>
      get copyWith =>
          CopyWith$Query$RideHistory$orders$edges$node$paymentGateway$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RideHistory$orders$edges$node$paymentGateway$media<
    TRes> {
  factory CopyWith$Query$RideHistory$orders$edges$node$paymentGateway$media(
    Query$RideHistory$orders$edges$node$paymentGateway$media instance,
    TRes Function(Query$RideHistory$orders$edges$node$paymentGateway$media)
        then,
  ) = _CopyWithImpl$Query$RideHistory$orders$edges$node$paymentGateway$media;

  factory CopyWith$Query$RideHistory$orders$edges$node$paymentGateway$media.stub(
          TRes res) =
      _CopyWithStubImpl$Query$RideHistory$orders$edges$node$paymentGateway$media;

  TRes call({
    String? id,
    String? address,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$RideHistory$orders$edges$node$paymentGateway$media<
        TRes>
    implements
        CopyWith$Query$RideHistory$orders$edges$node$paymentGateway$media<
            TRes> {
  _CopyWithImpl$Query$RideHistory$orders$edges$node$paymentGateway$media(
    this._instance,
    this._then,
  );

  final Query$RideHistory$orders$edges$node$paymentGateway$media _instance;

  final TRes Function(Query$RideHistory$orders$edges$node$paymentGateway$media)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? address = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$RideHistory$orders$edges$node$paymentGateway$media(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        address: address == _undefined || address == null
            ? _instance.address
            : (address as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$RideHistory$orders$edges$node$paymentGateway$media<
        TRes>
    implements
        CopyWith$Query$RideHistory$orders$edges$node$paymentGateway$media<
            TRes> {
  _CopyWithStubImpl$Query$RideHistory$orders$edges$node$paymentGateway$media(
      this._res);

  TRes _res;

  call({
    String? id,
    String? address,
    String? $__typename,
  }) =>
      _res;
}

class Query$RideHistory$orders$edges$node$savedPaymentMethod
    implements Fragment$SavedPaymentMethodFragment {
  Query$RideHistory$orders$edges$node$savedPaymentMethod({
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

  factory Query$RideHistory$orders$edges$node$savedPaymentMethod.fromJson(
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
    return Query$RideHistory$orders$edges$node$savedPaymentMethod(
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
    if (other is! Query$RideHistory$orders$edges$node$savedPaymentMethod ||
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

extension UtilityExtension$Query$RideHistory$orders$edges$node$savedPaymentMethod
    on Query$RideHistory$orders$edges$node$savedPaymentMethod {
  CopyWith$Query$RideHistory$orders$edges$node$savedPaymentMethod<
          Query$RideHistory$orders$edges$node$savedPaymentMethod>
      get copyWith =>
          CopyWith$Query$RideHistory$orders$edges$node$savedPaymentMethod(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RideHistory$orders$edges$node$savedPaymentMethod<
    TRes> {
  factory CopyWith$Query$RideHistory$orders$edges$node$savedPaymentMethod(
    Query$RideHistory$orders$edges$node$savedPaymentMethod instance,
    TRes Function(Query$RideHistory$orders$edges$node$savedPaymentMethod) then,
  ) = _CopyWithImpl$Query$RideHistory$orders$edges$node$savedPaymentMethod;

  factory CopyWith$Query$RideHistory$orders$edges$node$savedPaymentMethod.stub(
          TRes res) =
      _CopyWithStubImpl$Query$RideHistory$orders$edges$node$savedPaymentMethod;

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

class _CopyWithImpl$Query$RideHistory$orders$edges$node$savedPaymentMethod<TRes>
    implements
        CopyWith$Query$RideHistory$orders$edges$node$savedPaymentMethod<TRes> {
  _CopyWithImpl$Query$RideHistory$orders$edges$node$savedPaymentMethod(
    this._instance,
    this._then,
  );

  final Query$RideHistory$orders$edges$node$savedPaymentMethod _instance;

  final TRes Function(Query$RideHistory$orders$edges$node$savedPaymentMethod)
      _then;

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
      _then(Query$RideHistory$orders$edges$node$savedPaymentMethod(
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

class _CopyWithStubImpl$Query$RideHistory$orders$edges$node$savedPaymentMethod<
        TRes>
    implements
        CopyWith$Query$RideHistory$orders$edges$node$savedPaymentMethod<TRes> {
  _CopyWithStubImpl$Query$RideHistory$orders$edges$node$savedPaymentMethod(
      this._res);

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

class Query$RideHistory$orders$edges$node$points
    implements Fragment$PointFragment {
  Query$RideHistory$orders$edges$node$points({
    required this.lat,
    required this.lng,
    this.heading,
    this.$__typename = 'Point',
  });

  factory Query$RideHistory$orders$edges$node$points.fromJson(
      Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lng = json['lng'];
    final l$heading = json['heading'];
    final l$$__typename = json['__typename'];
    return Query$RideHistory$orders$edges$node$points(
      lat: (l$lat as num).toDouble(),
      lng: (l$lng as num).toDouble(),
      heading: (l$heading as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final double lat;

  final double lng;

  final int? heading;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$lat = lat;
    _resultData['lat'] = l$lat;
    final l$lng = lng;
    _resultData['lng'] = l$lng;
    final l$heading = heading;
    _resultData['heading'] = l$heading;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$lat = lat;
    final l$lng = lng;
    final l$heading = heading;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$lat,
      l$lng,
      l$heading,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$RideHistory$orders$edges$node$points ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$lat = lat;
    final lOther$lat = other.lat;
    if (l$lat != lOther$lat) {
      return false;
    }
    final l$lng = lng;
    final lOther$lng = other.lng;
    if (l$lng != lOther$lng) {
      return false;
    }
    final l$heading = heading;
    final lOther$heading = other.heading;
    if (l$heading != lOther$heading) {
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

extension UtilityExtension$Query$RideHistory$orders$edges$node$points
    on Query$RideHistory$orders$edges$node$points {
  CopyWith$Query$RideHistory$orders$edges$node$points<
          Query$RideHistory$orders$edges$node$points>
      get copyWith => CopyWith$Query$RideHistory$orders$edges$node$points(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RideHistory$orders$edges$node$points<TRes> {
  factory CopyWith$Query$RideHistory$orders$edges$node$points(
    Query$RideHistory$orders$edges$node$points instance,
    TRes Function(Query$RideHistory$orders$edges$node$points) then,
  ) = _CopyWithImpl$Query$RideHistory$orders$edges$node$points;

  factory CopyWith$Query$RideHistory$orders$edges$node$points.stub(TRes res) =
      _CopyWithStubImpl$Query$RideHistory$orders$edges$node$points;

  TRes call({
    double? lat,
    double? lng,
    int? heading,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$RideHistory$orders$edges$node$points<TRes>
    implements CopyWith$Query$RideHistory$orders$edges$node$points<TRes> {
  _CopyWithImpl$Query$RideHistory$orders$edges$node$points(
    this._instance,
    this._then,
  );

  final Query$RideHistory$orders$edges$node$points _instance;

  final TRes Function(Query$RideHistory$orders$edges$node$points) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
    Object? heading = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$RideHistory$orders$edges$node$points(
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lng: lng == _undefined || lng == null ? _instance.lng : (lng as double),
        heading: heading == _undefined ? _instance.heading : (heading as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$RideHistory$orders$edges$node$points<TRes>
    implements CopyWith$Query$RideHistory$orders$edges$node$points<TRes> {
  _CopyWithStubImpl$Query$RideHistory$orders$edges$node$points(this._res);

  TRes _res;

  call({
    double? lat,
    double? lng,
    int? heading,
    String? $__typename,
  }) =>
      _res;
}

class Query$RideHistory$orders$edges$node$directions
    implements Fragment$CurrentOrder$directions, Fragment$PointFragment {
  Query$RideHistory$orders$edges$node$directions({
    required this.lat,
    required this.lng,
    this.heading,
    this.$__typename = 'Point',
  });

  factory Query$RideHistory$orders$edges$node$directions.fromJson(
      Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lng = json['lng'];
    final l$heading = json['heading'];
    final l$$__typename = json['__typename'];
    return Query$RideHistory$orders$edges$node$directions(
      lat: (l$lat as num).toDouble(),
      lng: (l$lng as num).toDouble(),
      heading: (l$heading as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final double lat;

  final double lng;

  final int? heading;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$lat = lat;
    _resultData['lat'] = l$lat;
    final l$lng = lng;
    _resultData['lng'] = l$lng;
    final l$heading = heading;
    _resultData['heading'] = l$heading;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$lat = lat;
    final l$lng = lng;
    final l$heading = heading;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$lat,
      l$lng,
      l$heading,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$RideHistory$orders$edges$node$directions ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$lat = lat;
    final lOther$lat = other.lat;
    if (l$lat != lOther$lat) {
      return false;
    }
    final l$lng = lng;
    final lOther$lng = other.lng;
    if (l$lng != lOther$lng) {
      return false;
    }
    final l$heading = heading;
    final lOther$heading = other.heading;
    if (l$heading != lOther$heading) {
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

extension UtilityExtension$Query$RideHistory$orders$edges$node$directions
    on Query$RideHistory$orders$edges$node$directions {
  CopyWith$Query$RideHistory$orders$edges$node$directions<
          Query$RideHistory$orders$edges$node$directions>
      get copyWith => CopyWith$Query$RideHistory$orders$edges$node$directions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RideHistory$orders$edges$node$directions<TRes> {
  factory CopyWith$Query$RideHistory$orders$edges$node$directions(
    Query$RideHistory$orders$edges$node$directions instance,
    TRes Function(Query$RideHistory$orders$edges$node$directions) then,
  ) = _CopyWithImpl$Query$RideHistory$orders$edges$node$directions;

  factory CopyWith$Query$RideHistory$orders$edges$node$directions.stub(
          TRes res) =
      _CopyWithStubImpl$Query$RideHistory$orders$edges$node$directions;

  TRes call({
    double? lat,
    double? lng,
    int? heading,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$RideHistory$orders$edges$node$directions<TRes>
    implements CopyWith$Query$RideHistory$orders$edges$node$directions<TRes> {
  _CopyWithImpl$Query$RideHistory$orders$edges$node$directions(
    this._instance,
    this._then,
  );

  final Query$RideHistory$orders$edges$node$directions _instance;

  final TRes Function(Query$RideHistory$orders$edges$node$directions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
    Object? heading = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$RideHistory$orders$edges$node$directions(
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lng: lng == _undefined || lng == null ? _instance.lng : (lng as double),
        heading: heading == _undefined ? _instance.heading : (heading as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$RideHistory$orders$edges$node$directions<TRes>
    implements CopyWith$Query$RideHistory$orders$edges$node$directions<TRes> {
  _CopyWithStubImpl$Query$RideHistory$orders$edges$node$directions(this._res);

  TRes _res;

  call({
    double? lat,
    double? lng,
    int? heading,
    String? $__typename,
  }) =>
      _res;
}

class Query$RideHistory$orders$edges$node$driverDirections
    implements Fragment$PointFragment {
  Query$RideHistory$orders$edges$node$driverDirections({
    required this.lat,
    required this.lng,
    this.heading,
    this.$__typename = 'Point',
  });

  factory Query$RideHistory$orders$edges$node$driverDirections.fromJson(
      Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lng = json['lng'];
    final l$heading = json['heading'];
    final l$$__typename = json['__typename'];
    return Query$RideHistory$orders$edges$node$driverDirections(
      lat: (l$lat as num).toDouble(),
      lng: (l$lng as num).toDouble(),
      heading: (l$heading as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final double lat;

  final double lng;

  final int? heading;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$lat = lat;
    _resultData['lat'] = l$lat;
    final l$lng = lng;
    _resultData['lng'] = l$lng;
    final l$heading = heading;
    _resultData['heading'] = l$heading;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$lat = lat;
    final l$lng = lng;
    final l$heading = heading;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$lat,
      l$lng,
      l$heading,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$RideHistory$orders$edges$node$driverDirections ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$lat = lat;
    final lOther$lat = other.lat;
    if (l$lat != lOther$lat) {
      return false;
    }
    final l$lng = lng;
    final lOther$lng = other.lng;
    if (l$lng != lOther$lng) {
      return false;
    }
    final l$heading = heading;
    final lOther$heading = other.heading;
    if (l$heading != lOther$heading) {
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

extension UtilityExtension$Query$RideHistory$orders$edges$node$driverDirections
    on Query$RideHistory$orders$edges$node$driverDirections {
  CopyWith$Query$RideHistory$orders$edges$node$driverDirections<
          Query$RideHistory$orders$edges$node$driverDirections>
      get copyWith =>
          CopyWith$Query$RideHistory$orders$edges$node$driverDirections(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RideHistory$orders$edges$node$driverDirections<
    TRes> {
  factory CopyWith$Query$RideHistory$orders$edges$node$driverDirections(
    Query$RideHistory$orders$edges$node$driverDirections instance,
    TRes Function(Query$RideHistory$orders$edges$node$driverDirections) then,
  ) = _CopyWithImpl$Query$RideHistory$orders$edges$node$driverDirections;

  factory CopyWith$Query$RideHistory$orders$edges$node$driverDirections.stub(
          TRes res) =
      _CopyWithStubImpl$Query$RideHistory$orders$edges$node$driverDirections;

  TRes call({
    double? lat,
    double? lng,
    int? heading,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$RideHistory$orders$edges$node$driverDirections<TRes>
    implements
        CopyWith$Query$RideHistory$orders$edges$node$driverDirections<TRes> {
  _CopyWithImpl$Query$RideHistory$orders$edges$node$driverDirections(
    this._instance,
    this._then,
  );

  final Query$RideHistory$orders$edges$node$driverDirections _instance;

  final TRes Function(Query$RideHistory$orders$edges$node$driverDirections)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
    Object? heading = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$RideHistory$orders$edges$node$driverDirections(
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lng: lng == _undefined || lng == null ? _instance.lng : (lng as double),
        heading: heading == _undefined ? _instance.heading : (heading as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$RideHistory$orders$edges$node$driverDirections<
        TRes>
    implements
        CopyWith$Query$RideHistory$orders$edges$node$driverDirections<TRes> {
  _CopyWithStubImpl$Query$RideHistory$orders$edges$node$driverDirections(
      this._res);

  TRes _res;

  call({
    double? lat,
    double? lng,
    int? heading,
    String? $__typename,
  }) =>
      _res;
}

class Query$RideHistory$orders$edges$node$driver
    implements Fragment$CurrentOrder$driver {
  Query$RideHistory$orders$edges$node$driver({
    required this.id,
    this.firstName,
    this.lastName,
    this.media,
    required this.mobileNumber,
    this.carPlate,
    this.car,
    this.carColor,
    this.rating,
    required this.reviewCount,
    this.$__typename = 'Driver',
  });

  factory Query$RideHistory$orders$edges$node$driver.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$media = json['media'];
    final l$mobileNumber = json['mobileNumber'];
    final l$carPlate = json['carPlate'];
    final l$car = json['car'];
    final l$carColor = json['carColor'];
    final l$rating = json['rating'];
    final l$reviewCount = json['reviewCount'];
    final l$$__typename = json['__typename'];
    return Query$RideHistory$orders$edges$node$driver(
      id: (l$id as String),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      media: l$media == null
          ? null
          : Query$RideHistory$orders$edges$node$driver$media.fromJson(
              (l$media as Map<String, dynamic>)),
      mobileNumber: (l$mobileNumber as String),
      carPlate: (l$carPlate as String?),
      car: l$car == null
          ? null
          : Query$RideHistory$orders$edges$node$driver$car.fromJson(
              (l$car as Map<String, dynamic>)),
      carColor: l$carColor == null
          ? null
          : Query$RideHistory$orders$edges$node$driver$carColor.fromJson(
              (l$carColor as Map<String, dynamic>)),
      rating: (l$rating as int?),
      reviewCount: (l$reviewCount as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? firstName;

  final String? lastName;

  final Query$RideHistory$orders$edges$node$driver$media? media;

  final String mobileNumber;

  final String? carPlate;

  final Query$RideHistory$orders$edges$node$driver$car? car;

  final Query$RideHistory$orders$edges$node$driver$carColor? carColor;

  final int? rating;

  final double reviewCount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$mobileNumber = mobileNumber;
    _resultData['mobileNumber'] = l$mobileNumber;
    final l$carPlate = carPlate;
    _resultData['carPlate'] = l$carPlate;
    final l$car = car;
    _resultData['car'] = l$car?.toJson();
    final l$carColor = carColor;
    _resultData['carColor'] = l$carColor?.toJson();
    final l$rating = rating;
    _resultData['rating'] = l$rating;
    final l$reviewCount = reviewCount;
    _resultData['reviewCount'] = l$reviewCount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$media = media;
    final l$mobileNumber = mobileNumber;
    final l$carPlate = carPlate;
    final l$car = car;
    final l$carColor = carColor;
    final l$rating = rating;
    final l$reviewCount = reviewCount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$firstName,
      l$lastName,
      l$media,
      l$mobileNumber,
      l$carPlate,
      l$car,
      l$carColor,
      l$rating,
      l$reviewCount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$RideHistory$orders$edges$node$driver ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    final l$mobileNumber = mobileNumber;
    final lOther$mobileNumber = other.mobileNumber;
    if (l$mobileNumber != lOther$mobileNumber) {
      return false;
    }
    final l$carPlate = carPlate;
    final lOther$carPlate = other.carPlate;
    if (l$carPlate != lOther$carPlate) {
      return false;
    }
    final l$car = car;
    final lOther$car = other.car;
    if (l$car != lOther$car) {
      return false;
    }
    final l$carColor = carColor;
    final lOther$carColor = other.carColor;
    if (l$carColor != lOther$carColor) {
      return false;
    }
    final l$rating = rating;
    final lOther$rating = other.rating;
    if (l$rating != lOther$rating) {
      return false;
    }
    final l$reviewCount = reviewCount;
    final lOther$reviewCount = other.reviewCount;
    if (l$reviewCount != lOther$reviewCount) {
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

extension UtilityExtension$Query$RideHistory$orders$edges$node$driver
    on Query$RideHistory$orders$edges$node$driver {
  CopyWith$Query$RideHistory$orders$edges$node$driver<
          Query$RideHistory$orders$edges$node$driver>
      get copyWith => CopyWith$Query$RideHistory$orders$edges$node$driver(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RideHistory$orders$edges$node$driver<TRes> {
  factory CopyWith$Query$RideHistory$orders$edges$node$driver(
    Query$RideHistory$orders$edges$node$driver instance,
    TRes Function(Query$RideHistory$orders$edges$node$driver) then,
  ) = _CopyWithImpl$Query$RideHistory$orders$edges$node$driver;

  factory CopyWith$Query$RideHistory$orders$edges$node$driver.stub(TRes res) =
      _CopyWithStubImpl$Query$RideHistory$orders$edges$node$driver;

  TRes call({
    String? id,
    String? firstName,
    String? lastName,
    Query$RideHistory$orders$edges$node$driver$media? media,
    String? mobileNumber,
    String? carPlate,
    Query$RideHistory$orders$edges$node$driver$car? car,
    Query$RideHistory$orders$edges$node$driver$carColor? carColor,
    int? rating,
    double? reviewCount,
    String? $__typename,
  });
  CopyWith$Query$RideHistory$orders$edges$node$driver$media<TRes> get media;
  CopyWith$Query$RideHistory$orders$edges$node$driver$car<TRes> get car;
  CopyWith$Query$RideHistory$orders$edges$node$driver$carColor<TRes>
      get carColor;
}

class _CopyWithImpl$Query$RideHistory$orders$edges$node$driver<TRes>
    implements CopyWith$Query$RideHistory$orders$edges$node$driver<TRes> {
  _CopyWithImpl$Query$RideHistory$orders$edges$node$driver(
    this._instance,
    this._then,
  );

  final Query$RideHistory$orders$edges$node$driver _instance;

  final TRes Function(Query$RideHistory$orders$edges$node$driver) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? media = _undefined,
    Object? mobileNumber = _undefined,
    Object? carPlate = _undefined,
    Object? car = _undefined,
    Object? carColor = _undefined,
    Object? rating = _undefined,
    Object? reviewCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$RideHistory$orders$edges$node$driver(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        firstName: firstName == _undefined
            ? _instance.firstName
            : (firstName as String?),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
        media: media == _undefined
            ? _instance.media
            : (media as Query$RideHistory$orders$edges$node$driver$media?),
        mobileNumber: mobileNumber == _undefined || mobileNumber == null
            ? _instance.mobileNumber
            : (mobileNumber as String),
        carPlate:
            carPlate == _undefined ? _instance.carPlate : (carPlate as String?),
        car: car == _undefined
            ? _instance.car
            : (car as Query$RideHistory$orders$edges$node$driver$car?),
        carColor: carColor == _undefined
            ? _instance.carColor
            : (carColor
                as Query$RideHistory$orders$edges$node$driver$carColor?),
        rating: rating == _undefined ? _instance.rating : (rating as int?),
        reviewCount: reviewCount == _undefined || reviewCount == null
            ? _instance.reviewCount
            : (reviewCount as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$RideHistory$orders$edges$node$driver$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Query$RideHistory$orders$edges$node$driver$media.stub(
            _then(_instance))
        : CopyWith$Query$RideHistory$orders$edges$node$driver$media(
            local$media, (e) => call(media: e));
  }

  CopyWith$Query$RideHistory$orders$edges$node$driver$car<TRes> get car {
    final local$car = _instance.car;
    return local$car == null
        ? CopyWith$Query$RideHistory$orders$edges$node$driver$car.stub(
            _then(_instance))
        : CopyWith$Query$RideHistory$orders$edges$node$driver$car(
            local$car, (e) => call(car: e));
  }

  CopyWith$Query$RideHistory$orders$edges$node$driver$carColor<TRes>
      get carColor {
    final local$carColor = _instance.carColor;
    return local$carColor == null
        ? CopyWith$Query$RideHistory$orders$edges$node$driver$carColor.stub(
            _then(_instance))
        : CopyWith$Query$RideHistory$orders$edges$node$driver$carColor(
            local$carColor, (e) => call(carColor: e));
  }
}

class _CopyWithStubImpl$Query$RideHistory$orders$edges$node$driver<TRes>
    implements CopyWith$Query$RideHistory$orders$edges$node$driver<TRes> {
  _CopyWithStubImpl$Query$RideHistory$orders$edges$node$driver(this._res);

  TRes _res;

  call({
    String? id,
    String? firstName,
    String? lastName,
    Query$RideHistory$orders$edges$node$driver$media? media,
    String? mobileNumber,
    String? carPlate,
    Query$RideHistory$orders$edges$node$driver$car? car,
    Query$RideHistory$orders$edges$node$driver$carColor? carColor,
    int? rating,
    double? reviewCount,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$RideHistory$orders$edges$node$driver$media<TRes> get media =>
      CopyWith$Query$RideHistory$orders$edges$node$driver$media.stub(_res);

  CopyWith$Query$RideHistory$orders$edges$node$driver$car<TRes> get car =>
      CopyWith$Query$RideHistory$orders$edges$node$driver$car.stub(_res);

  CopyWith$Query$RideHistory$orders$edges$node$driver$carColor<TRes>
      get carColor =>
          CopyWith$Query$RideHistory$orders$edges$node$driver$carColor.stub(
              _res);
}

class Query$RideHistory$orders$edges$node$driver$media
    implements Fragment$CurrentOrder$driver$media {
  Query$RideHistory$orders$edges$node$driver$media({
    required this.address,
    this.$__typename = 'Media',
  });

  factory Query$RideHistory$orders$edges$node$driver$media.fromJson(
      Map<String, dynamic> json) {
    final l$address = json['address'];
    final l$$__typename = json['__typename'];
    return Query$RideHistory$orders$edges$node$driver$media(
      address: (l$address as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String address;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$address = address;
    _resultData['address'] = l$address;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$address = address;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$address,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$RideHistory$orders$edges$node$driver$media ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$RideHistory$orders$edges$node$driver$media
    on Query$RideHistory$orders$edges$node$driver$media {
  CopyWith$Query$RideHistory$orders$edges$node$driver$media<
          Query$RideHistory$orders$edges$node$driver$media>
      get copyWith => CopyWith$Query$RideHistory$orders$edges$node$driver$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RideHistory$orders$edges$node$driver$media<TRes> {
  factory CopyWith$Query$RideHistory$orders$edges$node$driver$media(
    Query$RideHistory$orders$edges$node$driver$media instance,
    TRes Function(Query$RideHistory$orders$edges$node$driver$media) then,
  ) = _CopyWithImpl$Query$RideHistory$orders$edges$node$driver$media;

  factory CopyWith$Query$RideHistory$orders$edges$node$driver$media.stub(
          TRes res) =
      _CopyWithStubImpl$Query$RideHistory$orders$edges$node$driver$media;

  TRes call({
    String? address,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$RideHistory$orders$edges$node$driver$media<TRes>
    implements CopyWith$Query$RideHistory$orders$edges$node$driver$media<TRes> {
  _CopyWithImpl$Query$RideHistory$orders$edges$node$driver$media(
    this._instance,
    this._then,
  );

  final Query$RideHistory$orders$edges$node$driver$media _instance;

  final TRes Function(Query$RideHistory$orders$edges$node$driver$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? address = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$RideHistory$orders$edges$node$driver$media(
        address: address == _undefined || address == null
            ? _instance.address
            : (address as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$RideHistory$orders$edges$node$driver$media<TRes>
    implements CopyWith$Query$RideHistory$orders$edges$node$driver$media<TRes> {
  _CopyWithStubImpl$Query$RideHistory$orders$edges$node$driver$media(this._res);

  TRes _res;

  call({
    String? address,
    String? $__typename,
  }) =>
      _res;
}

class Query$RideHistory$orders$edges$node$driver$car
    implements Fragment$CurrentOrder$driver$car {
  Query$RideHistory$orders$edges$node$driver$car({
    required this.name,
    this.$__typename = 'CarModel',
  });

  factory Query$RideHistory$orders$edges$node$driver$car.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$RideHistory$orders$edges$node$driver$car(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$RideHistory$orders$edges$node$driver$car ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$RideHistory$orders$edges$node$driver$car
    on Query$RideHistory$orders$edges$node$driver$car {
  CopyWith$Query$RideHistory$orders$edges$node$driver$car<
          Query$RideHistory$orders$edges$node$driver$car>
      get copyWith => CopyWith$Query$RideHistory$orders$edges$node$driver$car(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RideHistory$orders$edges$node$driver$car<TRes> {
  factory CopyWith$Query$RideHistory$orders$edges$node$driver$car(
    Query$RideHistory$orders$edges$node$driver$car instance,
    TRes Function(Query$RideHistory$orders$edges$node$driver$car) then,
  ) = _CopyWithImpl$Query$RideHistory$orders$edges$node$driver$car;

  factory CopyWith$Query$RideHistory$orders$edges$node$driver$car.stub(
          TRes res) =
      _CopyWithStubImpl$Query$RideHistory$orders$edges$node$driver$car;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$RideHistory$orders$edges$node$driver$car<TRes>
    implements CopyWith$Query$RideHistory$orders$edges$node$driver$car<TRes> {
  _CopyWithImpl$Query$RideHistory$orders$edges$node$driver$car(
    this._instance,
    this._then,
  );

  final Query$RideHistory$orders$edges$node$driver$car _instance;

  final TRes Function(Query$RideHistory$orders$edges$node$driver$car) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$RideHistory$orders$edges$node$driver$car(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$RideHistory$orders$edges$node$driver$car<TRes>
    implements CopyWith$Query$RideHistory$orders$edges$node$driver$car<TRes> {
  _CopyWithStubImpl$Query$RideHistory$orders$edges$node$driver$car(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$RideHistory$orders$edges$node$driver$carColor
    implements Fragment$CurrentOrder$driver$carColor {
  Query$RideHistory$orders$edges$node$driver$carColor({
    required this.name,
    this.$__typename = 'CarColor',
  });

  factory Query$RideHistory$orders$edges$node$driver$carColor.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$RideHistory$orders$edges$node$driver$carColor(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$RideHistory$orders$edges$node$driver$carColor ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$RideHistory$orders$edges$node$driver$carColor
    on Query$RideHistory$orders$edges$node$driver$carColor {
  CopyWith$Query$RideHistory$orders$edges$node$driver$carColor<
          Query$RideHistory$orders$edges$node$driver$carColor>
      get copyWith =>
          CopyWith$Query$RideHistory$orders$edges$node$driver$carColor(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RideHistory$orders$edges$node$driver$carColor<
    TRes> {
  factory CopyWith$Query$RideHistory$orders$edges$node$driver$carColor(
    Query$RideHistory$orders$edges$node$driver$carColor instance,
    TRes Function(Query$RideHistory$orders$edges$node$driver$carColor) then,
  ) = _CopyWithImpl$Query$RideHistory$orders$edges$node$driver$carColor;

  factory CopyWith$Query$RideHistory$orders$edges$node$driver$carColor.stub(
          TRes res) =
      _CopyWithStubImpl$Query$RideHistory$orders$edges$node$driver$carColor;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$RideHistory$orders$edges$node$driver$carColor<TRes>
    implements
        CopyWith$Query$RideHistory$orders$edges$node$driver$carColor<TRes> {
  _CopyWithImpl$Query$RideHistory$orders$edges$node$driver$carColor(
    this._instance,
    this._then,
  );

  final Query$RideHistory$orders$edges$node$driver$carColor _instance;

  final TRes Function(Query$RideHistory$orders$edges$node$driver$carColor)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$RideHistory$orders$edges$node$driver$carColor(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$RideHistory$orders$edges$node$driver$carColor<
        TRes>
    implements
        CopyWith$Query$RideHistory$orders$edges$node$driver$carColor<TRes> {
  _CopyWithStubImpl$Query$RideHistory$orders$edges$node$driver$carColor(
      this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$RideHistory$orders$edges$node$service
    implements Fragment$CurrentOrder$service {
  Query$RideHistory$orders$edges$node$service({
    required this.media,
    required this.name,
    required this.paymentMethod,
    this.description,
    required this.prepayPercent,
    required this.cancellationTotalFee,
    this.$__typename = 'Service',
  });

  factory Query$RideHistory$orders$edges$node$service.fromJson(
      Map<String, dynamic> json) {
    final l$media = json['media'];
    final l$name = json['name'];
    final l$paymentMethod = json['paymentMethod'];
    final l$description = json['description'];
    final l$prepayPercent = json['prepayPercent'];
    final l$cancellationTotalFee = json['cancellationTotalFee'];
    final l$$__typename = json['__typename'];
    return Query$RideHistory$orders$edges$node$service(
      media: Query$RideHistory$orders$edges$node$service$media.fromJson(
          (l$media as Map<String, dynamic>)),
      name: (l$name as String),
      paymentMethod:
          fromJson$Enum$ServicePaymentMethod((l$paymentMethod as String)),
      description: (l$description as String?),
      prepayPercent: (l$prepayPercent as int),
      cancellationTotalFee: (l$cancellationTotalFee as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$RideHistory$orders$edges$node$service$media media;

  final String name;

  final Enum$ServicePaymentMethod paymentMethod;

  final String? description;

  final int prepayPercent;

  final double cancellationTotalFee;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$media = media;
    _resultData['media'] = l$media.toJson();
    final l$name = name;
    _resultData['name'] = l$name;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] =
        toJson$Enum$ServicePaymentMethod(l$paymentMethod);
    final l$description = description;
    _resultData['description'] = l$description;
    final l$prepayPercent = prepayPercent;
    _resultData['prepayPercent'] = l$prepayPercent;
    final l$cancellationTotalFee = cancellationTotalFee;
    _resultData['cancellationTotalFee'] = l$cancellationTotalFee;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$media = media;
    final l$name = name;
    final l$paymentMethod = paymentMethod;
    final l$description = description;
    final l$prepayPercent = prepayPercent;
    final l$cancellationTotalFee = cancellationTotalFee;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$media,
      l$name,
      l$paymentMethod,
      l$description,
      l$prepayPercent,
      l$cancellationTotalFee,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$RideHistory$orders$edges$node$service ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$prepayPercent = prepayPercent;
    final lOther$prepayPercent = other.prepayPercent;
    if (l$prepayPercent != lOther$prepayPercent) {
      return false;
    }
    final l$cancellationTotalFee = cancellationTotalFee;
    final lOther$cancellationTotalFee = other.cancellationTotalFee;
    if (l$cancellationTotalFee != lOther$cancellationTotalFee) {
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

extension UtilityExtension$Query$RideHistory$orders$edges$node$service
    on Query$RideHistory$orders$edges$node$service {
  CopyWith$Query$RideHistory$orders$edges$node$service<
          Query$RideHistory$orders$edges$node$service>
      get copyWith => CopyWith$Query$RideHistory$orders$edges$node$service(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RideHistory$orders$edges$node$service<TRes> {
  factory CopyWith$Query$RideHistory$orders$edges$node$service(
    Query$RideHistory$orders$edges$node$service instance,
    TRes Function(Query$RideHistory$orders$edges$node$service) then,
  ) = _CopyWithImpl$Query$RideHistory$orders$edges$node$service;

  factory CopyWith$Query$RideHistory$orders$edges$node$service.stub(TRes res) =
      _CopyWithStubImpl$Query$RideHistory$orders$edges$node$service;

  TRes call({
    Query$RideHistory$orders$edges$node$service$media? media,
    String? name,
    Enum$ServicePaymentMethod? paymentMethod,
    String? description,
    int? prepayPercent,
    double? cancellationTotalFee,
    String? $__typename,
  });
  CopyWith$Query$RideHistory$orders$edges$node$service$media<TRes> get media;
}

class _CopyWithImpl$Query$RideHistory$orders$edges$node$service<TRes>
    implements CopyWith$Query$RideHistory$orders$edges$node$service<TRes> {
  _CopyWithImpl$Query$RideHistory$orders$edges$node$service(
    this._instance,
    this._then,
  );

  final Query$RideHistory$orders$edges$node$service _instance;

  final TRes Function(Query$RideHistory$orders$edges$node$service) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? media = _undefined,
    Object? name = _undefined,
    Object? paymentMethod = _undefined,
    Object? description = _undefined,
    Object? prepayPercent = _undefined,
    Object? cancellationTotalFee = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$RideHistory$orders$edges$node$service(
        media: media == _undefined || media == null
            ? _instance.media
            : (media as Query$RideHistory$orders$edges$node$service$media),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        paymentMethod: paymentMethod == _undefined || paymentMethod == null
            ? _instance.paymentMethod
            : (paymentMethod as Enum$ServicePaymentMethod),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        prepayPercent: prepayPercent == _undefined || prepayPercent == null
            ? _instance.prepayPercent
            : (prepayPercent as int),
        cancellationTotalFee:
            cancellationTotalFee == _undefined || cancellationTotalFee == null
                ? _instance.cancellationTotalFee
                : (cancellationTotalFee as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$RideHistory$orders$edges$node$service$media<TRes> get media {
    final local$media = _instance.media;
    return CopyWith$Query$RideHistory$orders$edges$node$service$media(
        local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Query$RideHistory$orders$edges$node$service<TRes>
    implements CopyWith$Query$RideHistory$orders$edges$node$service<TRes> {
  _CopyWithStubImpl$Query$RideHistory$orders$edges$node$service(this._res);

  TRes _res;

  call({
    Query$RideHistory$orders$edges$node$service$media? media,
    String? name,
    Enum$ServicePaymentMethod? paymentMethod,
    String? description,
    int? prepayPercent,
    double? cancellationTotalFee,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$RideHistory$orders$edges$node$service$media<TRes> get media =>
      CopyWith$Query$RideHistory$orders$edges$node$service$media.stub(_res);
}

class Query$RideHistory$orders$edges$node$service$media
    implements Fragment$CurrentOrder$service$media {
  Query$RideHistory$orders$edges$node$service$media({
    required this.address,
    this.$__typename = 'Media',
  });

  factory Query$RideHistory$orders$edges$node$service$media.fromJson(
      Map<String, dynamic> json) {
    final l$address = json['address'];
    final l$$__typename = json['__typename'];
    return Query$RideHistory$orders$edges$node$service$media(
      address: (l$address as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String address;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$address = address;
    _resultData['address'] = l$address;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$address = address;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$address,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$RideHistory$orders$edges$node$service$media ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$RideHistory$orders$edges$node$service$media
    on Query$RideHistory$orders$edges$node$service$media {
  CopyWith$Query$RideHistory$orders$edges$node$service$media<
          Query$RideHistory$orders$edges$node$service$media>
      get copyWith =>
          CopyWith$Query$RideHistory$orders$edges$node$service$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RideHistory$orders$edges$node$service$media<
    TRes> {
  factory CopyWith$Query$RideHistory$orders$edges$node$service$media(
    Query$RideHistory$orders$edges$node$service$media instance,
    TRes Function(Query$RideHistory$orders$edges$node$service$media) then,
  ) = _CopyWithImpl$Query$RideHistory$orders$edges$node$service$media;

  factory CopyWith$Query$RideHistory$orders$edges$node$service$media.stub(
          TRes res) =
      _CopyWithStubImpl$Query$RideHistory$orders$edges$node$service$media;

  TRes call({
    String? address,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$RideHistory$orders$edges$node$service$media<TRes>
    implements
        CopyWith$Query$RideHistory$orders$edges$node$service$media<TRes> {
  _CopyWithImpl$Query$RideHistory$orders$edges$node$service$media(
    this._instance,
    this._then,
  );

  final Query$RideHistory$orders$edges$node$service$media _instance;

  final TRes Function(Query$RideHistory$orders$edges$node$service$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? address = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$RideHistory$orders$edges$node$service$media(
        address: address == _undefined || address == null
            ? _instance.address
            : (address as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$RideHistory$orders$edges$node$service$media<TRes>
    implements
        CopyWith$Query$RideHistory$orders$edges$node$service$media<TRes> {
  _CopyWithStubImpl$Query$RideHistory$orders$edges$node$service$media(
      this._res);

  TRes _res;

  call({
    String? address,
    String? $__typename,
  }) =>
      _res;
}

class Query$RideHistory$orders$edges$node$options
    implements Fragment$RideOption {
  Query$RideHistory$orders$edges$node$options({
    required this.id,
    required this.name,
    this.description,
    required this.type,
    this.additionalFee,
    required this.icon,
    this.$__typename = 'ServiceOption',
  });

  factory Query$RideHistory$orders$edges$node$options.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$type = json['type'];
    final l$additionalFee = json['additionalFee'];
    final l$icon = json['icon'];
    final l$$__typename = json['__typename'];
    return Query$RideHistory$orders$edges$node$options(
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
    if (other is! Query$RideHistory$orders$edges$node$options ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$RideHistory$orders$edges$node$options
    on Query$RideHistory$orders$edges$node$options {
  CopyWith$Query$RideHistory$orders$edges$node$options<
          Query$RideHistory$orders$edges$node$options>
      get copyWith => CopyWith$Query$RideHistory$orders$edges$node$options(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RideHistory$orders$edges$node$options<TRes> {
  factory CopyWith$Query$RideHistory$orders$edges$node$options(
    Query$RideHistory$orders$edges$node$options instance,
    TRes Function(Query$RideHistory$orders$edges$node$options) then,
  ) = _CopyWithImpl$Query$RideHistory$orders$edges$node$options;

  factory CopyWith$Query$RideHistory$orders$edges$node$options.stub(TRes res) =
      _CopyWithStubImpl$Query$RideHistory$orders$edges$node$options;

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

class _CopyWithImpl$Query$RideHistory$orders$edges$node$options<TRes>
    implements CopyWith$Query$RideHistory$orders$edges$node$options<TRes> {
  _CopyWithImpl$Query$RideHistory$orders$edges$node$options(
    this._instance,
    this._then,
  );

  final Query$RideHistory$orders$edges$node$options _instance;

  final TRes Function(Query$RideHistory$orders$edges$node$options) _then;

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
      _then(Query$RideHistory$orders$edges$node$options(
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

class _CopyWithStubImpl$Query$RideHistory$orders$edges$node$options<TRes>
    implements CopyWith$Query$RideHistory$orders$edges$node$options<TRes> {
  _CopyWithStubImpl$Query$RideHistory$orders$edges$node$options(this._res);

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

class Query$RideHistory$orders$edges$node$rider
    implements Fragment$CurrentOrder$rider {
  Query$RideHistory$orders$edges$node$rider({
    required this.wallets,
    this.$__typename = 'Rider',
  });

  factory Query$RideHistory$orders$edges$node$rider.fromJson(
      Map<String, dynamic> json) {
    final l$wallets = json['wallets'];
    final l$$__typename = json['__typename'];
    return Query$RideHistory$orders$edges$node$rider(
      wallets: (l$wallets as List<dynamic>)
          .map((e) =>
              Query$RideHistory$orders$edges$node$rider$wallets.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$RideHistory$orders$edges$node$rider$wallets> wallets;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$wallets = wallets;
    _resultData['wallets'] = l$wallets.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$wallets = wallets;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$wallets.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$RideHistory$orders$edges$node$rider ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$wallets = wallets;
    final lOther$wallets = other.wallets;
    if (l$wallets.length != lOther$wallets.length) {
      return false;
    }
    for (int i = 0; i < l$wallets.length; i++) {
      final l$wallets$entry = l$wallets[i];
      final lOther$wallets$entry = lOther$wallets[i];
      if (l$wallets$entry != lOther$wallets$entry) {
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

extension UtilityExtension$Query$RideHistory$orders$edges$node$rider
    on Query$RideHistory$orders$edges$node$rider {
  CopyWith$Query$RideHistory$orders$edges$node$rider<
          Query$RideHistory$orders$edges$node$rider>
      get copyWith => CopyWith$Query$RideHistory$orders$edges$node$rider(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RideHistory$orders$edges$node$rider<TRes> {
  factory CopyWith$Query$RideHistory$orders$edges$node$rider(
    Query$RideHistory$orders$edges$node$rider instance,
    TRes Function(Query$RideHistory$orders$edges$node$rider) then,
  ) = _CopyWithImpl$Query$RideHistory$orders$edges$node$rider;

  factory CopyWith$Query$RideHistory$orders$edges$node$rider.stub(TRes res) =
      _CopyWithStubImpl$Query$RideHistory$orders$edges$node$rider;

  TRes call({
    List<Query$RideHistory$orders$edges$node$rider$wallets>? wallets,
    String? $__typename,
  });
  TRes wallets(
      Iterable<Query$RideHistory$orders$edges$node$rider$wallets> Function(
              Iterable<
                  CopyWith$Query$RideHistory$orders$edges$node$rider$wallets<
                      Query$RideHistory$orders$edges$node$rider$wallets>>)
          _fn);
}

class _CopyWithImpl$Query$RideHistory$orders$edges$node$rider<TRes>
    implements CopyWith$Query$RideHistory$orders$edges$node$rider<TRes> {
  _CopyWithImpl$Query$RideHistory$orders$edges$node$rider(
    this._instance,
    this._then,
  );

  final Query$RideHistory$orders$edges$node$rider _instance;

  final TRes Function(Query$RideHistory$orders$edges$node$rider) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? wallets = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$RideHistory$orders$edges$node$rider(
        wallets: wallets == _undefined || wallets == null
            ? _instance.wallets
            : (wallets
                as List<Query$RideHistory$orders$edges$node$rider$wallets>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes wallets(
          Iterable<Query$RideHistory$orders$edges$node$rider$wallets> Function(
                  Iterable<
                      CopyWith$Query$RideHistory$orders$edges$node$rider$wallets<
                          Query$RideHistory$orders$edges$node$rider$wallets>>)
              _fn) =>
      call(
          wallets: _fn(_instance.wallets.map(
              (e) => CopyWith$Query$RideHistory$orders$edges$node$rider$wallets(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$RideHistory$orders$edges$node$rider<TRes>
    implements CopyWith$Query$RideHistory$orders$edges$node$rider<TRes> {
  _CopyWithStubImpl$Query$RideHistory$orders$edges$node$rider(this._res);

  TRes _res;

  call({
    List<Query$RideHistory$orders$edges$node$rider$wallets>? wallets,
    String? $__typename,
  }) =>
      _res;

  wallets(_fn) => _res;
}

class Query$RideHistory$orders$edges$node$rider$wallets
    implements Fragment$CurrentOrder$rider$wallets {
  Query$RideHistory$orders$edges$node$rider$wallets({
    required this.currency,
    required this.balance,
    this.$__typename = 'RiderWallet',
  });

  factory Query$RideHistory$orders$edges$node$rider$wallets.fromJson(
      Map<String, dynamic> json) {
    final l$currency = json['currency'];
    final l$balance = json['balance'];
    final l$$__typename = json['__typename'];
    return Query$RideHistory$orders$edges$node$rider$wallets(
      currency: (l$currency as String),
      balance: (l$balance as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String currency;

  final double balance;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$balance = balance;
    _resultData['balance'] = l$balance;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$currency = currency;
    final l$balance = balance;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$currency,
      l$balance,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$RideHistory$orders$edges$node$rider$wallets ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$balance = balance;
    final lOther$balance = other.balance;
    if (l$balance != lOther$balance) {
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

extension UtilityExtension$Query$RideHistory$orders$edges$node$rider$wallets
    on Query$RideHistory$orders$edges$node$rider$wallets {
  CopyWith$Query$RideHistory$orders$edges$node$rider$wallets<
          Query$RideHistory$orders$edges$node$rider$wallets>
      get copyWith =>
          CopyWith$Query$RideHistory$orders$edges$node$rider$wallets(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RideHistory$orders$edges$node$rider$wallets<
    TRes> {
  factory CopyWith$Query$RideHistory$orders$edges$node$rider$wallets(
    Query$RideHistory$orders$edges$node$rider$wallets instance,
    TRes Function(Query$RideHistory$orders$edges$node$rider$wallets) then,
  ) = _CopyWithImpl$Query$RideHistory$orders$edges$node$rider$wallets;

  factory CopyWith$Query$RideHistory$orders$edges$node$rider$wallets.stub(
          TRes res) =
      _CopyWithStubImpl$Query$RideHistory$orders$edges$node$rider$wallets;

  TRes call({
    String? currency,
    double? balance,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$RideHistory$orders$edges$node$rider$wallets<TRes>
    implements
        CopyWith$Query$RideHistory$orders$edges$node$rider$wallets<TRes> {
  _CopyWithImpl$Query$RideHistory$orders$edges$node$rider$wallets(
    this._instance,
    this._then,
  );

  final Query$RideHistory$orders$edges$node$rider$wallets _instance;

  final TRes Function(Query$RideHistory$orders$edges$node$rider$wallets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? currency = _undefined,
    Object? balance = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$RideHistory$orders$edges$node$rider$wallets(
        currency: currency == _undefined || currency == null
            ? _instance.currency
            : (currency as String),
        balance: balance == _undefined || balance == null
            ? _instance.balance
            : (balance as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$RideHistory$orders$edges$node$rider$wallets<TRes>
    implements
        CopyWith$Query$RideHistory$orders$edges$node$rider$wallets<TRes> {
  _CopyWithStubImpl$Query$RideHistory$orders$edges$node$rider$wallets(
      this._res);

  TRes _res;

  call({
    String? currency,
    double? balance,
    String? $__typename,
  }) =>
      _res;
}

class Query$RideHistory$orders$edges$node$conversations
    implements Fragment$ChatMessage {
  Query$RideHistory$orders$edges$node$conversations({
    required this.id,
    required this.sentAt,
    required this.requestId,
    required this.content,
    required this.status,
    required this.sentByDriver,
    this.$__typename = 'OrderMessage',
  });

  factory Query$RideHistory$orders$edges$node$conversations.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$sentAt = json['sentAt'];
    final l$requestId = json['requestId'];
    final l$content = json['content'];
    final l$status = json['status'];
    final l$sentByDriver = json['sentByDriver'];
    final l$$__typename = json['__typename'];
    return Query$RideHistory$orders$edges$node$conversations(
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
    if (other is! Query$RideHistory$orders$edges$node$conversations ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$RideHistory$orders$edges$node$conversations
    on Query$RideHistory$orders$edges$node$conversations {
  CopyWith$Query$RideHistory$orders$edges$node$conversations<
          Query$RideHistory$orders$edges$node$conversations>
      get copyWith =>
          CopyWith$Query$RideHistory$orders$edges$node$conversations(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RideHistory$orders$edges$node$conversations<
    TRes> {
  factory CopyWith$Query$RideHistory$orders$edges$node$conversations(
    Query$RideHistory$orders$edges$node$conversations instance,
    TRes Function(Query$RideHistory$orders$edges$node$conversations) then,
  ) = _CopyWithImpl$Query$RideHistory$orders$edges$node$conversations;

  factory CopyWith$Query$RideHistory$orders$edges$node$conversations.stub(
          TRes res) =
      _CopyWithStubImpl$Query$RideHistory$orders$edges$node$conversations;

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

class _CopyWithImpl$Query$RideHistory$orders$edges$node$conversations<TRes>
    implements
        CopyWith$Query$RideHistory$orders$edges$node$conversations<TRes> {
  _CopyWithImpl$Query$RideHistory$orders$edges$node$conversations(
    this._instance,
    this._then,
  );

  final Query$RideHistory$orders$edges$node$conversations _instance;

  final TRes Function(Query$RideHistory$orders$edges$node$conversations) _then;

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
      _then(Query$RideHistory$orders$edges$node$conversations(
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

class _CopyWithStubImpl$Query$RideHistory$orders$edges$node$conversations<TRes>
    implements
        CopyWith$Query$RideHistory$orders$edges$node$conversations<TRes> {
  _CopyWithStubImpl$Query$RideHistory$orders$edges$node$conversations(
      this._res);

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

class Variables$Mutation$SubmitIssue {
  factory Variables$Mutation$SubmitIssue(
          {required Input$CreateOneComplaintInput input}) =>
      Variables$Mutation$SubmitIssue._({
        r'input': input,
      });

  Variables$Mutation$SubmitIssue._(this._$data);

  factory Variables$Mutation$SubmitIssue.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$CreateOneComplaintInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$SubmitIssue._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateOneComplaintInput get input =>
      (_$data['input'] as Input$CreateOneComplaintInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$SubmitIssue<Variables$Mutation$SubmitIssue>
      get copyWith => CopyWith$Variables$Mutation$SubmitIssue(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$SubmitIssue ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$SubmitIssue<TRes> {
  factory CopyWith$Variables$Mutation$SubmitIssue(
    Variables$Mutation$SubmitIssue instance,
    TRes Function(Variables$Mutation$SubmitIssue) then,
  ) = _CopyWithImpl$Variables$Mutation$SubmitIssue;

  factory CopyWith$Variables$Mutation$SubmitIssue.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SubmitIssue;

  TRes call({Input$CreateOneComplaintInput? input});
}

class _CopyWithImpl$Variables$Mutation$SubmitIssue<TRes>
    implements CopyWith$Variables$Mutation$SubmitIssue<TRes> {
  _CopyWithImpl$Variables$Mutation$SubmitIssue(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SubmitIssue _instance;

  final TRes Function(Variables$Mutation$SubmitIssue) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$SubmitIssue._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$CreateOneComplaintInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SubmitIssue<TRes>
    implements CopyWith$Variables$Mutation$SubmitIssue<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SubmitIssue(this._res);

  TRes _res;

  call({Input$CreateOneComplaintInput? input}) => _res;
}

class Mutation$SubmitIssue {
  Mutation$SubmitIssue({
    required this.createOneComplaint,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SubmitIssue.fromJson(Map<String, dynamic> json) {
    final l$createOneComplaint = json['createOneComplaint'];
    final l$$__typename = json['__typename'];
    return Mutation$SubmitIssue(
      createOneComplaint: Mutation$SubmitIssue$createOneComplaint.fromJson(
          (l$createOneComplaint as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SubmitIssue$createOneComplaint createOneComplaint;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createOneComplaint = createOneComplaint;
    _resultData['createOneComplaint'] = l$createOneComplaint.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createOneComplaint = createOneComplaint;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createOneComplaint,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SubmitIssue || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createOneComplaint = createOneComplaint;
    final lOther$createOneComplaint = other.createOneComplaint;
    if (l$createOneComplaint != lOther$createOneComplaint) {
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

extension UtilityExtension$Mutation$SubmitIssue on Mutation$SubmitIssue {
  CopyWith$Mutation$SubmitIssue<Mutation$SubmitIssue> get copyWith =>
      CopyWith$Mutation$SubmitIssue(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SubmitIssue<TRes> {
  factory CopyWith$Mutation$SubmitIssue(
    Mutation$SubmitIssue instance,
    TRes Function(Mutation$SubmitIssue) then,
  ) = _CopyWithImpl$Mutation$SubmitIssue;

  factory CopyWith$Mutation$SubmitIssue.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SubmitIssue;

  TRes call({
    Mutation$SubmitIssue$createOneComplaint? createOneComplaint,
    String? $__typename,
  });
  CopyWith$Mutation$SubmitIssue$createOneComplaint<TRes> get createOneComplaint;
}

class _CopyWithImpl$Mutation$SubmitIssue<TRes>
    implements CopyWith$Mutation$SubmitIssue<TRes> {
  _CopyWithImpl$Mutation$SubmitIssue(
    this._instance,
    this._then,
  );

  final Mutation$SubmitIssue _instance;

  final TRes Function(Mutation$SubmitIssue) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createOneComplaint = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SubmitIssue(
        createOneComplaint: createOneComplaint == _undefined ||
                createOneComplaint == null
            ? _instance.createOneComplaint
            : (createOneComplaint as Mutation$SubmitIssue$createOneComplaint),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$SubmitIssue$createOneComplaint<TRes>
      get createOneComplaint {
    final local$createOneComplaint = _instance.createOneComplaint;
    return CopyWith$Mutation$SubmitIssue$createOneComplaint(
        local$createOneComplaint, (e) => call(createOneComplaint: e));
  }
}

class _CopyWithStubImpl$Mutation$SubmitIssue<TRes>
    implements CopyWith$Mutation$SubmitIssue<TRes> {
  _CopyWithStubImpl$Mutation$SubmitIssue(this._res);

  TRes _res;

  call({
    Mutation$SubmitIssue$createOneComplaint? createOneComplaint,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$SubmitIssue$createOneComplaint<TRes>
      get createOneComplaint =>
          CopyWith$Mutation$SubmitIssue$createOneComplaint.stub(_res);
}

const documentNodeMutationSubmitIssue = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SubmitIssue'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'CreateOneComplaintInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createOneComplaint'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
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
Mutation$SubmitIssue _parserFn$Mutation$SubmitIssue(
        Map<String, dynamic> data) =>
    Mutation$SubmitIssue.fromJson(data);
typedef OnMutationCompleted$Mutation$SubmitIssue = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$SubmitIssue?,
);

class Options$Mutation$SubmitIssue
    extends graphql.MutationOptions<Mutation$SubmitIssue> {
  Options$Mutation$SubmitIssue({
    String? operationName,
    required Variables$Mutation$SubmitIssue variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SubmitIssue? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SubmitIssue? onCompleted,
    graphql.OnMutationUpdate<Mutation$SubmitIssue>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$SubmitIssue(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSubmitIssue,
          parserFn: _parserFn$Mutation$SubmitIssue,
        );

  final OnMutationCompleted$Mutation$SubmitIssue? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$SubmitIssue
    extends graphql.WatchQueryOptions<Mutation$SubmitIssue> {
  WatchOptions$Mutation$SubmitIssue({
    String? operationName,
    required Variables$Mutation$SubmitIssue variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SubmitIssue? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationSubmitIssue,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$SubmitIssue,
        );
}

extension ClientExtension$Mutation$SubmitIssue on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SubmitIssue>> mutate$SubmitIssue(
          Options$Mutation$SubmitIssue options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$SubmitIssue> watchMutation$SubmitIssue(
          WatchOptions$Mutation$SubmitIssue options) =>
      this.watchMutation(options);
}

class Mutation$SubmitIssue$createOneComplaint {
  Mutation$SubmitIssue$createOneComplaint({
    required this.id,
    this.$__typename = 'Complaint',
  });

  factory Mutation$SubmitIssue$createOneComplaint.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$SubmitIssue$createOneComplaint(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SubmitIssue$createOneComplaint ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Mutation$SubmitIssue$createOneComplaint
    on Mutation$SubmitIssue$createOneComplaint {
  CopyWith$Mutation$SubmitIssue$createOneComplaint<
          Mutation$SubmitIssue$createOneComplaint>
      get copyWith => CopyWith$Mutation$SubmitIssue$createOneComplaint(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SubmitIssue$createOneComplaint<TRes> {
  factory CopyWith$Mutation$SubmitIssue$createOneComplaint(
    Mutation$SubmitIssue$createOneComplaint instance,
    TRes Function(Mutation$SubmitIssue$createOneComplaint) then,
  ) = _CopyWithImpl$Mutation$SubmitIssue$createOneComplaint;

  factory CopyWith$Mutation$SubmitIssue$createOneComplaint.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SubmitIssue$createOneComplaint;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SubmitIssue$createOneComplaint<TRes>
    implements CopyWith$Mutation$SubmitIssue$createOneComplaint<TRes> {
  _CopyWithImpl$Mutation$SubmitIssue$createOneComplaint(
    this._instance,
    this._then,
  );

  final Mutation$SubmitIssue$createOneComplaint _instance;

  final TRes Function(Mutation$SubmitIssue$createOneComplaint) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SubmitIssue$createOneComplaint(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$SubmitIssue$createOneComplaint<TRes>
    implements CopyWith$Mutation$SubmitIssue$createOneComplaint<TRes> {
  _CopyWithStubImpl$Mutation$SubmitIssue$createOneComplaint(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}
