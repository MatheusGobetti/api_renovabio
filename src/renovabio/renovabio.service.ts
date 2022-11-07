import { Injectable } from '@nestjs/common';
import { UpdateRenovabioDto } from './dto/update-renovabio.dto';
import { PrismaService } from 'src/prisma/prisma.service';
import { CreateAcessoDto } from './dto/create-acesso.dto';

@Injectable()
export class RenovabioService {
  constructor(private prisma: PrismaService) {}

  create(createAcessoDto: CreateAcessoDto) {
    return this.prisma.acesso.create({ data: createAcessoDto });
  }

  findAcesso() {
    return this.prisma.acesso.findMany({ where: { usuario: 'Matheus' } });
  }

  findAll() {
    return this.prisma.acesso.findMany();
  }

  findOne(id_acesso: number) {
    return this.prisma.acesso.findUnique({ where: { id_acesso } });
  }

  update(id_acesso: number, updateRenovabioDto: UpdateRenovabioDto) {
    return this.prisma.acesso.update({
      where: { id_acesso },
      data: updateRenovabioDto,
    });
  }

  remove(id_acesso: number) {
    return this.prisma.acesso.delete({ where: { id_acesso } });
  }
}
