import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import * as dotenv from 'dotenv'

dotenv.config() 

async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  console.log(`The connection URL is ${process.env.DATABASE_URL}`)
  app.setGlobalPrefix('api');
  await app.listen(3000);
}
bootstrap();
