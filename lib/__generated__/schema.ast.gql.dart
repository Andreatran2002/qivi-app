// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:gql/ast.dart' as _i1;

const defer = _i1.DirectiveDefinitionNode(
    name: _i1.NameNode(value: 'defer'),
    args: [
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'label'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'if'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Boolean'), isNonNull: false),
          defaultValue: null)
    ],
    locations: [
      _i1.DirectiveLocation.fragmentSpread,
      _i1.DirectiveLocation.inlineFragment
    ],
    repeatable: false);
const stream = _i1.DirectiveDefinitionNode(
    name: _i1.NameNode(value: 'stream'),
    args: [
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'label'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'initialCount'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Int'), isNonNull: true),
          defaultValue: _i1.IntValueNode(value: '0')),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'if'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Boolean'), isNonNull: false),
          defaultValue: null)
    ],
    locations: [_i1.DirectiveLocation.field],
    repeatable: false);
const specifiedBy = _i1.DirectiveDefinitionNode(
    name: _i1.NameNode(value: 'specifiedBy'),
    args: [
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'url'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true),
          defaultValue: null)
    ],
    locations: [_i1.DirectiveLocation.scalar],
    repeatable: false);
const Bill = _i1.ObjectTypeDefinitionNode(
    name: _i1.NameNode(value: 'Bill'),
    directives: [],
    interfaces: [],
    fields: [
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'id'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'customerId'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'invoice'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'isSuccess'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Boolean'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'note'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'lastUpdated'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'DateTime'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'created'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'DateTime'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'userInfo'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'User'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'total'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Decimal'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'amountOwed'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Decimal'), isNonNull: true))
    ]);
const BillCollectionSegment = _i1.ObjectTypeDefinitionNode(
    name: _i1.NameNode(value: 'BillCollectionSegment'),
    directives: [],
    interfaces: [],
    fields: [
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'items'),
          directives: [],
          args: [],
          type: _i1.ListTypeNode(
              type: _i1.NamedTypeNode(
                  name: _i1.NameNode(value: 'Bill'), isNonNull: true),
              isNonNull: false)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'pageInfo'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'CollectionSegmentInfo'),
              isNonNull: true))
    ]);
const BillFilterInput = _i1.InputObjectTypeDefinitionNode(
    name: _i1.NameNode(value: 'BillFilterInput'),
    directives: [],
    fields: [
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'and'),
          directives: [],
          type: _i1.ListTypeNode(
              type: _i1.NamedTypeNode(
                  name: _i1.NameNode(value: 'BillFilterInput'),
                  isNonNull: true),
              isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'or'),
          directives: [],
          type: _i1.ListTypeNode(
              type: _i1.NamedTypeNode(
                  name: _i1.NameNode(value: 'BillFilterInput'),
                  isNonNull: true),
              isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'id'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'StringOperationFilterInput'),
              isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'customerId'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'StringOperationFilterInput'),
              isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'total'),
          directives: [],
          type: _i1.NamedTypeNode(
              name:
                  _i1.NameNode(value: 'ComparableDecimalOperationFilterInput'),
              isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'isSuccess'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'BooleanOperationFilterInput'),
              isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'amountOwed'),
          directives: [],
          type: _i1.NamedTypeNode(
              name:
                  _i1.NameNode(value: 'ComparableDecimalOperationFilterInput'),
              isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'created'),
          directives: [],
          type: _i1.NamedTypeNode(
              name:
                  _i1.NameNode(value: 'ComparableDateTimeOperationFilterInput'),
              isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'lastUpdated'),
          directives: [],
          type: _i1.NamedTypeNode(
              name:
                  _i1.NameNode(value: 'ComparableDateTimeOperationFilterInput'),
              isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'note'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'StringOperationFilterInput'),
              isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'invoice'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'StringOperationFilterInput'),
              isNonNull: false),
          defaultValue: null)
    ]);
