import { Controller, Get, UseInterceptors } from '@nestjs/common';
import { LogIntegrationProtheusService } from './log-integration-protheus.service';
import { ResponseInterceptor } from 'src/helpers/interceptors/response.interceptor';

@Controller('log-integration-protheus')
@UseInterceptors(ResponseInterceptor)
export class LogIntegrationProtheusController {
  constructor(
    private readonly logIntegrationProtheusService: LogIntegrationProtheusService,
  ) {}

  @Get()
  async getGrid() {
    return  this.logIntegrationProtheusService.getTop2000();
  }

  
  @Get('grid')
  async getGrid2() {
    return  this.logIntegrationProtheusService.getTop2000();
  }
}
