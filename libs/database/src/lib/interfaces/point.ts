import { Field, Float, InputType, Int, ObjectType } from '@nestjs/graphql';

@ObjectType()
@InputType('PointInput')
export class Point {
  @Field(() => Float)
  lat!: number;

  @Field(() => Float)
  lng!: number;

  @Field(() => Int, { nullable: true })
  heading?: number;
}