const BillInput = _i1.InputObjectTypeDefinitionNode(
    name: _i1.NameNode(value: 'BillInput'),
    directives: [],
    fields: [
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'id'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'customerId'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'total'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Decimal'), isNonNull: true),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'isSuccess'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Boolean'), isNonNull: true),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'amountOwed'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Decimal'), isNonNull: true),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'created'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'DateTime'), isNonNull: true),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'lastUpdated'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'DateTime'), isNonNull: true),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'note'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'invoice'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true),
          defaultValue: null)
    ]);
const BillSortInput = _i1.InputObjectTypeDefinitionNode(
    name: _i1.NameNode(value: 'BillSortInput'),
    directives: [],
    fields: [
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'created'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'SortEnumType'), isNonNull: false),
          defaultValue: null)
    ]);
const BooleanOperationFilterInput = _i1.InputObjectTypeDefinitionNode(
    name: _i1.NameNode(value: 'BooleanOperationFilterInput'),
    directives: [],
    fields: [
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'eq'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Boolean'), isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'neq'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Boolean'), isNonNull: false),
          defaultValue: null)
    ]);
const CartItem = _i1.ObjectTypeDefinitionNode(
    name: _i1.NameNode(value: 'CartItem'),
    directives: [],
    interfaces: [],
    fields: [
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'id'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'sessionId'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'priceId'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'quantity'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Int'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'priceInCart'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'ProductPrice'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'shoppingSessionByCart'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'ShoppingSession'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'createdAt'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'DateTime'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'modifiedAt'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'DateTime'), isNonNull: true))
    ]);
const CartItemInput = _i1.InputObjectTypeDefinitionNode(
    name: _i1.NameNode(value: 'CartItemInput'),
    directives: [],
    fields: [
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'id'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'sessionId'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'priceId'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'quantity'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Int'), isNonNull: true),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'createdAt'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'DateTime'), isNonNull: true),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'modifiedAt'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'DateTime'), isNonNull: true),
          defaultValue: null)
    ]);
const Category = _i1.ObjectTypeDefinitionNode(
    name: _i1.NameNode(value: 'Category'),
    directives: [],
    interfaces: [],
    fields: [
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'id'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'parentCategory'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Category'), isNonNull: false)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'description'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'categoryId'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'name'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true))
    ]);
const CollectionSegmentInfo = _i1.ObjectTypeDefinitionNode(
    name: _i1.NameNode(value: 'CollectionSegmentInfo'),
    directives: [],
    interfaces: [],
    fields: [
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'hasNextPage'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Boolean'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'hasPreviousPage'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Boolean'), isNonNull: true))
    ]);
const ComparableDateTimeOperationFilterInput =
    _i1.InputObjectTypeDefinitionNode(
        name: _i1.NameNode(value: 'ComparableDateTimeOperationFilterInput'),
        directives: [],
        fields: [
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'eq'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'DateTime'), isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'neq'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'DateTime'), isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'in'),
          directives: [],
          type: _i1.ListTypeNode(
              type: _i1.NamedTypeNode(
                  name: _i1.NameNode(value: 'DateTime'), isNonNull: true),
              isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'nin'),
          directives: [],
          type: _i1.ListTypeNode(
              type: _i1.NamedTypeNode(
                  name: _i1.NameNode(value: 'DateTime'), isNonNull: true),
              isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'gt'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'DateTime'), isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'ngt'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'DateTime'), isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'gte'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'DateTime'), isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'ngte'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'DateTime'), isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'lt'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'DateTime'), isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'nlt'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'DateTime'), isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'lte'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'DateTime'), isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'nlte'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'DateTime'), isNonNull: false),
          defaultValue: null)
    ]);
