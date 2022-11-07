import { acesso } from '@prisma/client';
import { ApiProperty } from '@nestjs/swagger';
import { Decimal } from '@prisma/client/runtime';

export class AcessoEntity implements acesso {
  @ApiProperty()
  id_acesso: Decimal;

  @ApiProperty()
  id_usuario: Decimal;

  @ApiProperty()
  usuario: string;

  @ApiProperty({ required: false, nullable: true })
  login: string;

  @ApiProperty()
  data_login: Date;

  @ApiProperty()
  data_logout: Date;

  @ApiProperty()
  sessao: string;

  @ApiProperty()
  numero_ip: string;

  @ApiProperty()
  detalhe: string;
}
