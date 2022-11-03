import { Injectable } from '@nestjs/common';
import { CreateRenovabioDto } from './dto/create-renovabio.dto';
import { UpdateRenovabioDto } from './dto/update-renovabio.dto';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class RenovabioService {
  constructor(private prisma: PrismaService) {}

  create(createRenovabioDto: CreateRenovabioDto) {
    return 'This action adds a new renovabio';
  }

  findAll() {
    return `This action returns all renovabio`;
  }

  findOne(id: number) {
    return `This action returns a #${id} renovabio`;
  }

  update(id: number, updateRenovabioDto: UpdateRenovabioDto) {
    return `This action updates a #${id} renovabio`;
  }

  remove(id: number) {
    return `This action removes a #${id} renovabio`;
  }
}
