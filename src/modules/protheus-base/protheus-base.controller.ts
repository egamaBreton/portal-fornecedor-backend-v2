import { Controller, Get, Param, UseInterceptors } from '@nestjs/common';
import { ResponseInterceptor } from 'src/helpers/interceptors/response.interceptor';
import { ProtheusBaseService } from './protheus-base.service';

@Controller('/base')
@UseInterceptors(ResponseInterceptor)
export class ProtheusBaseController {
  constructor(private readonly protheusBaseService: ProtheusBaseService) {}

  @Get(':name')
  async getAll(@Param() param) {
    return this.protheusBaseService.getByTable(param.name);
  }

  @Get(':name/:id')
  async getById(@Param() param) {
    return this.protheusBaseService.getByTableAndSpecificId(
      param.name,
      param.id,
    );
  }
}
