import { Module } from '@nestjs/common';
import { RenovabioService } from './renovabio.service';
import { RenovabioController } from './renovabio.controller';
import { PrismaModule } from 'src/prisma/prisma.module';

@Module({
  controllers: [RenovabioController],
  providers: [RenovabioService],
  imports: [PrismaModule],
})
export class RenovabioModule {}
