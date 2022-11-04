import { Injectable } from '@nestjs/common';
import { CreateRenovabioDto } from './dto/create-renovabio.dto';
import { UpdateRenovabioDto } from './dto/update-renovabio.dto';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class RenovabioService {
  constructor(private prisma: PrismaService) {}

  create(createRenovabioDto: CreateRenovabioDto) {
    return this.prisma.article.create({ data: createRenovabioDto });
  }

  findDrafts() {
    return this.prisma.article.findMany({ where: { published: false } });
  }

  findAll() {
    return this.prisma.article.findMany({ where: { published: true } });
  }

  findOne(id: number) {
    return this.prisma.article.findUnique({ where: { id } });
  }

  update(id: number, updateRenovabioDto: UpdateRenovabioDto) {
    return this.prisma.article.update({
      where: { id },
      data: updateRenovabioDto,
    });
  }

  remove(id: number) {
    return this.prisma.article.delete({ where: { id } });
  }
}
