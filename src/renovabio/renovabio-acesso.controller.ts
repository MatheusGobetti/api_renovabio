import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
} from '@nestjs/common';
import { AcessoService } from './renovabio-acesso.service';
import { ApiCreatedResponse, ApiOkResponse, ApiTags } from '@nestjs/swagger';
import { AcessoEntity } from './entities/acesso.entity';
import { CreateAcessoDto } from './dto/acessoDto/create-acesso.dto';
import { UpdateAcessoDto } from './dto/acessoDto/update-acesso.dto';

@ApiTags('renovabio - acesso')
@Controller('renovabio')
export class AcessoController {
  constructor(private readonly acessoService: AcessoService) {}

  @Post('acesso')
  @ApiCreatedResponse({ type: AcessoEntity })
  create(@Body() createAcessoDto: CreateAcessoDto) {
    return this.acessoService.create(createAcessoDto);
  }

  @Get('acesso')
  @ApiOkResponse({ type: AcessoEntity, isArray: true })
  findAcesso() {
    return this.acessoService.findAcesso();
  }

  @Patch('acesso/:id')
  @ApiOkResponse({ type: AcessoEntity })
  update(@Param('id') id: string, @Body() updateAcessoDto: UpdateAcessoDto) {
    return this.acessoService.update(+id, updateAcessoDto);
  }

  @Delete('acesso/:id')
  @ApiOkResponse({ type: AcessoEntity })
  remove(@Param('id') id: string) {
    return this.acessoService.remove(+id);
  }

  @Get()
  @ApiOkResponse({ type: AcessoEntity, isArray: true })
  findAll() {
    return this.acessoService.findAll();
  }

  @Get(':id')
  @ApiOkResponse({ type: AcessoEntity })
  findOne(@Param('id') id: string) {
    return this.acessoService.findOne(+id);
  }
}
