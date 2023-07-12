import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/database/PrismaService';

@Injectable()
export class ProtheusBaseService {
  constructor(private prisma: PrismaService) {}

  getByTable = async (name: string) => {
    return this.prisma.$queryRawUnsafe(`SELECT * FROM protheus${name}`);
  };

  getByTableAndSpecificId = async (name: string, id: number) => {
    const data: any[] = await this.prisma.$queryRawUnsafe(
      `SELECT * FROM protheus${name} WHERE id = ${id}`,
    );

    return data && data.length > 0 ? data[0] : null;
  };
}
