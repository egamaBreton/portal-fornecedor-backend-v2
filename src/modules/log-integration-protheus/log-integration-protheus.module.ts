import { Module } from '@nestjs/common';
import { LogIntegrationProtheusService } from './log-integration-protheus.service';
import { LogIntegrationProtheusController } from './log-integration-protheus.controller';
import { PrismaService } from 'src/database/PrismaService';

@Module({
  controllers: [LogIntegrationProtheusController],
  providers: [LogIntegrationProtheusService, PrismaService],
})
export class LogIntegrationProtheusModule {}