const ComparableDecimalOperationFilterInput = _i1.InputObjectTypeDefinitionNode(
    name: _i1.NameNode(value: 'ComparableDecimalOperationFilterInput'),
    directives: [],
    fields: [
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'eq'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Decimal'), isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'neq'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Decimal'), isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'in'),
          directives: [],
          type: _i1.ListTypeNode(
              type: _i1.NamedTypeNode(
                  name: _i1.NameNode(value: 'Decimal'), isNonNull: true),
              isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'nin'),
          directives: [],
          type: _i1.ListTypeNode(
              type: _i1.NamedTypeNode(
                  name: _i1.NameNode(value: 'Decimal'), isNonNull: true),
              isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'gt'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Decimal'), isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'ngt'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Decimal'), isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'gte'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Decimal'), isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'ngte'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Decimal'), isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'lt'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Decimal'), isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'nlt'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Decimal'), isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'lte'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Decimal'), isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'nlte'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Decimal'), isNonNull: false),
          defaultValue: null)
    ]);
const DateTime = _i1.ScalarTypeDefinitionNode(
    name: _i1.NameNode(value: 'DateTime'), directives: []);
const Decimal = _i1.ScalarTypeDefinitionNode(
    name: _i1.NameNode(value: 'Decimal'), directives: []);
const Discount = _i1.ObjectTypeDefinitionNode(
    name: _i1.NameNode(value: 'Discount'),
    directives: [],
    interfaces: [],
    fields: [
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'name'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'description'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'discountPercent'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Int'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'active'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Boolean'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'createdAt'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'DateTime'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'modifiedAt'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'DateTime'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'id'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true))
    ]);
const DiscountInput = _i1.InputObjectTypeDefinitionNode(
    name: _i1.NameNode(value: 'DiscountInput'),
    directives: [],
    fields: [
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'name'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'description'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'discountPercent'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Int'), isNonNull: true),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'active'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Boolean'), isNonNull: true),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'createdAt'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'DateTime'), isNonNull: true),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'modifiedAt'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'DateTime'), isNonNull: true),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'id'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true),
          defaultValue: null)
    ]);
