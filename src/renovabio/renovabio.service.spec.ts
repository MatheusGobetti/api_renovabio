import { Test, TestingModule } from '@nestjs/testing';
import { RenovabioService } from './renovabio-acesso.service';

describe('RenovabioService', () => {
  let service: RenovabioService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [RenovabioService],
    }).compile();

    service = module.get<RenovabioService>(RenovabioService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
