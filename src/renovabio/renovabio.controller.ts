import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
} from '@nestjs/common';
import { RenovabioService } from './renovabio.service';
import { UpdateRenovabioDto } from './dto/update-renovabio.dto';
import { ApiCreatedResponse, ApiOkResponse, ApiTags } from '@nestjs/swagger';
import { RenovabioEntity } from './entities/renovabio.entity';
import { CreateAcessoDto } from './dto/create-acesso.dto';

@ApiTags('renovabio')
@Controller('renovabio')
export class RenovabioController {
  constructor(private readonly renovabioService: RenovabioService) {}

  @Post('acesso')
  @ApiCreatedResponse({ type: RenovabioEntity })
  create(@Body() createAcessoDto: CreateAcessoDto) {
    return this.renovabioService.create(createAcessoDto);
  }

  @Get('acesso')
  @ApiOkResponse({ type: RenovabioEntity, isArray: true })
  findAcesso() {
    return this.renovabioService.findAcesso();
  }

  @Get()
  @ApiOkResponse({ type: RenovabioEntity, isArray: true })
  findAll() {
    return this.renovabioService.findAll();
  }

  @Get(':id')
  @ApiOkResponse({ type: RenovabioEntity })
  findOne(@Param('id') id: string) {
    return this.renovabioService.findOne(+id);
  }

  @Patch(':id')
  @ApiOkResponse({ type: RenovabioEntity })
  update(
    @Param('id') id: string,
    @Body() updateRenovabioDto: UpdateRenovabioDto,
  ) {
    return this.renovabioService.update(+id, updateRenovabioDto);
  }

  @Delete(':id')
  @ApiOkResponse({ type: RenovabioEntity })
  remove(@Param('id') id: string) {
    return this.renovabioService.remove(+id);
  }
}