const Mutation = _i1.ObjectTypeDefinitionNode(
    name: _i1.NameNode(value: 'Mutation'),
    directives: [],
    interfaces: [],
    fields: [
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'createBill'),
          directives: [],
          args: [
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'customerId'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null),
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'total'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'Decimal'), isNonNull: true),
                defaultValue: null),
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'note'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null),
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'invoice'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null),
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'amountOwed'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'Decimal'), isNonNull: true),
                defaultValue: null)
          ],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Bill'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'updateBillAsync'),
          directives: [],
          args: [
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'bill'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'BillInput'), isNonNull: true),
                defaultValue: null),
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'discount'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'DiscountInput'),
                    isNonNull: true),
                defaultValue: null)
          ],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Discount'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'removeBill'),
          directives: [],
          args: [
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'id'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null)
          ],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Boolean'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'createDiscount'),
          directives: [],
          args: [
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'name'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null),
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'description'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null),
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'discountPercent'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'Int'), isNonNull: true),
                defaultValue: null),
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'active'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'Boolean'), isNonNull: true),
                defaultValue: null),
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'createdAt'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'DateTime'), isNonNull: true),
                defaultValue: null),
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'modifiedAt'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'DateTime'), isNonNull: true),
                defaultValue: null)
          ],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Discount'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'removeDiscount'),
          directives: [],
          args: [
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'id'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null)
          ],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Boolean'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'createOrderItem'),
          directives: [],
          args: [
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'priceId'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null),
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'orderId'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null),
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'quantity'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'Int'), isNonNull: true),
                defaultValue: null)
          ],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'OrderItem'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'updateOrderItem'),
          directives: [],
          args: [
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'orderItem'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'OrderItemInput'),
                    isNonNull: true),
                defaultValue: null)
          ],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'OrderItem'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'removeCartItem'),
          directives: [],
          args: [
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'id'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null)
          ],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Boolean'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'createOrderDetails'),
          directives: [],
          args: [
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'userId'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null)
          ],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'OrderDetails'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'updateOrderDetails'),
          directives: [],
          args: [
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'order'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'OrderDetailsInput'),
                    isNonNull: true),
                defaultValue: null)
          ],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'OrderDetails'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'createProduct'),
          directives: [],
          args: [
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'name'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null),
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'description'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null),
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'categoryId'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null),
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'image'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null)
          ],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Product'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'removeProduct'),
          directives: [],
          args: [
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'id'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null)
          ],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Boolean'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'createCategory'),
          directives: [],
          args: [
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'name'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null),
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'description'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null),
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'categoryId'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null),
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'parentCategory'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null)
          ],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Category'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'removeCategory'),
          directives: [],
          args: [
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'id'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null)
          ],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Boolean'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'createUser'),
          directives: [],
          args: [
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'name'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null),
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'fullName'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null),
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'phoneNumber'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null),
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'address'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null),
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'password'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null)
          ],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'User'), isNonNull: false)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'authenticationUser'),
          directives: [],
          args: [
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'name'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null),
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'password'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null)
          ],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'User'), isNonNull: false)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'authenticationByPhoneNumber'),
          directives: [],
          args: [
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'phoneNumber'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null),
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'password'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null)
          ],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'User'), isNonNull: false)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'updateUser'),
          directives: [],
          args: [
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'user'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'UserInput'), isNonNull: true),
                defaultValue: null)
          ],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'User'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'removeUser'),
          directives: [],
          args: [
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'id'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null)
          ],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Boolean'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'userById'),
          directives: [],
          args: [
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'id'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null)
          ],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'User'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'userByPhone'),
          directives: [],
          args: [
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'phoneNumber'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null)
          ],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'User'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'createCartItem'),
          directives: [],
          args: [
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'priceId'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null),
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'quantity'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'Int'), isNonNull: true),
                defaultValue: null),
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'sessionId'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null)
          ],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'CartItem'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'updateCartItem'),
          directives: [],
          args: [
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'cart'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'CartItemInput'),
                    isNonNull: true),
                defaultValue: null)
          ],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'CartItem'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'createShoppingSession'),
          directives: [],
          args: [
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'userId'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null),
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'total'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'Decimal'), isNonNull: true),
                defaultValue: null)
          ],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'ShoppingSession'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'updateCartItemAsync'),
          directives: [],
          args: [
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'shoppingSession'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'ShoppingSessionInput'),
                    isNonNull: true),
                defaultValue: null)
          ],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'ShoppingSession'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'createUserOrderInfo'),
          directives: [],
          args: [
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'userId'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null),
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'recipient'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null),
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'phoneNumber'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null),
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'address'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null)
          ],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'UserOrderInfo'), isNonNull: false)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'updateUserOrderInfo'),
          directives: [],
          args: [
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'info'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'UserOrderInfoInput'),
                    isNonNull: true),
                defaultValue: null)
          ],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'UserOrderInfo'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'createProductPrice'),
          directives: [],
          args: [
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'sku'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null),
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'price'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'Decimal'), isNonNull: true),
                defaultValue: null),
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'productId'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null)
          ],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'ProductPrice'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'removeProductPrice'),
          directives: [],
          args: [
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'id'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null)
          ],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Boolean'), isNonNull: true))
    ]);
const OrderDetails = _i1.ObjectTypeDefinitionNode(
    name: _i1.NameNode(value: 'OrderDetails'),
    directives: [],
    interfaces: [],
    fields: [
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'id'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'createdAt'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'DateTime'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'modifiedAt'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'DateTime'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'total'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Decimal'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'userId'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'userByOrder'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'User'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'orderItemsByID'),
          directives: [],
          args: [],
          type: _i1.ListTypeNode(
              type: _i1.NamedTypeNode(
                  name: _i1.NameNode(value: 'OrderItem'), isNonNull: true),
              isNonNull: false)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'status'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true))
    ]);
const OrderDetailsInput = _i1.InputObjectTypeDefinitionNode(
    name: _i1.NameNode(value: 'OrderDetailsInput'),
    directives: [],
    fields: [
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'id'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'status'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'userId'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'total'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Decimal'), isNonNull: true),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'createdAt'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'DateTime'), isNonNull: true),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'modifiedAt'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'DateTime'), isNonNull: true),
          defaultValue: null)
    ]);
