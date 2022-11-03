import { Test, TestingModule } from '@nestjs/testing';
import { RenovabioController } from './renovabio.controller';
import { RenovabioService } from './renovabio.service';

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
