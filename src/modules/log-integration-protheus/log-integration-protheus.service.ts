import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/database/PrismaService';
import { LogIntegracaoProtheusCreateInput } from './log-integration-protheus.dto';
import * as moment from 'moment';

@Injectable()
export class LogIntegrationProtheusService {
  constructor(private prisma: PrismaService) {}

  create = async (data: LogIntegracaoProtheusCreateInput) => {
    return this.prisma.logIntegracaoProtheus.create({
      data: { ...data, data: moment().toDate() },
    });
  };

  getTop2000 = async () => {
    return this.prisma.logIntegracaoProtheus.findMany({
      take: 2000,
      orderBy: {
        data: 'desc',
      },
    });
  };
}