const OrderItem = _i1.ObjectTypeDefinitionNode(
    name: _i1.NameNode(value: 'OrderItem'),
    directives: [],
    interfaces: [],
    fields: [
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'id'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'orderId'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'priceId'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'createdAt'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'DateTime'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'modifiedAt'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'DateTime'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'quantity'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Int'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'orderDetailsByItems'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'OrderDetails'), isNonNull: false)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'priceInOrder'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'ProductPrice'), isNonNull: true))
    ]);
const OrderItemInput = _i1.InputObjectTypeDefinitionNode(
    name: _i1.NameNode(value: 'OrderItemInput'),
    directives: [],
    fields: [
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'id'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'orderId'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'priceId'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'quantity'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Int'), isNonNull: true),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'createdAt'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'DateTime'), isNonNull: true),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'modifiedAt'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'DateTime'), isNonNull: true),
          defaultValue: null)
    ]);
const PageInfo = _i1.ObjectTypeDefinitionNode(
    name: _i1.NameNode(value: 'PageInfo'),
    directives: [],
    interfaces: [],
    fields: [
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'hasNextPage'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Boolean'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'hasPreviousPage'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Boolean'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'startCursor'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: false)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'endCursor'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: false))
    ]);
const Product = _i1.ObjectTypeDefinitionNode(
    name: _i1.NameNode(value: 'Product'),
    directives: [],
    interfaces: [],
    fields: [
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'id'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'categoryId'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'discountId'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: false)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'createdAt'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'DateTime'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'modifiedAt'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'DateTime'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'name'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'description'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'isEmpty'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Boolean'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'image'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'category'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Category'), isNonNull: false)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'discountByProduct'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Discount'), isNonNull: false)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'pricesByProductId'),
          directives: [],
          args: [],
          type: _i1.ListTypeNode(
              type: _i1.NamedTypeNode(
                  name: _i1.NameNode(value: 'ProductPrice'), isNonNull: true),
              isNonNull: true))
    ]);
const ProductPrice = _i1.ObjectTypeDefinitionNode(
    name: _i1.NameNode(value: 'ProductPrice'),
    directives: [],
    interfaces: [],
    fields: [
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'id'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'sKU'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'productId'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'price'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Decimal'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'product'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Product'), isNonNull: true))
    ]);
const ProductsPagingConnection = _i1.ObjectTypeDefinitionNode(
    name: _i1.NameNode(value: 'ProductsPagingConnection'),
    directives: [],
    interfaces: [],
    fields: [
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'pageInfo'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'PageInfo'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'edges'),
          directives: [],
          args: [],
          type: _i1.ListTypeNode(
              type: _i1.NamedTypeNode(
                  name: _i1.NameNode(value: 'ProductsPagingEdge'),
                  isNonNull: true),
              isNonNull: false)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'nodes'),
          directives: [],
          args: [],
          type: _i1.ListTypeNode(
              type: _i1.NamedTypeNode(
                  name: _i1.NameNode(value: 'Product'), isNonNull: true),
              isNonNull: false))
    ]);
const ProductsPagingEdge = _i1.ObjectTypeDefinitionNode(
    name: _i1.NameNode(value: 'ProductsPagingEdge'),
    directives: [],
    interfaces: [],
    fields: [
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'cursor'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'node'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Product'), isNonNull: true))
    ]);
