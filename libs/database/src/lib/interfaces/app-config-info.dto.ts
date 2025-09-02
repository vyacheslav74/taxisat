import { InputType, ObjectType, registerEnumType } from '@nestjs/graphql';
import { AppColorScheme } from 'license-verify';

@InputType('AppConfigInfoInput')
@ObjectType('AppConfigInfo')
export class AppConfigInfoDTO {
  logo?: string;
  name!: string;
  color?: AppColorScheme;
}

registerEnumType(AppColorScheme, {
  name: 'AppColorScheme',
});
