import { Module } from '@nestjs/common';
import { RenovabioService } from './renovabio-renovabio.service';
import { AcessoService } from './renovabio-acesso.service';
import { AcessoController } from './renovabio-acesso.controller';
import { PrismaModule } from 'src/prisma/prisma.module';
import { RenovabioController } from './renovabio-renovabio.controller';

@Module({
  controllers: [AcessoController, RenovabioController],
  providers: [AcessoService, RenovabioService],
  imports: [PrismaModule],
})
export class RenovabioModule {}