const Query = _i1.ObjectTypeDefinitionNode(
    name: _i1.NameNode(value: 'Query'),
    directives: [],
    interfaces: [],
    fields: [
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'allBillByCustomer'),
          directives: [],
          args: [
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'customerId'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null),
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'where'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'BillFilterInput'),
                    isNonNull: false),
                defaultValue: null)
          ],
          type: _i1.ListTypeNode(
              type: _i1.NamedTypeNode(
                  name: _i1.NameNode(value: 'Bill'), isNonNull: true),
              isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'allBill'),
          directives: [],
          args: [
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'where'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'BillFilterInput'),
                    isNonNull: false),
                defaultValue: null),
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'order'),
                directives: [],
                type: _i1.ListTypeNode(
                    type: _i1.NamedTypeNode(
                        name: _i1.NameNode(value: 'BillSortInput'),
                        isNonNull: true),
                    isNonNull: false),
                defaultValue: null)
          ],
          type: _i1.ListTypeNode(
              type: _i1.NamedTypeNode(
                  name: _i1.NameNode(value: 'Bill'), isNonNull: true),
              isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'billById'),
          directives: [],
          args: [
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'id'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null)
          ],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Bill'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'billsWithPagination'),
          directives: [],
          args: [
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'skip'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'Int'), isNonNull: false),
                defaultValue: null),
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'take'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'Int'), isNonNull: false),
                defaultValue: null)
          ],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'BillCollectionSegment'),
              isNonNull: false)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'productsPaging'),
          directives: [],
          args: [
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'first'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'Int'), isNonNull: false),
                defaultValue: null),
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'after'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: false),
                defaultValue: null),
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'last'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'Int'), isNonNull: false),
                defaultValue: null),
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'before'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: false),
                defaultValue: null)
          ],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'ProductsPagingConnection'),
              isNonNull: false)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'products'),
          directives: [],
          args: [],
          type: _i1.ListTypeNode(
              type: _i1.NamedTypeNode(
                  name: _i1.NameNode(value: 'Product'), isNonNull: true),
              isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'productById'),
          directives: [],
          args: [
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'id'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null)
          ],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Product'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'productByDiscountId'),
          directives: [],
          args: [
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'id'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null)
          ],
          type: _i1.ListTypeNode(
              type: _i1.NamedTypeNode(
                  name: _i1.NameNode(value: 'Product'), isNonNull: true),
              isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'category'),
          directives: [],
          args: [],
          type: _i1.ListTypeNode(
              type: _i1.NamedTypeNode(
                  name: _i1.NameNode(value: 'Category'), isNonNull: true),
              isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'categoryById'),
          directives: [],
          args: [
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'id'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null)
          ],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Category'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'users'),
          directives: [],
          args: [
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'where'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'UserFilterInput'),
                    isNonNull: false),
                defaultValue: null)
          ],
          type: _i1.ListTypeNode(
              type: _i1.NamedTypeNode(
                  name: _i1.NameNode(value: 'User'), isNonNull: true),
              isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'userById'),
          directives: [],
          args: [
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'userId'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null)
          ],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'User'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'itemsByOrderId'),
          directives: [],
          args: [
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'orderId'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null)
          ],
          type: _i1.ListTypeNode(
              type: _i1.NamedTypeNode(
                  name: _i1.NameNode(value: 'OrderItem'), isNonNull: true),
              isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'itemById'),
          directives: [],
          args: [
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'id'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null)
          ],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'OrderItem'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'allCartBySessionId'),
          directives: [],
          args: [
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'sessionId'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null)
          ],
          type: _i1.ListTypeNode(
              type: _i1.NamedTypeNode(
                  name: _i1.NameNode(value: 'CartItem'), isNonNull: true),
              isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'orderss'),
          directives: [],
          args: [],
          type: _i1.ListTypeNode(
              type: _i1.NamedTypeNode(
                  name: _i1.NameNode(value: 'OrderDetails'), isNonNull: true),
              isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'orderDetailsById'),
          directives: [],
          args: [
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'id'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null)
          ],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'OrderDetails'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'orderDetailsByUserId'),
          directives: [],
          args: [
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'id'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null)
          ],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'OrderDetails'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'priceByProductId'),
          directives: [],
          args: [
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'productId'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null)
          ],
          type: _i1.ListTypeNode(
              type: _i1.NamedTypeNode(
                  name: _i1.NameNode(value: 'ProductPrice'), isNonNull: true),
              isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'discounts'),
          directives: [],
          args: [],
          type: _i1.ListTypeNode(
              type: _i1.NamedTypeNode(
                  name: _i1.NameNode(value: 'Discount'), isNonNull: true),
              isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'discountById'),
          directives: [],
          args: [
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'id'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null)
          ],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Discount'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'activeDiscounts'),
          directives: [],
          args: [],
          type: _i1.ListTypeNode(
              type: _i1.NamedTypeNode(
                  name: _i1.NameNode(value: 'Discount'), isNonNull: true),
              isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'shoppingSessions'),
          directives: [],
          args: [],
          type: _i1.ListTypeNode(
              type: _i1.NamedTypeNode(
                  name: _i1.NameNode(value: 'ShoppingSession'),
                  isNonNull: true),
              isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'shoppingSessionById'),
          directives: [],
          args: [
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'id'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null)
          ],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'ShoppingSession'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'shoppingSessionByUserId'),
          directives: [],
          args: [
            _i1.InputValueDefinitionNode(
                name: _i1.NameNode(value: 'id'),
                directives: [],
                type: _i1.NamedTypeNode(
                    name: _i1.NameNode(value: 'String'), isNonNull: true),
                defaultValue: null)
          ],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'ShoppingSession'), isNonNull: true))
    ]);
