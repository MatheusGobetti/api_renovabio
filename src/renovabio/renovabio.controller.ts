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
import { CreateRenovabioDto } from './dto/create-renovabio.dto';
import { UpdateRenovabioDto } from './dto/update-renovabio.dto';

@Controller('renovabio')
export class RenovabioController {
  constructor(private readonly renovabioService: RenovabioService) {}

  @Post()
  create(@Body() createRenovabioDto: CreateRenovabioDto) {
    return this.renovabioService.create(createRenovabioDto);
  }

  @Get()
  findAll() {
    return this.renovabioService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.renovabioService.findOne(+id);
  }

  @Patch(':id')
  update(
    @Param('id') id: string,
    @Body() updateRenovabioDto: UpdateRenovabioDto,
  ) {
    return this.renovabioService.update(+id, updateRenovabioDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.renovabioService.remove(+id);
  }
}
