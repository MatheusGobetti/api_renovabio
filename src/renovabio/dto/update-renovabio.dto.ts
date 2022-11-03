import { PartialType } from '@nestjs/swagger';
import { CreateRenovabioDto } from './create-renovabio.dto';

export class UpdateRenovabioDto extends PartialType(CreateRenovabioDto) {}
