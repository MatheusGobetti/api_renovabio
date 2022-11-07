import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { CreateAcessoDto } from './dto/acessoDto/create-acesso.dto';
import { UpdateAcessoDto } from './dto/acessoDto/update-acesso.dto';

@Injectable()
export class AcessoService {
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

  update(id_acesso: number, updateAcessoDto: UpdateAcessoDto) {
    return this.prisma.acesso.update({
      where: { id_acesso },
      data: updateAcessoDto,
    });
  }

  remove(id_acesso: number) {
    return this.prisma.acesso.delete({ where: { id_acesso } });
  }
}
