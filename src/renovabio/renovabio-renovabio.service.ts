import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { UpdateRenovabioDto } from './dto/renovabioDto/update-renovabio.dto';
import { CreateRenovabioDto } from './dto/renovabioDto/create-renovabio.dto';

@Injectable()
export class RenovabioService {
  constructor(private prisma: PrismaService) {}

  create(createRenovabioDto: CreateRenovabioDto) {
    return this.prisma.renovabio.create({ data: createRenovabioDto });
  }

  findRenovabio() {
    return this.prisma.renovabio.findMany({ where: { id_renovabio: 1 } });
  }

  findAll() {
    return this.prisma.renovabio.findMany();
  }

  findOne(id_renovabio: number) {
    return this.prisma.renovabio.findUnique({ where: { id_renovabio } });
  }

  update(id_renovabio: number, updateRenovabioDto: UpdateRenovabioDto) {
    return this.prisma.renovabio.update({
      where: { id_renovabio },
      data: updateRenovabioDto,
    });
  }

  remove(id_renovabio: number) {
    return this.prisma.renovabio.delete({ where: { id_renovabio } });
  }
}
