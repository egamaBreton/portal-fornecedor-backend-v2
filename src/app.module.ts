import { Module } from '@nestjs/common';
import { LogIntegrationProtheusModule } from './modules/log-integration-protheus/log-integration-protheus.module';
import { ProtheusBaseModule } from './modules/protheus-base/protheus-base.module';
import { AuthModule } from './modules/auth/auth.module';

@Module({
  imports: [LogIntegrationProtheusModule, ProtheusBaseModule, AuthModule],
  controllers: [],
  providers: [],
})
export class AppModule {}
