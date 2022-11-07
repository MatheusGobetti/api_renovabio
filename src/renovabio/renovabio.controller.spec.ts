import { Test, TestingModule } from '@nestjs/testing';
import { RenovabioController } from './renovabio-acesso.controller';
import { RenovabioService } from './renovabio-acesso.service';

describe('RenovabioController', () => {
  let controller: RenovabioController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [RenovabioController],
      providers: [RenovabioService],
    }).compile();

    controller = module.get<RenovabioController>(RenovabioController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
