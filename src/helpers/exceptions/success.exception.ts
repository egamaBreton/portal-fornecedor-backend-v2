import { HttpException, HttpStatus } from '@nestjs/common';

export class SuccessException extends HttpException {
  constructor(data: any, message?: string) {
    super({ data, message }, HttpStatus.OK);
  }
}
