import { registerEnumType } from '@nestjs/graphql';

export enum ComplaintActivityType {
  Create = 'Create',
  AssignToOperator = 'AssignedToOperator',
  UnassignFromOperators = 'UnassignedFromOperators',
  Update = 'Update',
  Resolved = 'Resolved',
  StatusChange = 'StatusChange',
  Comment = 'Comment',
}

registerEnumType(ComplaintActivityType, { name: 'ComplaintActivityType' });
