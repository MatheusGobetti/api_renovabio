import { ApiProperty } from '@nestjs/swagger';
import { Decimal } from '@prisma/client/runtime';

export class CreateAcessoDto {
  @ApiProperty()
  id_acesso: Decimal;

  @ApiProperty()
  id_usuario: Decimal;

  @ApiProperty({ required: false })
  usuario: string;

  @ApiProperty()
  login: string;

  @ApiProperty()
  data_login: Date;

  @ApiProperty()
  data_logout?: Date;

  @ApiProperty()
  sessao: string;

  @ApiProperty()
  numero_ip: string;

  @ApiProperty({ required: false })
  detalhe?: string;
}
