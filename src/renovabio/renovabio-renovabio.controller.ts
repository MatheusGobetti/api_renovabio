import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
} from '@nestjs/common';
import { ApiCreatedResponse, ApiOkResponse, ApiTags } from '@nestjs/swagger';
import { RenovabioEntity } from './entities/renovabio.entity';
import { CreateRenovabioDto } from './dto/renovabioDto/create-renovabio.dto';
import { UpdateRenovabioDto } from './dto/renovabioDto/update-renovabio.dto';
import { RenovabioService } from './renovabio-renovabio.service';

@ApiTags('renovabio - table renovabio')
@Controller('renovabio_table')
export class RenovabioController {
  constructor(private readonly renovabioService: RenovabioService) {}

  @Post('renovabio')
  @ApiCreatedResponse({ type: RenovabioEntity })
  create(@Body() createRenovabioDto: CreateRenovabioDto) {
    return this.renovabioService.create(createRenovabioDto);
  }

  @Get('renovabio')
  @ApiOkResponse({ type: RenovabioEntity, isArray: true })
  findRenovabio() {
    return this.renovabioService.findRenovabio();
  }

  @Patch('renovabio/:id')
  @ApiOkResponse({ type: RenovabioEntity })
  update(
    @Param('id') id: string,
    @Body() updateRenovabioDto: UpdateRenovabioDto,
  ) {
    return this.renovabioService.update(+id, updateRenovabioDto);
  }

  @Delete('renovabio/:id')
  @ApiOkResponse({ type: RenovabioEntity })
  remove(@Param('id') id: string) {
    return this.renovabioService.remove(+id);
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
}
