/*
  Warnings:

  - You are about to drop the `Article` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "Article";

-- CreateTable
CREATE TABLE "acesso" (
    "id_acesso" DECIMAL(38,0) NOT NULL,
    "id_usuario" DECIMAL(38,0) NOT NULL,
    "usuario" VARCHAR(255) NOT NULL,
    "login" VARCHAR(20) NOT NULL,
    "data_login" TIMESTAMP(6) NOT NULL,
    "data_logout" TIMESTAMP(6),
    "sessao" VARCHAR(255),
    "numero_ip" VARCHAR(50),
    "detalhe" VARCHAR(2000),

    CONSTRAINT "acesso_pkey" PRIMARY KEY ("id_acesso")
);

-- CreateTable
CREATE TABLE "departamento" (
    "id_departamento" DECIMAL(38,0) NOT NULL,
    "id_departamento_pai" DECIMAL(38,0),
    "sigla" VARCHAR(10) NOT NULL,
    "descricao" VARCHAR(50) NOT NULL,
    "id_usuario" DECIMAL(38,0),
    "integrado_app" DECIMAL(4,0) NOT NULL,

    CONSTRAINT "departamento_pkey" PRIMARY KEY ("id_departamento")
);

-- CreateTable
CREATE TABLE "gestao_uso_solo" (
    "id_gestao_uso_solo" DECIMAL(38,0) NOT NULL,
    "id_unidade" DECIMAL(38,0) NOT NULL,
    "codigo_imovel" VARCHAR(13) NOT NULL,
    "nome_propriedade" VARCHAR(100) NOT NULL,
    "id_cidade" DECIMAL(38,0) NOT NULL,
    "proprietario" VARCHAR(255),
    "tipo_parceria" DECIMAL(38,0),
    "area_total_imovel" DECIMAL(18,3),
    "area_agricultavel" DECIMAL(18,3),
    "area_preservacao" DECIMAL(18,3),
    "area_reserva" DECIMAL(18,3),
    "area_benfeitoria" DECIMAL(18,3),
    "modulos_fiscais" DECIMAL(38,0),
    "ccir" VARCHAR(20),
    "matricula" VARCHAR(255),
    "itr" VARCHAR(10),
    "ada" VARCHAR(10),
    "car" VARCHAR(60),
    "planta_geral_filename" VARCHAR(255),
    "planta_geral_blob" BYTEA,
    "uso_ocupacao_filename" VARCHAR(255),
    "uso_ocupacao_blob" BYTEA,
    "zoneamento_ambiental_filename" VARCHAR(255),
    "zoneamento_ambiental_blob" BYTEA,
    "tematico_01_filename" VARCHAR(255),
    "tematico_01_blob" BYTEA,
    "tematico_02_filename" VARCHAR(255),
    "tematico_02_blob" BYTEA,
    "tematico_03_filename" VARCHAR(255),
    "tematico_03_blob" BYTEA,
    "tematico_04_filename" VARCHAR(255),
    "tematico_04_blob" BYTEA,
    "tematico_05_filename" VARCHAR(255),
    "tematico_05_blob" BYTEA,
    "projeto_01_filename" VARCHAR(255),
    "projeto_01_blob" BYTEA,
    "projeto_02_filename" VARCHAR(255),
    "projeto_02_blob" BYTEA,
    "bioma" VARCHAR(20),
    "ccir_blob" BYTEA,
    "ccir_filename" VARCHAR(255),
    "matricula_blob" BYTEA,
    "matricula_filename" VARCHAR(255),
    "itr_blob" BYTEA,
    "itr_filename" VARCHAR(255),
    "ada_blob" BYTEA,
    "ada_filename" VARCHAR(255),
    "car_blob" BYTEA,
    "car_filename" VARCHAR(255),
    "contrato_blob" BYTEA,
    "contrato_filename" VARCHAR(255),
    "aditivo_01_blob" BYTEA,
    "aditivo_01_filename" VARCHAR(255),
    "aditivo_02_blob" BYTEA,
    "aditivo_02_filename" VARCHAR(255),
    "matricula02" VARCHAR(10),
    "matricula02_blob" BYTEA,
    "matricula02_filename" VARCHAR(255),
    "matricula03" VARCHAR(10),
    "matricula03_blob" BYTEA,
    "matricula03_filename" VARCHAR(255),
    "matricula04" VARCHAR(10),
    "matricula04_blob" BYTEA,
    "matricula04_filename" VARCHAR(255),
    "matricula05" VARCHAR(10),
    "matricula05_blob" BYTEA,
    "matricula05_filename" VARCHAR(255),
    "itr02" VARCHAR(10),
    "itr02_blob" BYTEA,
    "itr02_filename" VARCHAR(255),
    "cnpj" VARCHAR(65),
    "car_blob_02" BYTEA,
    "car_blob_03" BYTEA,
    "car_blob_04" BYTEA,
    "car_filename_02" VARCHAR(255),
    "car_filename_03" VARCHAR(255),
    "car_filename_04" VARCHAR(255),
    "car2" VARCHAR(60),
    "car3" VARCHAR(60),
    "car4" VARCHAR(60),
    "inativo_integracao" DECIMAL(38,0),
    "chave" VARCHAR(25),
    "codigo_fazenda_interno" VARCHAR(25),
    "id_gestao_uso_solo_pai" DECIMAL(38,0),
    "nro_car" DECIMAL(38,0),
    "id_gestao_uso_solo_pai_agrup" DECIMAL(34,0),
    "codigos_imoveis_agrupados" VARCHAR(500),
    "documentos_agrupados" VARCHAR(500),
    "propriedades_agrupadas" VARCHAR(1000),
    "proprietarios_agrupados" VARCHAR(1000),
    "cidades_agrupadas" VARCHAR(1000),
    "ufs_agrupados" VARCHAR(500),
    "georeferenciado" DECIMAL(8,0),
    "incra" VARCHAR(50),
    "id_licenca_1" DECIMAL(8,0),
    "id_licenca_2" DECIMAL(8,0),
    "id_licenca_3" DECIMAL(8,0),
    "id_licenca_4" DECIMAL(8,0),
    "id_licenca_5" DECIMAL(8,0),
    "ano" DECIMAL(4,0),
    "total_producao_ton_temp" DECIMAL(18,2),
    "area_serv_adm" DECIMAL(18,4),
    "area_consolidada" DECIMAL(18,4),
    "area_uso_restrito" DECIMAL(18,4),

    CONSTRAINT "gestao_uso_solo_pkey" PRIMARY KEY ("id_gestao_uso_solo")
);

-- CreateTable
CREATE TABLE "grupo" (
    "id_grupo" DECIMAL(8,0) NOT NULL,
    "descricao" VARCHAR(255),
    "habilitado" DECIMAL(38,0),
    "id_usina" DECIMAL(8,0),

    CONSTRAINT "grupo_pkey" PRIMARY KEY ("id_grupo")
);

-- CreateTable
CREATE TABLE "renovabio" (
    "id_renovabio" DECIMAL(38,0) NOT NULL,
    "ano" DECIMAL(4,0) NOT NULL,
    "eleg_car_mapa_blob" BYTEA,
    "eleg_car_mapa_filename" VARCHAR(255),
    "eleg_car_shape_blob" BYTEA,
    "eleg_car_shape_filename" VARCHAR(255),
    "eleg_his_mapa_blob" BYTEA,
    "eleg_his_mapa_filename" VARCHAR(255),
    "eleg_his_shape_blob" BYTEA,
    "eleg_his_shape_filename" VARCHAR(255),
    "eleg_zon_mapa_blob" BYTEA,
    "eleg_zon_mapa_filename" VARCHAR(255),
    "eleg_zon_shape_blob" BYTEA,
    "eleg_zon_shape_filename" VARCHAR(255),
    "planilha_blob" BYTEA,
    "planilha_filename" VARCHAR(255),
    "planilha_blob_02" BYTEA,
    "planilha_filename_02" VARCHAR(255),
    "id_unidade" DECIMAL(4,0) NOT NULL,
    "eleg_car_tiff_blob" BYTEA,
    "eleg_car_tiff_filename" VARCHAR(255),
    "eleg_his_tiff_blob" BYTEA,
    "eleg_his_tiff_filename" VARCHAR(255),
    "eleg_zon_tiff_blob" BYTEA,
    "eleg_zon_tiff_filename" VARCHAR(255),
    "responsavel" VARCHAR(255),
    "fase_ea_dist_rodov" DECIMAL(18,1),
    "fase_ea_dist_dutov" DECIMAL(18,1),
    "fase_ea_dist_ferrov" DECIMAL(18,1),
    "fase_eh_dist_rodov" DECIMAL(18,1),
    "fase_eh_dist_dutov" DECIMAL(18,1),
    "fase_eh_dist_ferrov" DECIMAL(18,1),
    "anexo_01_blob" BYTEA,
    "anexo_01_filename" VARCHAR(255),
    "anexo_02_blob" BYTEA,
    "anexo_02_filename" VARCHAR(255),
    "anexo_03_blob" BYTEA,
    "anexo_03_filename" VARCHAR(255),
    "anexo_04_blob" BYTEA,
    "anexo_04_filename" VARCHAR(255),
    "anexo_05_blob" BYTEA,
    "anexo_05_filename" VARCHAR(255),
    "anexo_06_blob" BYTEA,
    "anexo_06_filename" VARCHAR(255),
    "anexo_07_blob" BYTEA,
    "anexo_07_filename" VARCHAR(255),
    "anexo_08_blob" BYTEA,
    "anexo_08_filename" VARCHAR(255),
    "anexo_09_blob" BYTEA,
    "anexo_09_filename" VARCHAR(255),
    "anexo_10_blob" BYTEA,
    "anexo_10_filename" VARCHAR(255),
    "anexo_11_blob" BYTEA,
    "anexo_11_filename" VARCHAR(255),
    "anexo_12_blob" BYTEA,
    "anexo_12_filename" VARCHAR(255),
    "anexo_13_blob" BYTEA,
    "anexo_13_filename" VARCHAR(255),
    "anexo_14_blob" BYTEA,
    "anexo_14_filename" VARCHAR(255),
    "anexo_15_blob" BYTEA,
    "anexo_15_filename" VARCHAR(255),
    "anexo_16_blob" BYTEA,
    "anexo_16_filename" VARCHAR(255),
    "anexo_17_blob" BYTEA,
    "anexo_17_filename" VARCHAR(255),
    "anexo_18_blob" BYTEA,
    "anexo_18_filename" VARCHAR(255),
    "anexo_19_blob" BYTEA,
    "anexo_19_filename" VARCHAR(255),
    "anexo_20_blob" BYTEA,
    "anexo_20_filename" VARCHAR(255),
    "anexo_21_blob" BYTEA,
    "anexo_21_filename" VARCHAR(255),
    "anexo_22_blob" BYTEA,
    "anexo_22_filename" VARCHAR(255),
    "anexo_23_blob" BYTEA,
    "anexo_23_filename" VARCHAR(255),
    "anexo_24_blob" BYTEA,
    "anexo_24_filename" VARCHAR(255),
    "anexo_25_blob" BYTEA,
    "anexo_25_filename" VARCHAR(255),
    "anexo_26_blob" BYTEA,
    "anexo_26_filename" VARCHAR(255),
    "anexo_27_blob" BYTEA,
    "anexo_27_filename" VARCHAR(255),
    "anexo_28_blob" BYTEA,
    "anexo_28_filename" VARCHAR(255),
    "anexo_29_blob" BYTEA,
    "anexo_29_filename" VARCHAR(255),
    "anexo_30_blob" BYTEA,
    "anexo_30_filename" VARCHAR(255),
    "anexo_31_blob" BYTEA,
    "anexo_31_filename" VARCHAR(255),
    "anexo_32_blob" BYTEA,
    "anexo_32_filename" VARCHAR(255),
    "anexo_33_blob" BYTEA,
    "anexo_33_filename" VARCHAR(255),
    "anexo_34_blob" BYTEA,
    "anexo_34_filename" VARCHAR(255),
    "anexo_35_blob" BYTEA,
    "anexo_35_filename" VARCHAR(255),
    "anexo_36_blob" BYTEA,
    "anexo_36_filename" VARCHAR(255),
    "anexo_37_blob" BYTEA,
    "anexo_37_filename" VARCHAR(255),
    "anexo_38_blob" BYTEA,
    "anexo_38_filename" VARCHAR(255),
    "anexo_39_blob" BYTEA,
    "anexo_39_filename" VARCHAR(255),
    "anexo_40_blob" BYTEA,
    "anexo_40_filename" VARCHAR(255),
    "anexo_41_blob" BYTEA,
    "anexo_41_filename" VARCHAR(255),
    "anexo_42_blob" BYTEA,
    "anexo_42_filename" VARCHAR(255),
    "anexo_43_blob" BYTEA,
    "anexo_43_filename" VARCHAR(255),
    "anexo_44_blob" BYTEA,
    "anexo_44_filename" VARCHAR(255),
    "anexo_45_blob" BYTEA,
    "anexo_45_filename" VARCHAR(255),
    "anexo_46_blob" BYTEA,
    "anexo_46_filename" VARCHAR(255),
    "anexo_47_blob" BYTEA,
    "anexo_47_filename" VARCHAR(255),
    "anexo_48_blob" BYTEA,
    "anexo_48_filename" VARCHAR(255),
    "anexo_49_blob" BYTEA,
    "anexo_49_filename" VARCHAR(255),
    "anexo_50_blob" BYTEA,
    "anexo_50_filename" VARCHAR(255),
    "anexo_51_blob" BYTEA,
    "anexo_51_filename" VARCHAR(255),
    "ano_prim_compara" VARCHAR(15),
    "ano_segu_compara" VARCHAR(15),
    "vol_eleg_prim_compara" DECIMAL(5,2),
    "vol_eleg_segu_compara" DECIMAL(5,2),
    "vol_eleg_comparado" DECIMAL(5,2),
    "eta_anidro_prim_comp" DECIMAL(5,2),
    "eta_anidro_segu_comp" DECIMAL(5,2),
    "eta_anidro_comparado" DECIMAL(5,2),
    "eta_hidrat_prim_comp" DECIMAL(5,2),
    "eta_hidrat_segu_comp" DECIMAL(5,2),
    "eta_hidrat_comparado" DECIMAL(5,2),
    "eta_hidrat_prim_simu" DECIMAL(11,1),
    "eta_anidro_prim_simu" DECIMAL(11,1),
    "eta_hidrat_segu_simu" DECIMAL(11,1),
    "eta_anidro_segu_simu" DECIMAL(11,1),
    "cbios_prim_simu" DECIMAL(10,0),
    "cbios_segu_simu" DECIMAL(10,0),
    "cbios_resultado_simu" DECIMAL(10,0),
    "litros_prim_simu" DECIMAL(10,0),
    "litros_segu_simu" DECIMAL(10,0),
    "valor_prim_simu" DECIMAL(14,2),
    "valor_segu_simu" DECIMAL(14,2),
    "valor_resultado_simu" DECIMAL(14,2),
    "valor_cbio_prim_simu" DECIMAL(5,2),
    "valor_cbio_segu_simu" DECIMAL(5,2),
    "valor_cambio_prim_simu" DECIMAL(5,2),
    "valor_cambio_segu_simu" DECIMAL(5,2),
    "planilha_blob_03" BYTEA,
    "planilha_filename_03" VARCHAR(255),
    "planilha_blob_04" BYTEA,
    "planilha_filename_04" VARCHAR(255),
    "planilha_blob_05" BYTEA,
    "planilha_filename_05" VARCHAR(255),
    "planilha_blob_06" BYTEA,
    "planilha_filename_06" VARCHAR(255),
    "planilha_memorial_blob" BYTEA,
    "planilha_memorial_filename" VARCHAR(255),
    "painel_valor_certificacao" DECIMAL(8,2),
    "painel_valor_avaliacao" DECIMAL(8,2),
    "eleg_car_mapa1_blob" BYTEA,
    "eleg_car_mapa1_filename" VARCHAR(255),
    "eleg_car_mapa2_blob" BYTEA,
    "eleg_car_mapa2_filename" VARCHAR(255),
    "eleg_his_mapa1_blob" BYTEA,
    "eleg_his_mapa1_filename" VARCHAR(255),
    "eleg_his_mapa2_blob" BYTEA,
    "eleg_his_mapa2_filename" VARCHAR(255),
    "eleg_car_shape1_blob" BYTEA,
    "eleg_car_shape1_filename" VARCHAR(255),
    "eleg_car_shape2_blob" BYTEA,
    "eleg_car_shape2_filename" VARCHAR(255),
    "eleg_his_shape1_blob" BYTEA,
    "eleg_his_shape1_filename" VARCHAR(255),
    "eleg_his_shape2_blob" BYTEA,
    "eleg_his_shape2_filename" VARCHAR(255),

    CONSTRAINT "renovabio_pkey" PRIMARY KEY ("id_renovabio")
);

-- CreateTable
CREATE TABLE "renovabio_det" (
    "id_renovabio_det" DECIMAL(38,0) NOT NULL,
    "id_renovabio" DECIMAL(38,0) NOT NULL,
    "id_gestao_uso_solo" DECIMAL(38,0),
    "eleg_car" DECIMAL(4,0),
    "eleg_car_mapa_blob" BYTEA,
    "eleg_car_mapa_filename" VARCHAR(255),
    "eleg_his" DECIMAL(4,0),
    "eleg_his_mapa_blob" BYTEA,
    "eleg_his_mapa_filename" VARCHAR(255),
    "eleg_zon" DECIMAL(4,0),
    "eleg_zon_mapa_blob" BYTEA,
    "eleg_zon_mapa_filename" VARCHAR(255),
    "area_total_imovel" DECIMAL(18,3),
    "area_agricultavel" DECIMAL(18,3),
    "tipo_dado" DECIMAL(4,0) NOT NULL,
    "ig_tipo_plantio" DECIMAL(4,0) NOT NULL,
    "ig_prod_total_moagem" DECIMAL(18,3),
    "ig_teor_impur_vegetal" DECIMAL(18,3),
    "ig_umid_impur_vegetal" DECIMAL(18,2),
    "ig_teor_impur_mineral" DECIMAL(18,3),
    "ig_palha_colhida" DECIMAL(18,2),
    "area_queimada" DECIMAL(18,3),
    "co_calcario_calcitico" DECIMAL(18,3),
    "co_calcario_dolomitico" DECIMAL(18,3),
    "co_gesso" DECIMAL(18,3),
    "fs_ureia" DECIMAL(18,3),
    "fs_fosfato_monoamonico_nt" DECIMAL(18,3),
    "fs_fosfato_monoamonico_po" DECIMAL(18,3),
    "fs_fosfato_nt" DECIMAL(18,3),
    "fs_fosfato_p2os" DECIMAL(18,3),
    "fs_fosfato_diamonico_nf" DECIMAL(18,3),
    "fs_fosfato_diamonico_p2os" DECIMAL(18,3),
    "fs_nitrato_amonio" DECIMAL(18,3),
    "fs_soluc_nitrato" DECIMAL(18,3),
    "fs_amonia_anidra" DECIMAL(18,3),
    "fs_sulfato_amonio" DECIMAL(18,3),
    "fs_nitrato_amonio_calcop" DECIMAL(18,3),
    "fs_superfosfato_simples" DECIMAL(18,3),
    "fs_superfosfato_triplo" DECIMAL(18,3),
    "fs_cloreto_potassio" DECIMAL(18,3),
    "fs_outros_nt" DECIMAL(18,3),
    "fs_outros_nt_desp" VARCHAR(100),
    "fs_outros_p2os" DECIMAL(18,3),
    "fs_outros_p2os_esp" VARCHAR(100),
    "fs_outros_k2ot" DECIMAL(18,3),
    "fs_outros_k2ot_esp" VARCHAR(100),
    "fo_vinhaca" DECIMAL(18,3),
    "fo_vinhaca_concentr_n" DECIMAL(18,3),
    "fo_torta" DECIMAL(18,3),
    "fo_torta_concentr_n" DECIMAL(18,3),
    "fo_cinza" DECIMAL(18,3),
    "fo_cinza_concentr_n" DECIMAL(18,3),
    "fo_outros_01" DECIMAL(18,3),
    "fo_outros_01_concentr_n" DECIMAL(18,3),
    "fo_outros_01_esp" VARCHAR(100),
    "fo_outros_02" DECIMAL(18,3),
    "fo_outros_02_concentr_n" DECIMAL(18,3),
    "fo_outros_02_esp" VARCHAR(100),
    "ce_diesel_b8" DECIMAL(18,3),
    "ce_diesel_b10" DECIMAL(18,3),
    "ce_diesel_bx" DECIMAL(18,3),
    "ce_teor_biodiesel" DECIMAL(18,3),
    "ce_diesel_b20" DECIMAL(18,3),
    "ce_diesel_b30" DECIMAL(18,3),
    "ce_diesel_b100" DECIMAL(18,3),
    "ce_gasolina_c" DECIMAL(18,3),
    "ce_etanol_hidratado" DECIMAL(18,3),
    "ce_biometano_terceiros" DECIMAL(18,3),
    "ce_biometano_proprio" DECIMAL(18,3),
    "ce_eletricidade_rede" DECIMAL(18,3),
    "ce_eletricidade_pch" DECIMAL(18,3),
    "ce_eletricidade_biomassa" DECIMAL(18,3),
    "ce_eletricidade_eolica" DECIMAL(18,3),
    "ce_eletricidade_solar" DECIMAL(18,3),
    "tem_supressao_veg_nativa_2018" DECIMAL(4,0),
    "status_car" DECIMAL(4,0),
    "qtd_comp_produtor_biocomb" DECIMAL(18,3),
    "cod_agrupado" DECIMAL(38,0),
    "nome_agrupado" VARCHAR(200),
    "cnpj_agrupado" VARCHAR(20),
    "id_renovabio_det_pai_agrup" DECIMAL(34,0),
    "id_cidade" DECIMAL(8,0),
    "municipio" VARCHAR(255),
    "uf" VARCHAR(2),
    "proprietario" VARCHAR(255),
    "area_agricultavel_agrup" DECIMAL(18,3),
    "car" VARCHAR(60),
    "car_blob" BYTEA,
    "car_filename" VARCHAR(255),
    "tipo_parceria" VARCHAR(50),
    "inativo_integracao" DECIMAL(4,0),
    "chave" VARCHAR(25),
    "codigo_fazenda_interno" VARCHAR(25),
    "nro_car" DECIMAL(4,0),
    "codigos_imoveis_agrupados" VARCHAR(1000),
    "documentos_agrupados" VARCHAR(1000),
    "propriedades_agrupadas" VARCHAR(1000),
    "proprietarios_agrupados" VARCHAR(1000),
    "cidades_agrupadas" VARCHAR(1000),
    "ufs_agrupados" VARCHAR(500),
    "ano" DECIMAL(4,0),
    "motivo_inelegibilidade" VARCHAR(100),

    CONSTRAINT "renovabio_det_pkey" PRIMARY KEY ("id_renovabio_det")
);

-- CreateTable
CREATE TABLE "renovabio_det_blob" (
    "id_renovabio_det_blob" DECIMAL(4,0) NOT NULL,
    "id_renovabio_det" DECIMAL(4,0) NOT NULL,
    "ig_prod_total_moagem" BYTEA,
    "ig_prod_total_moagem_file" VARCHAR(255),
    "ig_teor_impur_vegetal" BYTEA,
    "ig_teor_impur_vegetal_file" VARCHAR(255),
    "ig_umid_impur_vegetal" BYTEA,
    "ig_umid_impur_vegetal_file" VARCHAR(255),
    "ig_teor_impur_mineral" BYTEA,
    "ig_teor_impur_mineral_file" VARCHAR(255),
    "ig_palha_colhida" BYTEA,
    "ig_palha_colhida_file" VARCHAR(255),
    "area_queimada" BYTEA,
    "area_queimada_file" VARCHAR(255),
    "co_calcario_calcitico" BYTEA,
    "co_calcario_calcitico_file" VARCHAR(255),
    "co_calcario_dolomitico" BYTEA,
    "co_calcario_dolomitico_file" VARCHAR(255),
    "co_gesso" BYTEA,
    "co_gesso_file" VARCHAR(255),
    "fs_ureia" BYTEA,
    "fs_ureia_file" VARCHAR(255),
    "fs_fosfato_monoamon_nt" BYTEA,
    "fs_fosfato_monoamon_nt_file" VARCHAR(255),
    "fs_fosfato_monoamon_po" BYTEA,
    "fs_fosfato_monoamon_po_file" VARCHAR(255),
    "fs_fosfato_nt" BYTEA,
    "fs_fosfato_nt_file" VARCHAR(255),
    "fs_fosfato_p2os" BYTEA,
    "fs_fosfato_p20s_file" VARCHAR(255),
    "fs_fosfato_diamonico_nf" BYTEA,
    "fs_fosfato_diamonico_nf_file" VARCHAR(255),
    "fs_fosfato_diamonico_p2os" BYTEA,
    "fs_fosfato_diamonico_p2os_file" VARCHAR(255),
    "fs_nitrato_amonio" BYTEA,
    "fs_nitrato_amonio_file" VARCHAR(255),
    "fs_soluc_nitrato" BYTEA,
    "fs_soluc_nitrato_file" VARCHAR(255),
    "fs_amonia_anidra" BYTEA,
    "fs_amonia_anidra_file" VARCHAR(255),
    "fs_sulfato_amonio" BYTEA,
    "fs_sulfato_amonio_file" VARCHAR(255),
    "fs_nitrato_amonio_calcop" BYTEA,
    "fs_nitrato_amonio_calcop_file" VARCHAR(255),
    "fs_superfosfato_simples" BYTEA,
    "fs_superfosfato_simples_file" VARCHAR(255),
    "fs_superfosfato_triplo" BYTEA,
    "fs_superfosfato_triplo_file" VARCHAR(255),
    "fs_cloreto_potassio" BYTEA,
    "fs_cloreto_potassio_file" VARCHAR(255),
    "fs_outros_nt" BYTEA,
    "fs_outros_nt_file" VARCHAR(255),
    "fs_outros_p2os" BYTEA,
    "fs_outros_p2os_file" VARCHAR(255),
    "fs_outros_k2ot" BYTEA,
    "fs_outros_k2ot_file" VARCHAR(255),
    "fo_vinhaca" BYTEA,
    "fo_vinhaca_file" VARCHAR(255),
    "fo_vinhaca_concentr_n" BYTEA,
    "fo_vinhaca_concentr_n_file" VARCHAR(255),
    "fo_torta" BYTEA,
    "fo_torta_file" VARCHAR(255),
    "fo_torta_concentr_n" BYTEA,
    "fo_torta_concentr_n_file" VARCHAR(255),
    "fo_cinza" BYTEA,
    "fo_cinza_file" VARCHAR(255),
    "fo_cinza_concentr_n" BYTEA,
    "fo_cinza_concentr_n_file" VARCHAR(255),
    "fo_outros_01" BYTEA,
    "fo_outros_01_file" VARCHAR(255),
    "fo_outros_01_concentr_n" BYTEA,
    "fo_outros_01_concentr_n_file" VARCHAR(255),
    "fo_outros_02" BYTEA,
    "fo_outros_02_file" VARCHAR(255),
    "fo_outros_02_concentr_n" BYTEA,
    "fo_outros_02_concentr_n_file" VARCHAR(255),
    "ce_diesel_b8" BYTEA,
    "ce_diesel_b8_file" VARCHAR(255),
    "ce_diesel_b10" BYTEA,
    "ce_diesel_b10_file" VARCHAR(255),
    "ce_diesel_bx" BYTEA,
    "ce_diesel_bx_file" VARCHAR(255),
    "ce_teor_biodiesel" BYTEA,
    "ce_teor_biodiesel_file" VARCHAR(255),
    "ce_diesel_b20" BYTEA,
    "ce_diesel_b20_file" VARCHAR(255),
    "ce_diesel_b30" BYTEA,
    "ce_diesel_b30_file" VARCHAR(255),
    "ce_diesel_b100" BYTEA,
    "ce_diesel_b100_file" VARCHAR(255),
    "ce_gasolina_c" BYTEA,
    "ce_gasolina_c_file" VARCHAR(255),
    "ce_etanol_hidratado" BYTEA,
    "ce_etanol_hidratado_file" VARCHAR(255),
    "ce_biometano_terceiros" BYTEA,
    "ce_biometano_terceiros_file" VARCHAR(255),
    "ce_biometano_proprio" BYTEA,
    "ce_biometano_proprio_file" VARCHAR(255),
    "ce_eletricidade_rede" BYTEA,
    "ce_eletricidade_rede_file" VARCHAR(255),
    "ce_eletricidade_pch" BYTEA,
    "ce_eletricidade_pch_file" VARCHAR(255),
    "ce_eletricidade_biomassa" BYTEA,
    "ce_eletricidade_biomassa_file" VARCHAR(255),
    "ce_eletricidade_eolica" BYTEA,
    "ce_eletricidade_eolica_file" VARCHAR(255),
    "ce_eletricidade_solar" BYTEA,
    "ce_eletricidade_solar_file" VARCHAR(255),
    "anexo_linha_blob" BYTEA,
    "anexo_linha_filename" VARCHAR(255),

    CONSTRAINT "renovabio_det_blob_pkey" PRIMARY KEY ("id_renovabio_det_blob")
);

-- CreateTable
CREATE TABLE "renovabio_evidencia" (
    "id_renovabio_evidencia" DECIMAL(8,0) NOT NULL,
    "id_renovabio_evidencia_tipo" DECIMAL(8,0) NOT NULL,
    "id_departamento" DECIMAL(8,0),
    "id_usuario" DECIMAL(8,0),
    "indicador" VARCHAR(255),
    "entradas" VARCHAR(255),
    "verificador" VARCHAR(50),
    "descricao" VARCHAR(1000),
    "producao_total" VARCHAR(20),
    "producao_certificada" VARCHAR(255),
    "arquivo_blob" BYTEA,
    "arquivo_2_blob" BYTEA,
    "arquivo_3_blob" BYTEA,
    "arquivo_4_blob" BYTEA,
    "arquivo_5_blob" BYTEA,
    "editavel" DECIMAL(8,0),
    "celula" VARCHAR(10),
    "status" DECIMAL(8,0),
    "respondido" DECIMAL(8,0),
    "id_unidade" DECIMAL(8,0),
    "arquivo_6_blob" BYTEA,
    "arquivo_7_blob" BYTEA,
    "arquivo_8_blob" BYTEA,
    "arquivo_9_blob" BYTEA,
    "arquivo_10_blob" BYTEA,
    "arquivo_filename" VARCHAR(255),
    "arquivo_2_filename" VARCHAR(255),
    "arquivo_3_filename" VARCHAR(255),
    "arquivo_4_filename" VARCHAR(255),
    "arquivo_5_filename" VARCHAR(255),
    "arquivo_6_filename" VARCHAR(255),
    "arquivo_7_filename" VARCHAR(255),
    "arquivo_8_filename" VARCHAR(255),
    "arquivo_9_filename" VARCHAR(255),
    "arquivo_10_filename" VARCHAR(255),
    "ano" DECIMAL(8,0) NOT NULL,
    "tipo_planilha" DECIMAL(4,0) NOT NULL,

    CONSTRAINT "renovabio_evidencia_pkey" PRIMARY KEY ("id_renovabio_evidencia")
);

-- CreateTable
CREATE TABLE "renovabio_evidencia_blob" (
    "id_renovabio_evidencia_blob" DECIMAL(8,0) NOT NULL,
    "id_renovabio_evidencia" DECIMAL(8,0) NOT NULL,
    "ano" DECIMAL(4,0) NOT NULL,
    "arquivo" VARCHAR(255) NOT NULL,
    "arquivo_blob" BYTEA NOT NULL,

    CONSTRAINT "renovabio_evidencia_blob_pkey" PRIMARY KEY ("id_renovabio_evidencia_blob")
);

-- CreateTable
CREATE TABLE "renovabio_evidencia_tipo" (
    "id_renovabio_evidencia_tipo" DECIMAL(8,0) NOT NULL,
    "descricao" VARCHAR(255) NOT NULL,
    "ordem" DECIMAL(38,0),
    "classificacao" DECIMAL(38,0),
    "unidade" VARCHAR(40),
    "titulo" DECIMAL(38,0),
    "sequencia" VARCHAR(7),
    "tipo_planilha" DECIMAL(4,0) NOT NULL,
    "evidencias" VARCHAR(1500),

    CONSTRAINT "renovabio_evidencia_tipo_pkey" PRIMARY KEY ("id_renovabio_evidencia_tipo")
);

-- CreateTable
CREATE TABLE "renovabio_for_calculos" (
    "id" DECIMAL(8,0) NOT NULL,
    "id_renovabio" DECIMAL(38,0) NOT NULL,
    "fornecedor" VARCHAR(255),
    "secao" DECIMAL(8,0),
    "area_total" DECIMAL(25,15),
    "area_corte" DECIMAL(25,15),
    "producao_total" DECIMAL(25,15),
    "produtividade" DECIMAL(25,15),
    "kg_co2" DECIMAL(25,15),
    "kg_co2_eq_t_cana" DECIMAL(25,15),
    "ic_agricola_anidro" DECIMAL(25,15),
    "ic_outros_anidro" DECIMAL(25,15),
    "ic_total_anidro" DECIMAL(25,15),
    "ic_agricola_hidrat" DECIMAL(25,15),
    "ic_outros_hidrat" DECIMAL(25,15),
    "ic_total_hidrat" DECIMAL(25,15),
    "vlr_neaa_anidro" DECIMAL(25,15),
    "vlr_neaa_hidratado" DECIMAL(25,15),
    "fator_emissao_anidro" DECIMAL(25,15),
    "vlr_fat_emiss_anidro" DECIMAL(25,15),
    "fator_emissao_hidrat" DECIMAL(25,15),
    "vlr_fat_emiss_hidrat" DECIMAL(25,15),
    "ton_cana_safra_ineleg" DECIMAL(25,15),
    "ton_cana_safra_eleg" DECIMAL(25,15),
    "vlr_atr_kg_tc" DECIMAL(25,15),
    "kg_total" DECIMAL(25,15),
    "kg_anidro" DECIMAL(25,15),
    "kg_hidratado" DECIMAL(25,15),
    "metro_cubico_anidro" DECIMAL(25,15),
    "metro_cubico_hidrat" DECIMAL(25,15),
    "cbios_anidro" DECIMAL(25,15),
    "cbios_hidrat" DECIMAL(25,15),
    "cbios_total" DECIMAL(25,15),
    "categ_participacao" DECIMAL(4,0),
    "vlr_cbios_fornecedor" DECIMAL(25,15),
    "color" VARCHAR(255),
    "documento" VARCHAR(20),
    "codigos_fazendas" VARCHAR(500),
    "motivo_inelegibilidade" VARCHAR(255),

    CONSTRAINT "renovabio_for_calculos_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "renovabio_for_cbio_fornecedor" (
    "id" DECIMAL(8,0) NOT NULL,
    "id_renovabio" DECIMAL(38,0) NOT NULL,
    "descricao" VARCHAR(100),
    "percentual" DECIMAL(25,15),
    "valor" DECIMAL(25,15),
    "posicao" DECIMAL(4,0),
    "editavel" DECIMAL(4,0),
    "formatacao_percentual" VARCHAR(20),
    "formatacao_valor" VARCHAR(20),
    "color_percent" VARCHAR(255),
    "color_valor" VARCHAR(255),

    CONSTRAINT "renovabio_for_cbio_fornecedor_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "renovabio_for_descontos" (
    "id" DECIMAL(8,0) NOT NULL,
    "id_renovabio" DECIMAL(38,0) NOT NULL,
    "descricao" VARCHAR(100),
    "perc_desconto" DECIMAL(12,4),
    "posicao" DECIMAL(4,0),

    CONSTRAINT "renovabio_for_descontos_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "renovabio_for_intens_carbono" (
    "id" DECIMAL(8,0) NOT NULL,
    "id_renovabio" DECIMAL(38,0) NOT NULL,
    "produto" VARCHAR(100),
    "vlr_anidro" DECIMAL(25,15),
    "vlr_industrial" DECIMAL(25,15),
    "valor" DECIMAL(25,15),
    "posicao" DECIMAL(4,0),
    "editavel" DECIMAL(4,0),
    "formatacao" VARCHAR(20),
    "color" VARCHAR(255),

    CONSTRAINT "renovabio_for_intens_carbono_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "renovabio_for_mix_producao" (
    "id" DECIMAL(8,0) NOT NULL,
    "id_renovabio" DECIMAL(38,0) NOT NULL,
    "descricao" VARCHAR(100),
    "vlr_anidro" DECIMAL(25,15),
    "vlr_hidratado" DECIMAL(25,15),
    "posicao" DECIMAL(4,0),
    "formatacao" VARCHAR(20),
    "color" VARCHAR(255),

    CONSTRAINT "renovabio_for_mix_producao_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "renovabio_for_neea" (
    "id" DECIMAL(8,0) NOT NULL,
    "id_renovabio" DECIMAL(38,0) NOT NULL,
    "produto" VARCHAR(100),
    "vlr_anidro" DECIMAL(25,15),
    "vlr_hidratado" DECIMAL(25,15),
    "valor" DECIMAL(25,15),
    "posicao" DECIMAL(4,0),
    "editavel" DECIMAL(4,0),
    "formatacao" VARCHAR(20),
    "color" VARCHAR(255),

    CONSTRAINT "renovabio_for_neea_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "renovabio_for_producao_energ" (
    "id" DECIMAL(8,0) NOT NULL,
    "id_renovabio" DECIMAL(38,0) NOT NULL,
    "produto" VARCHAR(100) NOT NULL,
    "rendimento" DECIMAL(25,15),
    "massa_especifica" DECIMAL(25,15),
    "pci" DECIMAL(25,15),
    "fator_energetico" DECIMAL(25,15),
    "posicao" DECIMAL(4,0),
    "formatacao" VARCHAR(20),
    "color" VARCHAR(255),
    "unidade_medida" VARCHAR(100),

    CONSTRAINT "renovabio_for_producao_energ_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "renovabio_painel_avaliacao" (
    "id_renovabio_avaliacao" DECIMAL(38,0) NOT NULL,
    "id_renovabio" DECIMAL(38,0) NOT NULL,
    "id_renovabio_usina" DECIMAL(38,0) NOT NULL,
    "area_elegivel" DECIMAL(18,2),
    "nota_hidratado" DECIMAL(18,2),
    "nota_anidro" DECIMAL(18,2),
    "fator_hidratado" DECIMAL(18,9),
    "fator_anidro" DECIMAL(18,9),
    "volume_hidratado" DECIMAL(18,4),
    "volume_anidro" DECIMAL(18,4),
    "cbios_hidratado" DECIMAL(18,4),
    "cbios_anidro" DECIMAL(18,4),
    "cbios_total" DECIMAL(18,4),
    "total" DECIMAL(18,2),
    "ano_base_importacao" DECIMAL(4,0),

    CONSTRAINT "renovabio_painel_avaliacao_pkey" PRIMARY KEY ("id_renovabio_avaliacao")
);

-- CreateTable
CREATE TABLE "renovabio_painel_benc" (
    "id" DECIMAL(8,0) NOT NULL,
    "id_renovabio_painel_benc_tipo" DECIMAL(8,0) NOT NULL,
    "id_renovabio_usina" DECIMAL(8,0) NOT NULL,
    "ativo" DECIMAL(4,0) NOT NULL,
    "valor" DECIMAL(18,4),

    CONSTRAINT "renovabio_painel_benc_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "renovabio_painel_benc_tipo" (
    "id" DECIMAL(8,0) NOT NULL,
    "cor" VARCHAR(30) NOT NULL,
    "fase" DECIMAL(4,0) NOT NULL,
    "nivel" DECIMAL(4,0) NOT NULL,
    "ordem" DECIMAL(4,0) NOT NULL,
    "ativo" DECIMAL(4,0) NOT NULL,
    "descricao" VARCHAR(255) NOT NULL,
    "unidade_medida" VARCHAR(30),
    "nivel_descricao" VARCHAR(255) NOT NULL,

    CONSTRAINT "renovabio_painel_benc_tipo_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "renovabio_painel_benchmarking" (
    "id_renovabio_painel_bench" DECIMAL(8,0) NOT NULL,
    "id_renovabio_usina" DECIMAL(8,0) NOT NULL,
    "ano" DECIMAL(4,0) NOT NULL,
    "ig_area_total" DECIMAL(18,4),
    "ig_prod_total_moagem" DECIMAL(18,3),
    "ig_qtd_comp_produtor_biocomb" DECIMAL(18,3),
    "ig_teor_impur_vegetal" DECIMAL(18,3),
    "ig_umidade_impur_vegetal" DECIMAL(18,4),
    "ig_teor_impur_mineral" DECIMAL(18,3),
    "ig_palha_recolhida" DECIMAL(18,3),
    "area_queimada" DECIMAL(18,3),
    "co_calcario_calcitico" DECIMAL(18,3),
    "co_calcario_dolomitico" DECIMAL(18,3),
    "co_gesso" DECIMAL(18,3),
    "fs_ureia" DECIMAL(18,3),
    "fs_fosfato_monoamonico_nt" DECIMAL(18,3),
    "fs_fosfato_monoamonico_p2os" DECIMAL(18,3),
    "fs_fosfato_diamonico_nt" DECIMAL(18,3),
    "fs_fosfato_diamonico_p2os" DECIMAL(18,3),
    "fs_nitrato_amonio" DECIMAL(18,3),
    "fs_soluc_nitr_amon_ureia" DECIMAL(18,3),
    "fs_amonia_anidra" DECIMAL(18,3),
    "fs_sulft_amonio" DECIMAL(18,3),
    "fs_nitr_amonio_calc" DECIMAL(18,3),
    "fs_super_fosfat_simples" DECIMAL(18,3),
    "fs_super_fostat_trip" DECIMAL(18,3),
    "fs_cloreto_potassio_kci" DECIMAL(18,3),
    "fs_outros_nt" DECIMAL(18,3),
    "fs_outros_p2os" DECIMAL(18,3),
    "fs_outros_k2ot" DECIMAL(18,3),
    "fo_vinhaca" DECIMAL(18,3),
    "fo_vinhaca_concentr_n" DECIMAL(18,3),
    "fo_torta_filtr_base_umid" DECIMAL(18,3),
    "fo_torta_concentr_n" DECIMAL(18,3),
    "fo_cinza_fulig_base_umid" DECIMAL(18,3),
    "fo_cnz_fulig_concentr_n" DECIMAL(18,3),
    "fo_outros_1_kg" DECIMAL(18,3),
    "fo_outros_1_concentr_n" DECIMAL(18,3),
    "fo_outros_2_kg" DECIMAL(18,3),
    "fo_outros_2_concentr_n" DECIMAL(18,3),
    "ce_diesel_b10" DECIMAL(18,3),
    "ce_diesel_b11" DECIMAL(18,3),
    "ce_diesel_b15" DECIMAL(18,3),
    "ce_diesel_bx" DECIMAL(18,3),
    "ce_teor_biodiesel_mistura" DECIMAL(18,4),
    "ce_diesel_b20" DECIMAL(18,3),
    "ce_diesel_b30" DECIMAL(18,3),
    "ce_diesel_b100" DECIMAL(18,3),
    "ce_gasolina_c" DECIMAL(18,3),
    "ce_etanol_hidratado" DECIMAL(18,3),
    "ce_biometano_terceiros" DECIMAL(18,3),
    "ce_biometano_proprio" DECIMAL(18,3),
    "ce_eletricidade_rede" DECIMAL(18,3),
    "ce_eletricidade_pch" DECIMAL(18,3),
    "ce_eletricidade_biomassa" DECIMAL(18,3),
    "ce_eletricidade_eolica" DECIMAL(18,3),
    "ce_eletricidade_solar" DECIMAL(18,3),
    "pr_qtd_cana_processada" DECIMAL(18,3),
    "pr_qtd_palha_processada" DECIMAL(18,3),
    "pr_rend_etanol_anidro" DECIMAL(18,3),
    "pr_rend_etanol_hidratado" DECIMAL(18,3),
    "pr_rend_acucar" DECIMAL(18,3),
    "pr_rend_energ_eletr_comerc" DECIMAL(18,3),
    "pr_rend_bag_comerc_base_umida" DECIMAL(18,3),
    "pr_umidade" DECIMAL(18,4),
    "bag_propr_qtd_base_umida" DECIMAL(18,3),
    "bag_propr_umidade" DECIMAL(18,4),
    "palha_propr_qtd_base_umida" DECIMAL(18,3),
    "palha_propr_umidade" DECIMAL(18,4),
    "bag_terc_qtd_base_umida" DECIMAL(18,3),
    "bag_terc_umidade" DECIMAL(18,4),
    "bag_terc_dist_transp" DECIMAL(18,3),
    "palha_terc_qtd_base_umida" DECIMAL(18,3),
    "palha_terc_umidade" DECIMAL(18,4),
    "palha_terc_dist_transp" DECIMAL(18,3),
    "cavac_madei_qtd_base_umida" DECIMAL(18,3),
    "cavac_madei_umidade" DECIMAL(18,4),
    "cavac_madei_dist_transp" DECIMAL(18,3),
    "lenha_qtd_base_umida" DECIMAL(18,3),
    "lenha_umidade" DECIMAL(18,4),
    "lenha_dist_transp" DECIMAL(18,3),
    "res_florest_qtd_base_umida" DECIMAL(18,3),
    "res_florest_umidade" DECIMAL(18,4),
    "res_florest_dist_transp" DECIMAL(18,3),
    "ec_oleo_combustivel" DECIMAL(18,3),
    "ec_etanol_hidratado_proprio" DECIMAL(18,3),
    "ec_etanol_anidro_proprio" DECIMAL(18,3),
    "ec_biogas_proprio" DECIMAL(18,3),
    "ec_pci_biogas_proprio" DECIMAL(18,3),
    "ec_biogas_terceiros" DECIMAL(18,3),
    "ec_pci_biogas_terceiros" DECIMAL(18,3),
    "ec_eletr_rede_mix_medio" DECIMAL(18,3),
    "ec_eletricidade_pch" DECIMAL(18,3),
    "ec_eletricidade_biomassa" DECIMAL(18,3),
    "ec_eletricidade_eolica" DECIMAL(18,3),
    "ec_eletricidade_solar" DECIMAL(18,3),
    "db_diesel_b10" DECIMAL(18,3),
    "db_diesel_b11" DECIMAL(18,3),
    "db_diesel_b15" DECIMAL(18,3),
    "db_diesel_bx" DECIMAL(18,3),
    "db_teor_biodiesel_mistura" DECIMAL(18,4),
    "db_diesel_b20" DECIMAL(18,3),
    "db_diesel_b30" DECIMAL(18,3),
    "db_diesel_b100" DECIMAL(18,3),
    "fase_dist_rodovia_anidro" DECIMAL(18,9),
    "fase_dist_dutovia_anidro" DECIMAL(18,9),
    "fase_dist_ferrovia_anidro" DECIMAL(18,9),
    "fase_dist_rodovia_hidratado" DECIMAL(18,9),
    "fase_dist_dutovia_hidratado" DECIMAL(18,9),
    "fase_dist_ferrovia_hidratado" DECIMAL(18,9),
    "ce_diesel_b8" DECIMAL(18,9),
    "db_diesel_b8" DECIMAL(18,9),

    CONSTRAINT "renovabio_painel_benchmarking_pkey" PRIMARY KEY ("id_renovabio_painel_bench")
);

-- CreateTable
CREATE TABLE "renovabio_painel_certificacao" (
    "id_renovabio_certificacao" DECIMAL(38,0) NOT NULL,
    "id_renovabio" DECIMAL(38,0) NOT NULL,
    "id_renovabio_usina" DECIMAL(38,0) NOT NULL,
    "area_elegivel" DECIMAL(18,2),
    "nota_hidratado" DECIMAL(18,2),
    "nota_anidro" DECIMAL(18,2),
    "fator_hidratado" DECIMAL(18,9),
    "fator_anidro" DECIMAL(18,9),
    "volume_hidratado" DECIMAL(18,4),
    "volume_anidro" DECIMAL(18,4),
    "cbios_hidratado" DECIMAL(18,4),
    "cbios_anidro" DECIMAL(18,4),
    "cbios_total" DECIMAL(18,4),
    "total" DECIMAL(18,2),
    "ano_base_importacao" DECIMAL(4,0),

    CONSTRAINT "renovabio_painel_certificacao_pkey" PRIMARY KEY ("id_renovabio_certificacao")
);

-- CreateTable
CREATE TABLE "renovabio_painel_status_report" (
    "id_renovabio_status_report" DECIMAL(38,0) NOT NULL,
    "id_renovabio" DECIMAL(38,0) NOT NULL,
    "id_renovabio_usina" DECIMAL(38,0) NOT NULL,
    "et01" DECIMAL(8,2),
    "et02" DECIMAL(8,2),
    "et03" DECIMAL(8,2),
    "et04" DECIMAL(8,2),
    "status_geral" DECIMAL(8,2),
    "ano_base_importacao" DECIMAL(4,0),

    CONSTRAINT "renovabio_painel_status_report_pkey" PRIMARY KEY ("id_renovabio_status_report")
);

-- CreateTable
CREATE TABLE "renovabio_painel_usina" (
    "id_renovabio_usina" DECIMAL(38,0) NOT NULL,
    "id_usina" DECIMAL(4,0) NOT NULL,
    "descricao" VARCHAR(100) NOT NULL,
    "logo" BYTEA,
    "ordem" DECIMAL(4,0) NOT NULL,

    CONSTRAINT "renovabio_painel_usina_pkey" PRIMARY KEY ("id_renovabio_usina")
);

-- CreateTable
CREATE TABLE "renovabio_producao" (
    "id_renovabio_producao" DECIMAL(38,0) NOT NULL,
    "id_renovabio" DECIMAL(38,0) NOT NULL,
    "mes" DECIMAL(4,0) NOT NULL,
    "producao" DECIMAL(18,4),
    "expedicao" DECIMAL(18,4),
    "estoque" DECIMAL(18,4),
    "anexo_01_blob" BYTEA,
    "anexo_01_filename" VARCHAR(255),
    "anexo_02_blob" BYTEA,
    "anexo_02_filename" VARCHAR(255),
    "anexo_03_blob" BYTEA,
    "anexo_03_filename" VARCHAR(255),
    "anexo_04_blob" BYTEA,
    "anexo_04_filename" VARCHAR(255),
    "tipo" DECIMAL(4,0) NOT NULL,

    CONSTRAINT "renovabio_producao_pkey" PRIMARY KEY ("id_renovabio_producao")
);

-- CreateTable
CREATE TABLE "renovabio_resultado" (
    "id_renovabio_resultado" DECIMAL(38,0) NOT NULL,
    "id_renovabio" DECIMAL(38,0) NOT NULL,
    "numero" VARCHAR(20) NOT NULL,
    "descricao" VARCHAR(255) NOT NULL,
    "anexo_01_blob" BYTEA,
    "anexo_01_filename" VARCHAR(255),
    "anexo_02_blob" BYTEA,
    "anexo_02_filename" VARCHAR(255),
    "anexo_03_blob" BYTEA,
    "anexo_03_filename" VARCHAR(255),
    "anexo_04_blob" BYTEA,
    "anexo_04_filename" VARCHAR(255),

    CONSTRAINT "renovabio_resultado_pkey" PRIMARY KEY ("id_renovabio_resultado")
);

-- CreateTable
CREATE TABLE "unidade" (
    "id_unidade" DECIMAL(8,0) NOT NULL,
    "razao" VARCHAR(255) NOT NULL,
    "fantasia" VARCHAR(255) NOT NULL,
    "documento" VARCHAR(20) NOT NULL,
    "ativo" DECIMAL(38,0) NOT NULL,
    "logo" BYTEA,
    "id_usina" DECIMAL(8,0),
    "ordem" DECIMAL(8,0) NOT NULL,
    "meta" DECIMAL(18,4),
    "usa_cati" DECIMAL(4,0),
    "uf_cadri" VARCHAR(2),
    "integrado_app" DECIMAL(4,0) NOT NULL,
    "municipio" VARCHAR(50),
    "url_painel_analitcs" VARCHAR(255),
    "url_painel_analitcs_corp" VARCHAR(255),

    CONSTRAINT "unidade_pkey" PRIMARY KEY ("id_unidade")
);

-- CreateTable
CREATE TABLE "usina" (
    "id_usina" DECIMAL(8,0) NOT NULL,
    "razao" VARCHAR(255) NOT NULL,
    "documento" VARCHAR(20) NOT NULL,
    "logo" BYTEA,
    "modelo_imp_renovabio_for" BYTEA,

    CONSTRAINT "usina_pkey" PRIMARY KEY ("id_usina")
);

-- CreateTable
CREATE TABLE "usuario" (
    "id_usuario" DECIMAL(38,0) NOT NULL,
    "nome" VARCHAR(255) NOT NULL,
    "email" VARCHAR(255),
    "ativo" DECIMAL(38,0) NOT NULL,
    "senha" VARCHAR(32) NOT NULL,
    "login" VARCHAR(20) NOT NULL,
    "id_usina" DECIMAL(38,0),
    "id_grupo" DECIMAL(38,0) NOT NULL,
    "id_departamento" DECIMAL(4,0) NOT NULL,
    "email_tmp" VARCHAR(255),
    "alterar_senha_login" DECIMAL(4,0),
    "expiracao" TIMESTAMP(6),
    "integrado_app" DECIMAL(4,0) NOT NULL,

    CONSTRAINT "usuario_pkey" PRIMARY KEY ("id_usuario")
);

-- CreateTable
CREATE TABLE "usuario_externo" (
    "id_usuario_externo" DECIMAL(8,0) NOT NULL,
    "nome" VARCHAR(255) NOT NULL,
    "email" VARCHAR(255) NOT NULL,
    "ativo" DECIMAL(8,0) NOT NULL,
    "senha" VARCHAR(32) NOT NULL,
    "login" VARCHAR(20) NOT NULL,
    "data_limite" TIMESTAMP(6),

    CONSTRAINT "usuario_externo_pkey" PRIMARY KEY ("id_usuario_externo")
);

-- AddForeignKey
ALTER TABLE "departamento" ADD CONSTRAINT "departamento_id_departamento_pai_fkey" FOREIGN KEY ("id_departamento_pai") REFERENCES "departamento"("id_departamento") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "gestao_uso_solo" ADD CONSTRAINT "gestao_uso_solo_id_unidade_fkey" FOREIGN KEY ("id_unidade") REFERENCES "unidade"("id_unidade") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "grupo" ADD CONSTRAINT "grupo_id_usina_fkey" FOREIGN KEY ("id_usina") REFERENCES "usina"("id_usina") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "renovabio" ADD CONSTRAINT "renovabio_id_unidade_fkey" FOREIGN KEY ("id_unidade") REFERENCES "unidade"("id_unidade") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "renovabio_det" ADD CONSTRAINT "renovabio_det_id_gestao_uso_solo_fkey" FOREIGN KEY ("id_gestao_uso_solo") REFERENCES "gestao_uso_solo"("id_gestao_uso_solo") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "renovabio_det" ADD CONSTRAINT "renovabio_det_id_renovabio_det_pai_agrup_fkey" FOREIGN KEY ("id_renovabio_det_pai_agrup") REFERENCES "renovabio_det"("id_renovabio_det") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "renovabio_det" ADD CONSTRAINT "renovabio_det_id_renovabio_fkey" FOREIGN KEY ("id_renovabio") REFERENCES "renovabio"("id_renovabio") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "renovabio_det_blob" ADD CONSTRAINT "renovabio_det_blob_id_renovabio_det_fkey" FOREIGN KEY ("id_renovabio_det") REFERENCES "renovabio_det"("id_renovabio_det") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "renovabio_evidencia" ADD CONSTRAINT "renovabio_evidencia_id_renovabio_evidencia_tipo_fkey" FOREIGN KEY ("id_renovabio_evidencia_tipo") REFERENCES "renovabio_evidencia_tipo"("id_renovabio_evidencia_tipo") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "renovabio_evidencia" ADD CONSTRAINT "renovabio_evidencia_id_unidade_fkey" FOREIGN KEY ("id_unidade") REFERENCES "unidade"("id_unidade") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "renovabio_evidencia_blob" ADD CONSTRAINT "renovabio_evidencia_blob_id_renovabio_evidencia_fkey" FOREIGN KEY ("id_renovabio_evidencia") REFERENCES "renovabio_evidencia"("id_renovabio_evidencia") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "renovabio_for_calculos" ADD CONSTRAINT "renovabio_for_calculos_id_renovabio_fkey" FOREIGN KEY ("id_renovabio") REFERENCES "renovabio"("id_renovabio") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "renovabio_for_cbio_fornecedor" ADD CONSTRAINT "renovabio_for_cbio_fornecedor_id_renovabio_fkey" FOREIGN KEY ("id_renovabio") REFERENCES "renovabio"("id_renovabio") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "renovabio_for_descontos" ADD CONSTRAINT "renovabio_for_descontos_id_renovabio_fkey" FOREIGN KEY ("id_renovabio") REFERENCES "renovabio"("id_renovabio") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "renovabio_for_intens_carbono" ADD CONSTRAINT "renovabio_for_intens_carbono_id_renovabio_fkey" FOREIGN KEY ("id_renovabio") REFERENCES "renovabio"("id_renovabio") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "renovabio_for_mix_producao" ADD CONSTRAINT "renovabio_for_mix_producao_id_renovabio_fkey" FOREIGN KEY ("id_renovabio") REFERENCES "renovabio"("id_renovabio") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "renovabio_for_neea" ADD CONSTRAINT "renovabio_for_neea_id_renovabio_fkey" FOREIGN KEY ("id_renovabio") REFERENCES "renovabio"("id_renovabio") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "renovabio_for_producao_energ" ADD CONSTRAINT "renovabio_for_producao_energ_id_renovabio_fkey" FOREIGN KEY ("id_renovabio") REFERENCES "renovabio"("id_renovabio") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "renovabio_painel_avaliacao" ADD CONSTRAINT "renovabio_painel_avaliacao_id_renovabio_fkey" FOREIGN KEY ("id_renovabio") REFERENCES "renovabio"("id_renovabio") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "renovabio_painel_avaliacao" ADD CONSTRAINT "renovabio_painel_avaliacao_id_renovabio_usina_fkey" FOREIGN KEY ("id_renovabio_usina") REFERENCES "renovabio_painel_usina"("id_renovabio_usina") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "renovabio_painel_benc" ADD CONSTRAINT "renovabio_painel_benc_id_renovabio_painel_benc_tipo_fkey" FOREIGN KEY ("id_renovabio_painel_benc_tipo") REFERENCES "renovabio_painel_benc_tipo"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "renovabio_painel_benc" ADD CONSTRAINT "renovabio_painel_benc_id_renovabio_usina_fkey" FOREIGN KEY ("id_renovabio_usina") REFERENCES "renovabio_painel_usina"("id_renovabio_usina") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "renovabio_painel_benchmarking" ADD CONSTRAINT "renovabio_painel_benchmarking_id_renovabio_usina_fkey" FOREIGN KEY ("id_renovabio_usina") REFERENCES "renovabio_painel_usina"("id_renovabio_usina") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "renovabio_painel_certificacao" ADD CONSTRAINT "renovabio_painel_certificacao_id_renovabio_fkey" FOREIGN KEY ("id_renovabio") REFERENCES "renovabio"("id_renovabio") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "renovabio_painel_certificacao" ADD CONSTRAINT "renovabio_painel_certificacao_id_renovabio_usina_fkey" FOREIGN KEY ("id_renovabio_usina") REFERENCES "renovabio_painel_usina"("id_renovabio_usina") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "renovabio_painel_status_report" ADD CONSTRAINT "renovabio_painel_status_report_id_renovabio_fkey" FOREIGN KEY ("id_renovabio") REFERENCES "renovabio"("id_renovabio") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "renovabio_painel_status_report" ADD CONSTRAINT "renovabio_painel_status_report_id_renovabio_usina_fkey" FOREIGN KEY ("id_renovabio_usina") REFERENCES "renovabio_painel_usina"("id_renovabio_usina") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "renovabio_painel_usina" ADD CONSTRAINT "renovabio_painel_usina_id_usina_fkey" FOREIGN KEY ("id_usina") REFERENCES "usina"("id_usina") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "renovabio_producao" ADD CONSTRAINT "renovabio_producao_id_renovabio_fkey" FOREIGN KEY ("id_renovabio") REFERENCES "renovabio"("id_renovabio") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "renovabio_resultado" ADD CONSTRAINT "renovabio_resultado_id_renovabio_fkey" FOREIGN KEY ("id_renovabio") REFERENCES "renovabio"("id_renovabio") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "unidade" ADD CONSTRAINT "unidade_id_usina_fkey" FOREIGN KEY ("id_usina") REFERENCES "usina"("id_usina") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "usuario" ADD CONSTRAINT "usuario_id_departamento_fkey" FOREIGN KEY ("id_departamento") REFERENCES "departamento"("id_departamento") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "usuario" ADD CONSTRAINT "usuario_id_grupo_fkey" FOREIGN KEY ("id_grupo") REFERENCES "grupo"("id_grupo") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "usuario" ADD CONSTRAINT "usuario_id_usina_fkey" FOREIGN KEY ("id_usina") REFERENCES "usina"("id_usina") ON DELETE NO ACTION ON UPDATE NO ACTION;
