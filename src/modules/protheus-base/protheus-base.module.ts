import { Module } from '@nestjs/common';
import { PrismaService } from 'src/database/PrismaService';
import { ProtheusBaseController } from './protheus-base.controller';
import { ProtheusBaseService } from './protheus-base.service';

@Module({
  controllers: [ProtheusBaseController],
  providers: [ProtheusBaseService, PrismaService],
})
export class ProtheusBaseModule {}
