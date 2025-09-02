import { ObjectType } from '@nestjs/graphql';
import { CurrentConfiguration } from './config.dto';

@ObjectType()
export class ConfigInformation {
  isValid: boolean;
  config?: CurrentConfiguration;
}