const ShoppingSession = _i1.ObjectTypeDefinitionNode(
    name: _i1.NameNode(value: 'ShoppingSession'),
    directives: [],
    interfaces: [],
    fields: [
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'id'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'userId'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'total'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Decimal'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'modifiedAt'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'DateTime'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'createdAt'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'DateTime'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'userByShoppingSession'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'User'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'cartsBySessionId'),
          directives: [],
          args: [],
          type: _i1.ListTypeNode(
              type: _i1.NamedTypeNode(
                  name: _i1.NameNode(value: 'CartItem'), isNonNull: false),
              isNonNull: true))
    ]);
const ShoppingSessionInput = _i1.InputObjectTypeDefinitionNode(
    name: _i1.NameNode(value: 'ShoppingSessionInput'),
    directives: [],
    fields: [
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'id'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'userId'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'total'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Decimal'), isNonNull: true),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'createdAt'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'DateTime'), isNonNull: true),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'modifiedAt'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'DateTime'), isNonNull: true),
          defaultValue: null)
    ]);
const SortEnumType = _i1.EnumTypeDefinitionNode(
    name: _i1.NameNode(value: 'SortEnumType'),
    directives: [],
    values: [
      _i1.EnumValueDefinitionNode(
          name: _i1.NameNode(value: 'ASC'), directives: []),
      _i1.EnumValueDefinitionNode(
          name: _i1.NameNode(value: 'DESC'), directives: [])
    ]);
const StringOperationFilterInput = _i1.InputObjectTypeDefinitionNode(
    name: _i1.NameNode(value: 'StringOperationFilterInput'),
    directives: [],
    fields: [
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'and'),
          directives: [],
          type: _i1.ListTypeNode(
              type: _i1.NamedTypeNode(
                  name: _i1.NameNode(value: 'StringOperationFilterInput'),
                  isNonNull: true),
              isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'or'),
          directives: [],
          type: _i1.ListTypeNode(
              type: _i1.NamedTypeNode(
                  name: _i1.NameNode(value: 'StringOperationFilterInput'),
                  isNonNull: true),
              isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'eq'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'neq'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'contains'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'ncontains'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'in'),
          directives: [],
          type: _i1.ListTypeNode(
              type: _i1.NamedTypeNode(
                  name: _i1.NameNode(value: 'String'), isNonNull: false),
              isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'nin'),
          directives: [],
          type: _i1.ListTypeNode(
              type: _i1.NamedTypeNode(
                  name: _i1.NameNode(value: 'String'), isNonNull: false),
              isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'startsWith'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'nstartsWith'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'endsWith'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'nendsWith'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: false),
          defaultValue: null)
    ]);
