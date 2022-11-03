import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { PrismaModule } from './prisma/prisma.module';
import { RenovabioModule } from './renovabio/renovabio.module';

@Module({
  imports: [PrismaModule, RenovabioModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
