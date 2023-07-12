import {
  Injectable,
  NestInterceptor,
  ExecutionContext,
  CallHandler,
  HttpStatus,
} from '@nestjs/common';
import { Observable } from 'rxjs';
import { map } from 'rxjs/operators';
import { Reflector } from '@nestjs/core';
import { SuccessException } from '../exceptions/success.exception';

export interface Response<T> {
  statusCode: number;
  message: string;
  data: T;
}

@Injectable()
export class ResponseInterceptor<T> implements NestInterceptor<T, Response<T>> {
  constructor(private reflector: Reflector) {}

  intercept(
    context: ExecutionContext,
    next: CallHandler,
  ): Observable<Response<T>> {
    return next.handle().pipe(
      map((resp) => {
        debugger;
        const statusCode =
          resp?.status || context.switchToHttp().getResponse().statusCode;

        if (!resp?.response?.data && statusCode == HttpStatus.OK)
          resp = new SuccessException(resp, 'Sucesso');

        let data = resp?.response?.data;

        return {
          statusCode,
          message:
            this.reflector.get<string>(
              'response_message',
              context.getHandler(),
            ) ||
            resp.message ||
            '',
          data,
        };
      }),
    );
  }
}