const Subscription = _i1.ObjectTypeDefinitionNode(
    name: _i1.NameNode(value: 'Subscription'),
    directives: [],
    interfaces: [],
    fields: [
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'onCreateCustomer'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'User'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'onUsersGet'),
          directives: [],
          args: [],
          type: _i1.ListTypeNode(
              type: _i1.NamedTypeNode(
                  name: _i1.NameNode(value: 'User'), isNonNull: true),
              isNonNull: true))
    ]);
const User = _i1.ObjectTypeDefinitionNode(
    name: _i1.NameNode(value: 'User'),
    directives: [],
    interfaces: [],
    fields: [
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'id'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'userName'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'address'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'fullName'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'phoneNumber'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'userInfo'),
          directives: [],
          args: [],
          type: _i1.ListTypeNode(
              type: _i1.NamedTypeNode(
                  name: _i1.NameNode(value: 'UserOrderInfo'), isNonNull: true),
              isNonNull: true))
    ]);
const UserFilterInput = _i1.InputObjectTypeDefinitionNode(
    name: _i1.NameNode(value: 'UserFilterInput'),
    directives: [],
    fields: [
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'and'),
          directives: [],
          type: _i1.ListTypeNode(
              type: _i1.NamedTypeNode(
                  name: _i1.NameNode(value: 'UserFilterInput'),
                  isNonNull: true),
              isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'or'),
          directives: [],
          type: _i1.ListTypeNode(
              type: _i1.NamedTypeNode(
                  name: _i1.NameNode(value: 'UserFilterInput'),
                  isNonNull: true),
              isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'id'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'StringOperationFilterInput'),
              isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'userName'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'StringOperationFilterInput'),
              isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'fullName'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'StringOperationFilterInput'),
              isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'phoneNumber'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'StringOperationFilterInput'),
              isNonNull: false),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'address'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'StringOperationFilterInput'),
              isNonNull: false),
          defaultValue: null)
    ]);
const UserInput = _i1.InputObjectTypeDefinitionNode(
    name: _i1.NameNode(value: 'UserInput'),
    directives: [],
    fields: [
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'id'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'userName'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'fullName'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'phoneNumber'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'address'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true),
          defaultValue: null)
    ]);
const UserOrderInfo = _i1.ObjectTypeDefinitionNode(
    name: _i1.NameNode(value: 'UserOrderInfo'),
    directives: [],
    interfaces: [],
    fields: [
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'userId'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'recipient'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'phoneNumber'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'address'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true)),
      _i1.FieldDefinitionNode(
          name: _i1.NameNode(value: 'id'),
          directives: [],
          args: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true))
    ]);
const UserOrderInfoInput = _i1.InputObjectTypeDefinitionNode(
    name: _i1.NameNode(value: 'UserOrderInfoInput'),
    directives: [],
    fields: [
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'userId'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'recipient'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'phoneNumber'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'address'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true),
          defaultValue: null),
      _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'id'),
          directives: [],
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'String'), isNonNull: true),
          defaultValue: null)
    ]);
const document = _i1.DocumentNode(definitions: [
  defer,
  stream,
  specifiedBy,
  Bill,
  BillCollectionSegment,
  BillFilterInput,
  BillInput,
  BillSortInput,
  BooleanOperationFilterInput,
  CartItem,
  CartItemInput,
  Category,
  CollectionSegmentInfo,
  ComparableDateTimeOperationFilterInput,
  ComparableDecimalOperationFilterInput,
  DateTime,
  Decimal,
  Discount,
  DiscountInput,
  Mutation,
  OrderDetails,
  OrderDetailsInput,
  OrderItem,
  OrderItemInput,
  PageInfo,
  Product,
  ProductPrice,
  ProductsPagingConnection,
  ProductsPagingEdge,
  Query,
  ShoppingSession,
  ShoppingSessionInput,
  SortEnumType,
  StringOperationFilterInput,
  Subscription,
  User,
  UserFilterInput,
  UserInput,
  UserOrderInfo,
  UserOrderInfoInput
]);
