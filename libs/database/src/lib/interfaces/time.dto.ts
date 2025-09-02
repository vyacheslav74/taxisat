import { Field, InputType, Int, ObjectType } from '@nestjs/graphql';

@ObjectType()
@InputType('TimeInput')
export class Time {
  @Field(() => Int)
  hour!: number;

  @Field(() => Int)
  minute!: number;
}
