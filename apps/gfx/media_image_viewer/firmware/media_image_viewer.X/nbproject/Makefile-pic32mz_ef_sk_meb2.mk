#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-pic32mz_ef_sk_meb2.mk)" "nbproject/Makefile-local-pic32mz_ef_sk_meb2.mk"
include nbproject/Makefile-local-pic32mz_ef_sk_meb2.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=pic32mz_ef_sk_meb2
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/media_image_viewer.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/media_image_viewer.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/system_config/pic32mz_ef_sk_meb2/bsp/bsp.c ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/gfx/controller/lcc/drv_gfx_lcc_generic.c ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/spi/dynamic/drv_spi_tasks.c ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/spi/dynamic/drv_spi_api.c ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/spi/dynamic/drv_spi_master_dma_tasks.c ../src/system_config/pic32mz_ef_sk_meb2/framework/system/clk/src/sys_clk_static.c ../src/system_config/pic32mz_ef_sk_meb2/framework/system/ports/src/sys_ports_static.c ../src/system_config/pic32mz_ef_sk_meb2/gfx_resources_int.S ../src/system_config/pic32mz_ef_sk_meb2/gfx_resources_int_reference.c ../src/system_config/pic32mz_ef_sk_meb2/system_init.c ../src/system_config/pic32mz_ef_sk_meb2/system_interrupt.c ../src/system_config/pic32mz_ef_sk_meb2/system_exceptions.c ../src/system_config/pic32mz_ef_sk_meb2/system_tasks.c ../src/system_config/pic32mz_ef_sk_meb2/gfx_hgc_definitions.c ../src/app.c ../src/main.c ../../../../../framework/decoder/bmp/BmpDecoder.c ../../../../../framework/decoder/gif/GifDecoder.c ../../../../../framework/decoder/jpeg/JpegDecoder.c ../../../../../framework/driver/i2c/src/dynamic/drv_i2c_bb_a.c ../../../../../framework/driver/i2c/src/dynamic/drv_i2c_bb.c ../../../../../framework/driver/sdcard/src/dynamic/drv_sdcard.c ../../../../../framework/driver/spi/src/dynamic/drv_spi.c ../../../../../framework/driver/spi/src/drv_spi_sys_queue_fifo.c ../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c ../../../../../framework/driver/touch/mtch6301/src/drv_mtch6301.c ../../../../../framework/gfx/src/gfx.c ../../../../../framework/gfx/src/gfx_primitive.c ../../../../../framework/gfx/src/gfx_gol.c ../../../../../framework/gfx/src/gfx_gol_scheme_default.c ../../../../../framework/gfx/src/gfx_gol_button.c ../../../../../framework/gfx/src/gfx_gol_picture.c ../../../../../framework/gfx/src/gfx_gol_radio_button.c ../../../../../framework/gfx/src/gfx_gol_scroll_bar.c ../../../../../framework/gfx/src/gfx_gol_static_text.c ../../../../../framework/gfx/src/jpeg_image.c ../../../../../framework/gfx/src/bmp_image.c ../../../../../framework/gfx/src/gif_image.c ../../../../../framework/gfx/src/gfx_image_decoder.c ../../../../../framework/system/devcon/src/sys_devcon.c ../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c ../../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S ../../../../../framework/system/dma/src/sys_dma.c ../../../../../framework/system/fs/src/dynamic/sys_fs.c ../../../../../framework/system/fs/src/dynamic/sys_fs_media_manager.c ../../../../../framework/system/fs/fat_fs/src/file_system/ff.c ../../../../../framework/system/fs/fat_fs/src/hardware_access/diskio.c ../../../../../framework/system/int/src/sys_int_pic32.c ../../../../../framework/system/msg/src/sys_msg.c ../../../../../framework/system/tmr/src/sys_tmr.c ../../../../../framework/system/touch/src/sys_touch.c ../../../../../third_party/decoder/jidctint/src/jidctint.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1465531745/bsp.o ${OBJECTDIR}/_ext/1733015097/drv_gfx_lcc_generic.o ${OBJECTDIR}/_ext/427743676/drv_spi_tasks.o ${OBJECTDIR}/_ext/427743676/drv_spi_api.o ${OBJECTDIR}/_ext/427743676/drv_spi_master_ebm_tasks.o ${OBJECTDIR}/_ext/427743676/drv_spi_master_dma_tasks.o ${OBJECTDIR}/_ext/1847413222/sys_clk_static.o ${OBJECTDIR}/_ext/50030870/sys_ports_static.o ${OBJECTDIR}/_ext/1951523377/gfx_resources_int.o ${OBJECTDIR}/_ext/1951523377/gfx_resources_int_reference.o ${OBJECTDIR}/_ext/1951523377/system_init.o ${OBJECTDIR}/_ext/1951523377/system_interrupt.o ${OBJECTDIR}/_ext/1951523377/system_exceptions.o ${OBJECTDIR}/_ext/1951523377/system_tasks.o ${OBJECTDIR}/_ext/1951523377/gfx_hgc_definitions.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/517639462/BmpDecoder.o ${OBJECTDIR}/_ext/517634791/GifDecoder.o ${OBJECTDIR}/_ext/1133286835/JpegDecoder.o ${OBJECTDIR}/_ext/475095144/drv_i2c_bb_a.o ${OBJECTDIR}/_ext/475095144/drv_i2c_bb.o ${OBJECTDIR}/_ext/1789358541/drv_sdcard.o ${OBJECTDIR}/_ext/1324760662/drv_spi.o ${OBJECTDIR}/_ext/1385053818/drv_spi_sys_queue_fifo.o ${OBJECTDIR}/_ext/941160041/drv_tmr.o ${OBJECTDIR}/_ext/1085947350/drv_mtch6301.o ${OBJECTDIR}/_ext/1127269358/gfx.o ${OBJECTDIR}/_ext/1127269358/gfx_primitive.o ${OBJECTDIR}/_ext/1127269358/gfx_gol.o ${OBJECTDIR}/_ext/1127269358/gfx_gol_scheme_default.o ${OBJECTDIR}/_ext/1127269358/gfx_gol_button.o ${OBJECTDIR}/_ext/1127269358/gfx_gol_picture.o ${OBJECTDIR}/_ext/1127269358/gfx_gol_radio_button.o ${OBJECTDIR}/_ext/1127269358/gfx_gol_scroll_bar.o ${OBJECTDIR}/_ext/1127269358/gfx_gol_static_text.o ${OBJECTDIR}/_ext/1127269358/jpeg_image.o ${OBJECTDIR}/_ext/1127269358/bmp_image.o ${OBJECTDIR}/_ext/1127269358/gif_image.o ${OBJECTDIR}/_ext/1127269358/gfx_image_decoder.o ${OBJECTDIR}/_ext/482662494/sys_devcon.o ${OBJECTDIR}/_ext/482662494/sys_devcon_pic32mz.o ${OBJECTDIR}/_ext/482662494/sys_devcon_cache_pic32mz.o ${OBJECTDIR}/_ext/853959373/sys_dma.o ${OBJECTDIR}/_ext/1750042194/sys_fs.o ${OBJECTDIR}/_ext/1750042194/sys_fs_media_manager.o ${OBJECTDIR}/_ext/1964723635/ff.o ${OBJECTDIR}/_ext/732200470/diskio.o ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o ${OBJECTDIR}/_ext/428873942/sys_msg.o ${OBJECTDIR}/_ext/2110151058/sys_tmr.o ${OBJECTDIR}/_ext/1595825772/sys_touch.o ${OBJECTDIR}/_ext/426253641/jidctint.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1465531745/bsp.o.d ${OBJECTDIR}/_ext/1733015097/drv_gfx_lcc_generic.o.d ${OBJECTDIR}/_ext/427743676/drv_spi_tasks.o.d ${OBJECTDIR}/_ext/427743676/drv_spi_api.o.d ${OBJECTDIR}/_ext/427743676/drv_spi_master_ebm_tasks.o.d ${OBJECTDIR}/_ext/427743676/drv_spi_master_dma_tasks.o.d ${OBJECTDIR}/_ext/1847413222/sys_clk_static.o.d ${OBJECTDIR}/_ext/50030870/sys_ports_static.o.d ${OBJECTDIR}/_ext/1951523377/gfx_resources_int.o.d ${OBJECTDIR}/_ext/1951523377/gfx_resources_int_reference.o.d ${OBJECTDIR}/_ext/1951523377/system_init.o.d ${OBJECTDIR}/_ext/1951523377/system_interrupt.o.d ${OBJECTDIR}/_ext/1951523377/system_exceptions.o.d ${OBJECTDIR}/_ext/1951523377/system_tasks.o.d ${OBJECTDIR}/_ext/1951523377/gfx_hgc_definitions.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/517639462/BmpDecoder.o.d ${OBJECTDIR}/_ext/517634791/GifDecoder.o.d ${OBJECTDIR}/_ext/1133286835/JpegDecoder.o.d ${OBJECTDIR}/_ext/475095144/drv_i2c_bb_a.o.d ${OBJECTDIR}/_ext/475095144/drv_i2c_bb.o.d ${OBJECTDIR}/_ext/1789358541/drv_sdcard.o.d ${OBJECTDIR}/_ext/1324760662/drv_spi.o.d ${OBJECTDIR}/_ext/1385053818/drv_spi_sys_queue_fifo.o.d ${OBJECTDIR}/_ext/941160041/drv_tmr.o.d ${OBJECTDIR}/_ext/1085947350/drv_mtch6301.o.d ${OBJECTDIR}/_ext/1127269358/gfx.o.d ${OBJECTDIR}/_ext/1127269358/gfx_primitive.o.d ${OBJECTDIR}/_ext/1127269358/gfx_gol.o.d ${OBJECTDIR}/_ext/1127269358/gfx_gol_scheme_default.o.d ${OBJECTDIR}/_ext/1127269358/gfx_gol_button.o.d ${OBJECTDIR}/_ext/1127269358/gfx_gol_picture.o.d ${OBJECTDIR}/_ext/1127269358/gfx_gol_radio_button.o.d ${OBJECTDIR}/_ext/1127269358/gfx_gol_scroll_bar.o.d ${OBJECTDIR}/_ext/1127269358/gfx_gol_static_text.o.d ${OBJECTDIR}/_ext/1127269358/jpeg_image.o.d ${OBJECTDIR}/_ext/1127269358/bmp_image.o.d ${OBJECTDIR}/_ext/1127269358/gif_image.o.d ${OBJECTDIR}/_ext/1127269358/gfx_image_decoder.o.d ${OBJECTDIR}/_ext/482662494/sys_devcon.o.d ${OBJECTDIR}/_ext/482662494/sys_devcon_pic32mz.o.d ${OBJECTDIR}/_ext/482662494/sys_devcon_cache_pic32mz.o.d ${OBJECTDIR}/_ext/853959373/sys_dma.o.d ${OBJECTDIR}/_ext/1750042194/sys_fs.o.d ${OBJECTDIR}/_ext/1750042194/sys_fs_media_manager.o.d ${OBJECTDIR}/_ext/1964723635/ff.o.d ${OBJECTDIR}/_ext/732200470/diskio.o.d ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o.d ${OBJECTDIR}/_ext/428873942/sys_msg.o.d ${OBJECTDIR}/_ext/2110151058/sys_tmr.o.d ${OBJECTDIR}/_ext/1595825772/sys_touch.o.d ${OBJECTDIR}/_ext/426253641/jidctint.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1465531745/bsp.o ${OBJECTDIR}/_ext/1733015097/drv_gfx_lcc_generic.o ${OBJECTDIR}/_ext/427743676/drv_spi_tasks.o ${OBJECTDIR}/_ext/427743676/drv_spi_api.o ${OBJECTDIR}/_ext/427743676/drv_spi_master_ebm_tasks.o ${OBJECTDIR}/_ext/427743676/drv_spi_master_dma_tasks.o ${OBJECTDIR}/_ext/1847413222/sys_clk_static.o ${OBJECTDIR}/_ext/50030870/sys_ports_static.o ${OBJECTDIR}/_ext/1951523377/gfx_resources_int.o ${OBJECTDIR}/_ext/1951523377/gfx_resources_int_reference.o ${OBJECTDIR}/_ext/1951523377/system_init.o ${OBJECTDIR}/_ext/1951523377/system_interrupt.o ${OBJECTDIR}/_ext/1951523377/system_exceptions.o ${OBJECTDIR}/_ext/1951523377/system_tasks.o ${OBJECTDIR}/_ext/1951523377/gfx_hgc_definitions.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/517639462/BmpDecoder.o ${OBJECTDIR}/_ext/517634791/GifDecoder.o ${OBJECTDIR}/_ext/1133286835/JpegDecoder.o ${OBJECTDIR}/_ext/475095144/drv_i2c_bb_a.o ${OBJECTDIR}/_ext/475095144/drv_i2c_bb.o ${OBJECTDIR}/_ext/1789358541/drv_sdcard.o ${OBJECTDIR}/_ext/1324760662/drv_spi.o ${OBJECTDIR}/_ext/1385053818/drv_spi_sys_queue_fifo.o ${OBJECTDIR}/_ext/941160041/drv_tmr.o ${OBJECTDIR}/_ext/1085947350/drv_mtch6301.o ${OBJECTDIR}/_ext/1127269358/gfx.o ${OBJECTDIR}/_ext/1127269358/gfx_primitive.o ${OBJECTDIR}/_ext/1127269358/gfx_gol.o ${OBJECTDIR}/_ext/1127269358/gfx_gol_scheme_default.o ${OBJECTDIR}/_ext/1127269358/gfx_gol_button.o ${OBJECTDIR}/_ext/1127269358/gfx_gol_picture.o ${OBJECTDIR}/_ext/1127269358/gfx_gol_radio_button.o ${OBJECTDIR}/_ext/1127269358/gfx_gol_scroll_bar.o ${OBJECTDIR}/_ext/1127269358/gfx_gol_static_text.o ${OBJECTDIR}/_ext/1127269358/jpeg_image.o ${OBJECTDIR}/_ext/1127269358/bmp_image.o ${OBJECTDIR}/_ext/1127269358/gif_image.o ${OBJECTDIR}/_ext/1127269358/gfx_image_decoder.o ${OBJECTDIR}/_ext/482662494/sys_devcon.o ${OBJECTDIR}/_ext/482662494/sys_devcon_pic32mz.o ${OBJECTDIR}/_ext/482662494/sys_devcon_cache_pic32mz.o ${OBJECTDIR}/_ext/853959373/sys_dma.o ${OBJECTDIR}/_ext/1750042194/sys_fs.o ${OBJECTDIR}/_ext/1750042194/sys_fs_media_manager.o ${OBJECTDIR}/_ext/1964723635/ff.o ${OBJECTDIR}/_ext/732200470/diskio.o ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o ${OBJECTDIR}/_ext/428873942/sys_msg.o ${OBJECTDIR}/_ext/2110151058/sys_tmr.o ${OBJECTDIR}/_ext/1595825772/sys_touch.o ${OBJECTDIR}/_ext/426253641/jidctint.o

# Source Files
SOURCEFILES=../src/system_config/pic32mz_ef_sk_meb2/bsp/bsp.c ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/gfx/controller/lcc/drv_gfx_lcc_generic.c ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/spi/dynamic/drv_spi_tasks.c ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/spi/dynamic/drv_spi_api.c ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/spi/dynamic/drv_spi_master_dma_tasks.c ../src/system_config/pic32mz_ef_sk_meb2/framework/system/clk/src/sys_clk_static.c ../src/system_config/pic32mz_ef_sk_meb2/framework/system/ports/src/sys_ports_static.c ../src/system_config/pic32mz_ef_sk_meb2/gfx_resources_int.S ../src/system_config/pic32mz_ef_sk_meb2/gfx_resources_int_reference.c ../src/system_config/pic32mz_ef_sk_meb2/system_init.c ../src/system_config/pic32mz_ef_sk_meb2/system_interrupt.c ../src/system_config/pic32mz_ef_sk_meb2/system_exceptions.c ../src/system_config/pic32mz_ef_sk_meb2/system_tasks.c ../src/system_config/pic32mz_ef_sk_meb2/gfx_hgc_definitions.c ../src/app.c ../src/main.c ../../../../../framework/decoder/bmp/BmpDecoder.c ../../../../../framework/decoder/gif/GifDecoder.c ../../../../../framework/decoder/jpeg/JpegDecoder.c ../../../../../framework/driver/i2c/src/dynamic/drv_i2c_bb_a.c ../../../../../framework/driver/i2c/src/dynamic/drv_i2c_bb.c ../../../../../framework/driver/sdcard/src/dynamic/drv_sdcard.c ../../../../../framework/driver/spi/src/dynamic/drv_spi.c ../../../../../framework/driver/spi/src/drv_spi_sys_queue_fifo.c ../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c ../../../../../framework/driver/touch/mtch6301/src/drv_mtch6301.c ../../../../../framework/gfx/src/gfx.c ../../../../../framework/gfx/src/gfx_primitive.c ../../../../../framework/gfx/src/gfx_gol.c ../../../../../framework/gfx/src/gfx_gol_scheme_default.c ../../../../../framework/gfx/src/gfx_gol_button.c ../../../../../framework/gfx/src/gfx_gol_picture.c ../../../../../framework/gfx/src/gfx_gol_radio_button.c ../../../../../framework/gfx/src/gfx_gol_scroll_bar.c ../../../../../framework/gfx/src/gfx_gol_static_text.c ../../../../../framework/gfx/src/jpeg_image.c ../../../../../framework/gfx/src/bmp_image.c ../../../../../framework/gfx/src/gif_image.c ../../../../../framework/gfx/src/gfx_image_decoder.c ../../../../../framework/system/devcon/src/sys_devcon.c ../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c ../../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S ../../../../../framework/system/dma/src/sys_dma.c ../../../../../framework/system/fs/src/dynamic/sys_fs.c ../../../../../framework/system/fs/src/dynamic/sys_fs_media_manager.c ../../../../../framework/system/fs/fat_fs/src/file_system/ff.c ../../../../../framework/system/fs/fat_fs/src/hardware_access/diskio.c ../../../../../framework/system/int/src/sys_int_pic32.c ../../../../../framework/system/msg/src/sys_msg.c ../../../../../framework/system/tmr/src/sys_tmr.c ../../../../../framework/system/touch/src/sys_touch.c ../../../../../third_party/decoder/jidctint/src/jidctint.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-pic32mz_ef_sk_meb2.mk dist/${CND_CONF}/${IMAGE_TYPE}/media_image_viewer.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ2048EFM144
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1951523377/gfx_resources_int.o: ../src/system_config/pic32mz_ef_sk_meb2/gfx_resources_int.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1951523377" 
	@${RM} ${OBJECTDIR}/_ext/1951523377/gfx_resources_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1951523377/gfx_resources_int.o 
	@${RM} ${OBJECTDIR}/_ext/1951523377/gfx_resources_int.o.ok ${OBJECTDIR}/_ext/1951523377/gfx_resources_int.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1951523377/gfx_resources_int.o.d" "${OBJECTDIR}/_ext/1951523377/gfx_resources_int.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1951523377/gfx_resources_int.o.d"  -o ${OBJECTDIR}/_ext/1951523377/gfx_resources_int.o ../src/system_config/pic32mz_ef_sk_meb2/gfx_resources_int.S  -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1951523377/gfx_resources_int.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1
	
${OBJECTDIR}/_ext/482662494/sys_devcon_cache_pic32mz.o: ../../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/482662494" 
	@${RM} ${OBJECTDIR}/_ext/482662494/sys_devcon_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/482662494/sys_devcon_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/482662494/sys_devcon_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/482662494/sys_devcon_cache_pic32mz.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/482662494/sys_devcon_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/482662494/sys_devcon_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/482662494/sys_devcon_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/482662494/sys_devcon_cache_pic32mz.o ../../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S  -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/482662494/sys_devcon_cache_pic32mz.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1
	
else
${OBJECTDIR}/_ext/1951523377/gfx_resources_int.o: ../src/system_config/pic32mz_ef_sk_meb2/gfx_resources_int.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1951523377" 
	@${RM} ${OBJECTDIR}/_ext/1951523377/gfx_resources_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1951523377/gfx_resources_int.o 
	@${RM} ${OBJECTDIR}/_ext/1951523377/gfx_resources_int.o.ok ${OBJECTDIR}/_ext/1951523377/gfx_resources_int.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1951523377/gfx_resources_int.o.d" "${OBJECTDIR}/_ext/1951523377/gfx_resources_int.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1951523377/gfx_resources_int.o.d"  -o ${OBJECTDIR}/_ext/1951523377/gfx_resources_int.o ../src/system_config/pic32mz_ef_sk_meb2/gfx_resources_int.S  -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1951523377/gfx_resources_int.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/_ext/482662494/sys_devcon_cache_pic32mz.o: ../../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/482662494" 
	@${RM} ${OBJECTDIR}/_ext/482662494/sys_devcon_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/482662494/sys_devcon_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/482662494/sys_devcon_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/482662494/sys_devcon_cache_pic32mz.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/482662494/sys_devcon_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/482662494/sys_devcon_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/482662494/sys_devcon_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/482662494/sys_devcon_cache_pic32mz.o ../../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S  -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/482662494/sys_devcon_cache_pic32mz.o.asm.d",--gdwarf-2
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1465531745/bsp.o: ../src/system_config/pic32mz_ef_sk_meb2/bsp/bsp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1465531745" 
	@${RM} ${OBJECTDIR}/_ext/1465531745/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1465531745/bsp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1465531745/bsp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1465531745/bsp.o.d" -o ${OBJECTDIR}/_ext/1465531745/bsp.o ../src/system_config/pic32mz_ef_sk_meb2/bsp/bsp.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1733015097/drv_gfx_lcc_generic.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/gfx/controller/lcc/drv_gfx_lcc_generic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1733015097" 
	@${RM} ${OBJECTDIR}/_ext/1733015097/drv_gfx_lcc_generic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1733015097/drv_gfx_lcc_generic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1733015097/drv_gfx_lcc_generic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1733015097/drv_gfx_lcc_generic.o.d" -o ${OBJECTDIR}/_ext/1733015097/drv_gfx_lcc_generic.o ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/gfx/controller/lcc/drv_gfx_lcc_generic.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/427743676/drv_spi_tasks.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/spi/dynamic/drv_spi_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/427743676" 
	@${RM} ${OBJECTDIR}/_ext/427743676/drv_spi_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/427743676/drv_spi_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/427743676/drv_spi_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/427743676/drv_spi_tasks.o.d" -o ${OBJECTDIR}/_ext/427743676/drv_spi_tasks.o ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/spi/dynamic/drv_spi_tasks.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/427743676/drv_spi_api.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/spi/dynamic/drv_spi_api.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/427743676" 
	@${RM} ${OBJECTDIR}/_ext/427743676/drv_spi_api.o.d 
	@${RM} ${OBJECTDIR}/_ext/427743676/drv_spi_api.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/427743676/drv_spi_api.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/427743676/drv_spi_api.o.d" -o ${OBJECTDIR}/_ext/427743676/drv_spi_api.o ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/spi/dynamic/drv_spi_api.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/427743676/drv_spi_master_ebm_tasks.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/427743676" 
	@${RM} ${OBJECTDIR}/_ext/427743676/drv_spi_master_ebm_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/427743676/drv_spi_master_ebm_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/427743676/drv_spi_master_ebm_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/427743676/drv_spi_master_ebm_tasks.o.d" -o ${OBJECTDIR}/_ext/427743676/drv_spi_master_ebm_tasks.o ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/427743676/drv_spi_master_dma_tasks.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/spi/dynamic/drv_spi_master_dma_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/427743676" 
	@${RM} ${OBJECTDIR}/_ext/427743676/drv_spi_master_dma_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/427743676/drv_spi_master_dma_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/427743676/drv_spi_master_dma_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/427743676/drv_spi_master_dma_tasks.o.d" -o ${OBJECTDIR}/_ext/427743676/drv_spi_master_dma_tasks.o ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/spi/dynamic/drv_spi_master_dma_tasks.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847413222/sys_clk_static.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/system/clk/src/sys_clk_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847413222" 
	@${RM} ${OBJECTDIR}/_ext/1847413222/sys_clk_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847413222/sys_clk_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847413222/sys_clk_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847413222/sys_clk_static.o.d" -o ${OBJECTDIR}/_ext/1847413222/sys_clk_static.o ../src/system_config/pic32mz_ef_sk_meb2/framework/system/clk/src/sys_clk_static.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/50030870/sys_ports_static.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/system/ports/src/sys_ports_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/50030870" 
	@${RM} ${OBJECTDIR}/_ext/50030870/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/50030870/sys_ports_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/50030870/sys_ports_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/50030870/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/50030870/sys_ports_static.o ../src/system_config/pic32mz_ef_sk_meb2/framework/system/ports/src/sys_ports_static.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1951523377/gfx_resources_int_reference.o: ../src/system_config/pic32mz_ef_sk_meb2/gfx_resources_int_reference.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1951523377" 
	@${RM} ${OBJECTDIR}/_ext/1951523377/gfx_resources_int_reference.o.d 
	@${RM} ${OBJECTDIR}/_ext/1951523377/gfx_resources_int_reference.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1951523377/gfx_resources_int_reference.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1951523377/gfx_resources_int_reference.o.d" -o ${OBJECTDIR}/_ext/1951523377/gfx_resources_int_reference.o ../src/system_config/pic32mz_ef_sk_meb2/gfx_resources_int_reference.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1951523377/system_init.o: ../src/system_config/pic32mz_ef_sk_meb2/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1951523377" 
	@${RM} ${OBJECTDIR}/_ext/1951523377/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1951523377/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1951523377/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1951523377/system_init.o.d" -o ${OBJECTDIR}/_ext/1951523377/system_init.o ../src/system_config/pic32mz_ef_sk_meb2/system_init.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1951523377/system_interrupt.o: ../src/system_config/pic32mz_ef_sk_meb2/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1951523377" 
	@${RM} ${OBJECTDIR}/_ext/1951523377/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1951523377/system_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1951523377/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1951523377/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1951523377/system_interrupt.o ../src/system_config/pic32mz_ef_sk_meb2/system_interrupt.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1951523377/system_exceptions.o: ../src/system_config/pic32mz_ef_sk_meb2/system_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1951523377" 
	@${RM} ${OBJECTDIR}/_ext/1951523377/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1951523377/system_exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1951523377/system_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1951523377/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1951523377/system_exceptions.o ../src/system_config/pic32mz_ef_sk_meb2/system_exceptions.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1951523377/system_tasks.o: ../src/system_config/pic32mz_ef_sk_meb2/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1951523377" 
	@${RM} ${OBJECTDIR}/_ext/1951523377/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1951523377/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1951523377/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1951523377/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1951523377/system_tasks.o ../src/system_config/pic32mz_ef_sk_meb2/system_tasks.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1951523377/gfx_hgc_definitions.o: ../src/system_config/pic32mz_ef_sk_meb2/gfx_hgc_definitions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1951523377" 
	@${RM} ${OBJECTDIR}/_ext/1951523377/gfx_hgc_definitions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1951523377/gfx_hgc_definitions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1951523377/gfx_hgc_definitions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1951523377/gfx_hgc_definitions.o.d" -o ${OBJECTDIR}/_ext/1951523377/gfx_hgc_definitions.o ../src/system_config/pic32mz_ef_sk_meb2/gfx_hgc_definitions.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/517639462/BmpDecoder.o: ../../../../../framework/decoder/bmp/BmpDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/517639462" 
	@${RM} ${OBJECTDIR}/_ext/517639462/BmpDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/517639462/BmpDecoder.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/517639462/BmpDecoder.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/517639462/BmpDecoder.o.d" -o ${OBJECTDIR}/_ext/517639462/BmpDecoder.o ../../../../../framework/decoder/bmp/BmpDecoder.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/517634791/GifDecoder.o: ../../../../../framework/decoder/gif/GifDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/517634791" 
	@${RM} ${OBJECTDIR}/_ext/517634791/GifDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/517634791/GifDecoder.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/517634791/GifDecoder.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/517634791/GifDecoder.o.d" -o ${OBJECTDIR}/_ext/517634791/GifDecoder.o ../../../../../framework/decoder/gif/GifDecoder.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1133286835/JpegDecoder.o: ../../../../../framework/decoder/jpeg/JpegDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1133286835" 
	@${RM} ${OBJECTDIR}/_ext/1133286835/JpegDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1133286835/JpegDecoder.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1133286835/JpegDecoder.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1133286835/JpegDecoder.o.d" -o ${OBJECTDIR}/_ext/1133286835/JpegDecoder.o ../../../../../framework/decoder/jpeg/JpegDecoder.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/475095144/drv_i2c_bb_a.o: ../../../../../framework/driver/i2c/src/dynamic/drv_i2c_bb_a.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/475095144" 
	@${RM} ${OBJECTDIR}/_ext/475095144/drv_i2c_bb_a.o.d 
	@${RM} ${OBJECTDIR}/_ext/475095144/drv_i2c_bb_a.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/475095144/drv_i2c_bb_a.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/475095144/drv_i2c_bb_a.o.d" -o ${OBJECTDIR}/_ext/475095144/drv_i2c_bb_a.o ../../../../../framework/driver/i2c/src/dynamic/drv_i2c_bb_a.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/475095144/drv_i2c_bb.o: ../../../../../framework/driver/i2c/src/dynamic/drv_i2c_bb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/475095144" 
	@${RM} ${OBJECTDIR}/_ext/475095144/drv_i2c_bb.o.d 
	@${RM} ${OBJECTDIR}/_ext/475095144/drv_i2c_bb.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/475095144/drv_i2c_bb.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/475095144/drv_i2c_bb.o.d" -o ${OBJECTDIR}/_ext/475095144/drv_i2c_bb.o ../../../../../framework/driver/i2c/src/dynamic/drv_i2c_bb.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1789358541/drv_sdcard.o: ../../../../../framework/driver/sdcard/src/dynamic/drv_sdcard.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1789358541" 
	@${RM} ${OBJECTDIR}/_ext/1789358541/drv_sdcard.o.d 
	@${RM} ${OBJECTDIR}/_ext/1789358541/drv_sdcard.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1789358541/drv_sdcard.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1789358541/drv_sdcard.o.d" -o ${OBJECTDIR}/_ext/1789358541/drv_sdcard.o ../../../../../framework/driver/sdcard/src/dynamic/drv_sdcard.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1324760662/drv_spi.o: ../../../../../framework/driver/spi/src/dynamic/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1324760662" 
	@${RM} ${OBJECTDIR}/_ext/1324760662/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1324760662/drv_spi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1324760662/drv_spi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1324760662/drv_spi.o.d" -o ${OBJECTDIR}/_ext/1324760662/drv_spi.o ../../../../../framework/driver/spi/src/dynamic/drv_spi.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1385053818/drv_spi_sys_queue_fifo.o: ../../../../../framework/driver/spi/src/drv_spi_sys_queue_fifo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1385053818" 
	@${RM} ${OBJECTDIR}/_ext/1385053818/drv_spi_sys_queue_fifo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1385053818/drv_spi_sys_queue_fifo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1385053818/drv_spi_sys_queue_fifo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1385053818/drv_spi_sys_queue_fifo.o.d" -o ${OBJECTDIR}/_ext/1385053818/drv_spi_sys_queue_fifo.o ../../../../../framework/driver/spi/src/drv_spi_sys_queue_fifo.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/941160041/drv_tmr.o: ../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/941160041" 
	@${RM} ${OBJECTDIR}/_ext/941160041/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/941160041/drv_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/941160041/drv_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/941160041/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/941160041/drv_tmr.o ../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1085947350/drv_mtch6301.o: ../../../../../framework/driver/touch/mtch6301/src/drv_mtch6301.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1085947350" 
	@${RM} ${OBJECTDIR}/_ext/1085947350/drv_mtch6301.o.d 
	@${RM} ${OBJECTDIR}/_ext/1085947350/drv_mtch6301.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1085947350/drv_mtch6301.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1085947350/drv_mtch6301.o.d" -o ${OBJECTDIR}/_ext/1085947350/drv_mtch6301.o ../../../../../framework/driver/touch/mtch6301/src/drv_mtch6301.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1127269358/gfx.o: ../../../../../framework/gfx/src/gfx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1127269358" 
	@${RM} ${OBJECTDIR}/_ext/1127269358/gfx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127269358/gfx.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1127269358/gfx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1127269358/gfx.o.d" -o ${OBJECTDIR}/_ext/1127269358/gfx.o ../../../../../framework/gfx/src/gfx.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1127269358/gfx_primitive.o: ../../../../../framework/gfx/src/gfx_primitive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1127269358" 
	@${RM} ${OBJECTDIR}/_ext/1127269358/gfx_primitive.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127269358/gfx_primitive.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1127269358/gfx_primitive.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1127269358/gfx_primitive.o.d" -o ${OBJECTDIR}/_ext/1127269358/gfx_primitive.o ../../../../../framework/gfx/src/gfx_primitive.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1127269358/gfx_gol.o: ../../../../../framework/gfx/src/gfx_gol.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1127269358" 
	@${RM} ${OBJECTDIR}/_ext/1127269358/gfx_gol.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127269358/gfx_gol.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1127269358/gfx_gol.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1127269358/gfx_gol.o.d" -o ${OBJECTDIR}/_ext/1127269358/gfx_gol.o ../../../../../framework/gfx/src/gfx_gol.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1127269358/gfx_gol_scheme_default.o: ../../../../../framework/gfx/src/gfx_gol_scheme_default.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1127269358" 
	@${RM} ${OBJECTDIR}/_ext/1127269358/gfx_gol_scheme_default.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127269358/gfx_gol_scheme_default.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1127269358/gfx_gol_scheme_default.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1127269358/gfx_gol_scheme_default.o.d" -o ${OBJECTDIR}/_ext/1127269358/gfx_gol_scheme_default.o ../../../../../framework/gfx/src/gfx_gol_scheme_default.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1127269358/gfx_gol_button.o: ../../../../../framework/gfx/src/gfx_gol_button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1127269358" 
	@${RM} ${OBJECTDIR}/_ext/1127269358/gfx_gol_button.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127269358/gfx_gol_button.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1127269358/gfx_gol_button.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1127269358/gfx_gol_button.o.d" -o ${OBJECTDIR}/_ext/1127269358/gfx_gol_button.o ../../../../../framework/gfx/src/gfx_gol_button.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1127269358/gfx_gol_picture.o: ../../../../../framework/gfx/src/gfx_gol_picture.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1127269358" 
	@${RM} ${OBJECTDIR}/_ext/1127269358/gfx_gol_picture.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127269358/gfx_gol_picture.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1127269358/gfx_gol_picture.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1127269358/gfx_gol_picture.o.d" -o ${OBJECTDIR}/_ext/1127269358/gfx_gol_picture.o ../../../../../framework/gfx/src/gfx_gol_picture.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1127269358/gfx_gol_radio_button.o: ../../../../../framework/gfx/src/gfx_gol_radio_button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1127269358" 
	@${RM} ${OBJECTDIR}/_ext/1127269358/gfx_gol_radio_button.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127269358/gfx_gol_radio_button.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1127269358/gfx_gol_radio_button.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1127269358/gfx_gol_radio_button.o.d" -o ${OBJECTDIR}/_ext/1127269358/gfx_gol_radio_button.o ../../../../../framework/gfx/src/gfx_gol_radio_button.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1127269358/gfx_gol_scroll_bar.o: ../../../../../framework/gfx/src/gfx_gol_scroll_bar.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1127269358" 
	@${RM} ${OBJECTDIR}/_ext/1127269358/gfx_gol_scroll_bar.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127269358/gfx_gol_scroll_bar.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1127269358/gfx_gol_scroll_bar.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1127269358/gfx_gol_scroll_bar.o.d" -o ${OBJECTDIR}/_ext/1127269358/gfx_gol_scroll_bar.o ../../../../../framework/gfx/src/gfx_gol_scroll_bar.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1127269358/gfx_gol_static_text.o: ../../../../../framework/gfx/src/gfx_gol_static_text.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1127269358" 
	@${RM} ${OBJECTDIR}/_ext/1127269358/gfx_gol_static_text.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127269358/gfx_gol_static_text.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1127269358/gfx_gol_static_text.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1127269358/gfx_gol_static_text.o.d" -o ${OBJECTDIR}/_ext/1127269358/gfx_gol_static_text.o ../../../../../framework/gfx/src/gfx_gol_static_text.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1127269358/jpeg_image.o: ../../../../../framework/gfx/src/jpeg_image.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1127269358" 
	@${RM} ${OBJECTDIR}/_ext/1127269358/jpeg_image.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127269358/jpeg_image.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1127269358/jpeg_image.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1127269358/jpeg_image.o.d" -o ${OBJECTDIR}/_ext/1127269358/jpeg_image.o ../../../../../framework/gfx/src/jpeg_image.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1127269358/bmp_image.o: ../../../../../framework/gfx/src/bmp_image.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1127269358" 
	@${RM} ${OBJECTDIR}/_ext/1127269358/bmp_image.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127269358/bmp_image.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1127269358/bmp_image.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1127269358/bmp_image.o.d" -o ${OBJECTDIR}/_ext/1127269358/bmp_image.o ../../../../../framework/gfx/src/bmp_image.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1127269358/gif_image.o: ../../../../../framework/gfx/src/gif_image.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1127269358" 
	@${RM} ${OBJECTDIR}/_ext/1127269358/gif_image.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127269358/gif_image.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1127269358/gif_image.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1127269358/gif_image.o.d" -o ${OBJECTDIR}/_ext/1127269358/gif_image.o ../../../../../framework/gfx/src/gif_image.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1127269358/gfx_image_decoder.o: ../../../../../framework/gfx/src/gfx_image_decoder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1127269358" 
	@${RM} ${OBJECTDIR}/_ext/1127269358/gfx_image_decoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127269358/gfx_image_decoder.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1127269358/gfx_image_decoder.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1127269358/gfx_image_decoder.o.d" -o ${OBJECTDIR}/_ext/1127269358/gfx_image_decoder.o ../../../../../framework/gfx/src/gfx_image_decoder.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/482662494/sys_devcon.o: ../../../../../framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/482662494" 
	@${RM} ${OBJECTDIR}/_ext/482662494/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/482662494/sys_devcon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/482662494/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/482662494/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/482662494/sys_devcon.o ../../../../../framework/system/devcon/src/sys_devcon.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/482662494/sys_devcon_pic32mz.o: ../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/482662494" 
	@${RM} ${OBJECTDIR}/_ext/482662494/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/482662494/sys_devcon_pic32mz.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/482662494/sys_devcon_pic32mz.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/482662494/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/482662494/sys_devcon_pic32mz.o ../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/853959373/sys_dma.o: ../../../../../framework/system/dma/src/sys_dma.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/853959373" 
	@${RM} ${OBJECTDIR}/_ext/853959373/sys_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/853959373/sys_dma.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/853959373/sys_dma.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/853959373/sys_dma.o.d" -o ${OBJECTDIR}/_ext/853959373/sys_dma.o ../../../../../framework/system/dma/src/sys_dma.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1750042194/sys_fs.o: ../../../../../framework/system/fs/src/dynamic/sys_fs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1750042194" 
	@${RM} ${OBJECTDIR}/_ext/1750042194/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1750042194/sys_fs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1750042194/sys_fs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1750042194/sys_fs.o.d" -o ${OBJECTDIR}/_ext/1750042194/sys_fs.o ../../../../../framework/system/fs/src/dynamic/sys_fs.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1750042194/sys_fs_media_manager.o: ../../../../../framework/system/fs/src/dynamic/sys_fs_media_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1750042194" 
	@${RM} ${OBJECTDIR}/_ext/1750042194/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1750042194/sys_fs_media_manager.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1750042194/sys_fs_media_manager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1750042194/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/1750042194/sys_fs_media_manager.o ../../../../../framework/system/fs/src/dynamic/sys_fs_media_manager.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1964723635/ff.o: ../../../../../framework/system/fs/fat_fs/src/file_system/ff.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1964723635" 
	@${RM} ${OBJECTDIR}/_ext/1964723635/ff.o.d 
	@${RM} ${OBJECTDIR}/_ext/1964723635/ff.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1964723635/ff.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1964723635/ff.o.d" -o ${OBJECTDIR}/_ext/1964723635/ff.o ../../../../../framework/system/fs/fat_fs/src/file_system/ff.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/732200470/diskio.o: ../../../../../framework/system/fs/fat_fs/src/hardware_access/diskio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/732200470" 
	@${RM} ${OBJECTDIR}/_ext/732200470/diskio.o.d 
	@${RM} ${OBJECTDIR}/_ext/732200470/diskio.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/732200470/diskio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/732200470/diskio.o.d" -o ${OBJECTDIR}/_ext/732200470/diskio.o ../../../../../framework/system/fs/fat_fs/src/hardware_access/diskio.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o: ../../../../../framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1042686532" 
	@${RM} ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o ../../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/428873942/sys_msg.o: ../../../../../framework/system/msg/src/sys_msg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/428873942" 
	@${RM} ${OBJECTDIR}/_ext/428873942/sys_msg.o.d 
	@${RM} ${OBJECTDIR}/_ext/428873942/sys_msg.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/428873942/sys_msg.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/428873942/sys_msg.o.d" -o ${OBJECTDIR}/_ext/428873942/sys_msg.o ../../../../../framework/system/msg/src/sys_msg.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2110151058/sys_tmr.o: ../../../../../framework/system/tmr/src/sys_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2110151058" 
	@${RM} ${OBJECTDIR}/_ext/2110151058/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/2110151058/sys_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2110151058/sys_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2110151058/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/2110151058/sys_tmr.o ../../../../../framework/system/tmr/src/sys_tmr.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1595825772/sys_touch.o: ../../../../../framework/system/touch/src/sys_touch.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1595825772" 
	@${RM} ${OBJECTDIR}/_ext/1595825772/sys_touch.o.d 
	@${RM} ${OBJECTDIR}/_ext/1595825772/sys_touch.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1595825772/sys_touch.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1595825772/sys_touch.o.d" -o ${OBJECTDIR}/_ext/1595825772/sys_touch.o ../../../../../framework/system/touch/src/sys_touch.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/426253641/jidctint.o: ../../../../../third_party/decoder/jidctint/src/jidctint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/426253641" 
	@${RM} ${OBJECTDIR}/_ext/426253641/jidctint.o.d 
	@${RM} ${OBJECTDIR}/_ext/426253641/jidctint.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/426253641/jidctint.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/426253641/jidctint.o.d" -o ${OBJECTDIR}/_ext/426253641/jidctint.o ../../../../../third_party/decoder/jidctint/src/jidctint.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/_ext/1465531745/bsp.o: ../src/system_config/pic32mz_ef_sk_meb2/bsp/bsp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1465531745" 
	@${RM} ${OBJECTDIR}/_ext/1465531745/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1465531745/bsp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1465531745/bsp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1465531745/bsp.o.d" -o ${OBJECTDIR}/_ext/1465531745/bsp.o ../src/system_config/pic32mz_ef_sk_meb2/bsp/bsp.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1733015097/drv_gfx_lcc_generic.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/gfx/controller/lcc/drv_gfx_lcc_generic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1733015097" 
	@${RM} ${OBJECTDIR}/_ext/1733015097/drv_gfx_lcc_generic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1733015097/drv_gfx_lcc_generic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1733015097/drv_gfx_lcc_generic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1733015097/drv_gfx_lcc_generic.o.d" -o ${OBJECTDIR}/_ext/1733015097/drv_gfx_lcc_generic.o ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/gfx/controller/lcc/drv_gfx_lcc_generic.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/427743676/drv_spi_tasks.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/spi/dynamic/drv_spi_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/427743676" 
	@${RM} ${OBJECTDIR}/_ext/427743676/drv_spi_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/427743676/drv_spi_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/427743676/drv_spi_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/427743676/drv_spi_tasks.o.d" -o ${OBJECTDIR}/_ext/427743676/drv_spi_tasks.o ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/spi/dynamic/drv_spi_tasks.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/427743676/drv_spi_api.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/spi/dynamic/drv_spi_api.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/427743676" 
	@${RM} ${OBJECTDIR}/_ext/427743676/drv_spi_api.o.d 
	@${RM} ${OBJECTDIR}/_ext/427743676/drv_spi_api.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/427743676/drv_spi_api.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/427743676/drv_spi_api.o.d" -o ${OBJECTDIR}/_ext/427743676/drv_spi_api.o ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/spi/dynamic/drv_spi_api.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/427743676/drv_spi_master_ebm_tasks.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/427743676" 
	@${RM} ${OBJECTDIR}/_ext/427743676/drv_spi_master_ebm_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/427743676/drv_spi_master_ebm_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/427743676/drv_spi_master_ebm_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/427743676/drv_spi_master_ebm_tasks.o.d" -o ${OBJECTDIR}/_ext/427743676/drv_spi_master_ebm_tasks.o ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/427743676/drv_spi_master_dma_tasks.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/spi/dynamic/drv_spi_master_dma_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/427743676" 
	@${RM} ${OBJECTDIR}/_ext/427743676/drv_spi_master_dma_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/427743676/drv_spi_master_dma_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/427743676/drv_spi_master_dma_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/427743676/drv_spi_master_dma_tasks.o.d" -o ${OBJECTDIR}/_ext/427743676/drv_spi_master_dma_tasks.o ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/spi/dynamic/drv_spi_master_dma_tasks.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847413222/sys_clk_static.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/system/clk/src/sys_clk_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847413222" 
	@${RM} ${OBJECTDIR}/_ext/1847413222/sys_clk_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847413222/sys_clk_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847413222/sys_clk_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847413222/sys_clk_static.o.d" -o ${OBJECTDIR}/_ext/1847413222/sys_clk_static.o ../src/system_config/pic32mz_ef_sk_meb2/framework/system/clk/src/sys_clk_static.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/50030870/sys_ports_static.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/system/ports/src/sys_ports_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/50030870" 
	@${RM} ${OBJECTDIR}/_ext/50030870/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/50030870/sys_ports_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/50030870/sys_ports_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/50030870/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/50030870/sys_ports_static.o ../src/system_config/pic32mz_ef_sk_meb2/framework/system/ports/src/sys_ports_static.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1951523377/gfx_resources_int_reference.o: ../src/system_config/pic32mz_ef_sk_meb2/gfx_resources_int_reference.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1951523377" 
	@${RM} ${OBJECTDIR}/_ext/1951523377/gfx_resources_int_reference.o.d 
	@${RM} ${OBJECTDIR}/_ext/1951523377/gfx_resources_int_reference.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1951523377/gfx_resources_int_reference.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1951523377/gfx_resources_int_reference.o.d" -o ${OBJECTDIR}/_ext/1951523377/gfx_resources_int_reference.o ../src/system_config/pic32mz_ef_sk_meb2/gfx_resources_int_reference.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1951523377/system_init.o: ../src/system_config/pic32mz_ef_sk_meb2/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1951523377" 
	@${RM} ${OBJECTDIR}/_ext/1951523377/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1951523377/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1951523377/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1951523377/system_init.o.d" -o ${OBJECTDIR}/_ext/1951523377/system_init.o ../src/system_config/pic32mz_ef_sk_meb2/system_init.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1951523377/system_interrupt.o: ../src/system_config/pic32mz_ef_sk_meb2/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1951523377" 
	@${RM} ${OBJECTDIR}/_ext/1951523377/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1951523377/system_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1951523377/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1951523377/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1951523377/system_interrupt.o ../src/system_config/pic32mz_ef_sk_meb2/system_interrupt.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1951523377/system_exceptions.o: ../src/system_config/pic32mz_ef_sk_meb2/system_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1951523377" 
	@${RM} ${OBJECTDIR}/_ext/1951523377/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1951523377/system_exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1951523377/system_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1951523377/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1951523377/system_exceptions.o ../src/system_config/pic32mz_ef_sk_meb2/system_exceptions.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1951523377/system_tasks.o: ../src/system_config/pic32mz_ef_sk_meb2/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1951523377" 
	@${RM} ${OBJECTDIR}/_ext/1951523377/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1951523377/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1951523377/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1951523377/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1951523377/system_tasks.o ../src/system_config/pic32mz_ef_sk_meb2/system_tasks.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1951523377/gfx_hgc_definitions.o: ../src/system_config/pic32mz_ef_sk_meb2/gfx_hgc_definitions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1951523377" 
	@${RM} ${OBJECTDIR}/_ext/1951523377/gfx_hgc_definitions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1951523377/gfx_hgc_definitions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1951523377/gfx_hgc_definitions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1951523377/gfx_hgc_definitions.o.d" -o ${OBJECTDIR}/_ext/1951523377/gfx_hgc_definitions.o ../src/system_config/pic32mz_ef_sk_meb2/gfx_hgc_definitions.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/517639462/BmpDecoder.o: ../../../../../framework/decoder/bmp/BmpDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/517639462" 
	@${RM} ${OBJECTDIR}/_ext/517639462/BmpDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/517639462/BmpDecoder.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/517639462/BmpDecoder.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/517639462/BmpDecoder.o.d" -o ${OBJECTDIR}/_ext/517639462/BmpDecoder.o ../../../../../framework/decoder/bmp/BmpDecoder.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/517634791/GifDecoder.o: ../../../../../framework/decoder/gif/GifDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/517634791" 
	@${RM} ${OBJECTDIR}/_ext/517634791/GifDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/517634791/GifDecoder.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/517634791/GifDecoder.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/517634791/GifDecoder.o.d" -o ${OBJECTDIR}/_ext/517634791/GifDecoder.o ../../../../../framework/decoder/gif/GifDecoder.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1133286835/JpegDecoder.o: ../../../../../framework/decoder/jpeg/JpegDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1133286835" 
	@${RM} ${OBJECTDIR}/_ext/1133286835/JpegDecoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1133286835/JpegDecoder.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1133286835/JpegDecoder.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1133286835/JpegDecoder.o.d" -o ${OBJECTDIR}/_ext/1133286835/JpegDecoder.o ../../../../../framework/decoder/jpeg/JpegDecoder.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/475095144/drv_i2c_bb_a.o: ../../../../../framework/driver/i2c/src/dynamic/drv_i2c_bb_a.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/475095144" 
	@${RM} ${OBJECTDIR}/_ext/475095144/drv_i2c_bb_a.o.d 
	@${RM} ${OBJECTDIR}/_ext/475095144/drv_i2c_bb_a.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/475095144/drv_i2c_bb_a.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/475095144/drv_i2c_bb_a.o.d" -o ${OBJECTDIR}/_ext/475095144/drv_i2c_bb_a.o ../../../../../framework/driver/i2c/src/dynamic/drv_i2c_bb_a.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/475095144/drv_i2c_bb.o: ../../../../../framework/driver/i2c/src/dynamic/drv_i2c_bb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/475095144" 
	@${RM} ${OBJECTDIR}/_ext/475095144/drv_i2c_bb.o.d 
	@${RM} ${OBJECTDIR}/_ext/475095144/drv_i2c_bb.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/475095144/drv_i2c_bb.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/475095144/drv_i2c_bb.o.d" -o ${OBJECTDIR}/_ext/475095144/drv_i2c_bb.o ../../../../../framework/driver/i2c/src/dynamic/drv_i2c_bb.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1789358541/drv_sdcard.o: ../../../../../framework/driver/sdcard/src/dynamic/drv_sdcard.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1789358541" 
	@${RM} ${OBJECTDIR}/_ext/1789358541/drv_sdcard.o.d 
	@${RM} ${OBJECTDIR}/_ext/1789358541/drv_sdcard.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1789358541/drv_sdcard.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1789358541/drv_sdcard.o.d" -o ${OBJECTDIR}/_ext/1789358541/drv_sdcard.o ../../../../../framework/driver/sdcard/src/dynamic/drv_sdcard.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1324760662/drv_spi.o: ../../../../../framework/driver/spi/src/dynamic/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1324760662" 
	@${RM} ${OBJECTDIR}/_ext/1324760662/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1324760662/drv_spi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1324760662/drv_spi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1324760662/drv_spi.o.d" -o ${OBJECTDIR}/_ext/1324760662/drv_spi.o ../../../../../framework/driver/spi/src/dynamic/drv_spi.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1385053818/drv_spi_sys_queue_fifo.o: ../../../../../framework/driver/spi/src/drv_spi_sys_queue_fifo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1385053818" 
	@${RM} ${OBJECTDIR}/_ext/1385053818/drv_spi_sys_queue_fifo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1385053818/drv_spi_sys_queue_fifo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1385053818/drv_spi_sys_queue_fifo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1385053818/drv_spi_sys_queue_fifo.o.d" -o ${OBJECTDIR}/_ext/1385053818/drv_spi_sys_queue_fifo.o ../../../../../framework/driver/spi/src/drv_spi_sys_queue_fifo.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/941160041/drv_tmr.o: ../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/941160041" 
	@${RM} ${OBJECTDIR}/_ext/941160041/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/941160041/drv_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/941160041/drv_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/941160041/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/941160041/drv_tmr.o ../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1085947350/drv_mtch6301.o: ../../../../../framework/driver/touch/mtch6301/src/drv_mtch6301.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1085947350" 
	@${RM} ${OBJECTDIR}/_ext/1085947350/drv_mtch6301.o.d 
	@${RM} ${OBJECTDIR}/_ext/1085947350/drv_mtch6301.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1085947350/drv_mtch6301.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1085947350/drv_mtch6301.o.d" -o ${OBJECTDIR}/_ext/1085947350/drv_mtch6301.o ../../../../../framework/driver/touch/mtch6301/src/drv_mtch6301.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1127269358/gfx.o: ../../../../../framework/gfx/src/gfx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1127269358" 
	@${RM} ${OBJECTDIR}/_ext/1127269358/gfx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127269358/gfx.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1127269358/gfx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1127269358/gfx.o.d" -o ${OBJECTDIR}/_ext/1127269358/gfx.o ../../../../../framework/gfx/src/gfx.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1127269358/gfx_primitive.o: ../../../../../framework/gfx/src/gfx_primitive.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1127269358" 
	@${RM} ${OBJECTDIR}/_ext/1127269358/gfx_primitive.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127269358/gfx_primitive.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1127269358/gfx_primitive.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1127269358/gfx_primitive.o.d" -o ${OBJECTDIR}/_ext/1127269358/gfx_primitive.o ../../../../../framework/gfx/src/gfx_primitive.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1127269358/gfx_gol.o: ../../../../../framework/gfx/src/gfx_gol.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1127269358" 
	@${RM} ${OBJECTDIR}/_ext/1127269358/gfx_gol.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127269358/gfx_gol.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1127269358/gfx_gol.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1127269358/gfx_gol.o.d" -o ${OBJECTDIR}/_ext/1127269358/gfx_gol.o ../../../../../framework/gfx/src/gfx_gol.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1127269358/gfx_gol_scheme_default.o: ../../../../../framework/gfx/src/gfx_gol_scheme_default.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1127269358" 
	@${RM} ${OBJECTDIR}/_ext/1127269358/gfx_gol_scheme_default.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127269358/gfx_gol_scheme_default.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1127269358/gfx_gol_scheme_default.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1127269358/gfx_gol_scheme_default.o.d" -o ${OBJECTDIR}/_ext/1127269358/gfx_gol_scheme_default.o ../../../../../framework/gfx/src/gfx_gol_scheme_default.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1127269358/gfx_gol_button.o: ../../../../../framework/gfx/src/gfx_gol_button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1127269358" 
	@${RM} ${OBJECTDIR}/_ext/1127269358/gfx_gol_button.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127269358/gfx_gol_button.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1127269358/gfx_gol_button.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1127269358/gfx_gol_button.o.d" -o ${OBJECTDIR}/_ext/1127269358/gfx_gol_button.o ../../../../../framework/gfx/src/gfx_gol_button.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1127269358/gfx_gol_picture.o: ../../../../../framework/gfx/src/gfx_gol_picture.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1127269358" 
	@${RM} ${OBJECTDIR}/_ext/1127269358/gfx_gol_picture.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127269358/gfx_gol_picture.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1127269358/gfx_gol_picture.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1127269358/gfx_gol_picture.o.d" -o ${OBJECTDIR}/_ext/1127269358/gfx_gol_picture.o ../../../../../framework/gfx/src/gfx_gol_picture.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1127269358/gfx_gol_radio_button.o: ../../../../../framework/gfx/src/gfx_gol_radio_button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1127269358" 
	@${RM} ${OBJECTDIR}/_ext/1127269358/gfx_gol_radio_button.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127269358/gfx_gol_radio_button.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1127269358/gfx_gol_radio_button.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1127269358/gfx_gol_radio_button.o.d" -o ${OBJECTDIR}/_ext/1127269358/gfx_gol_radio_button.o ../../../../../framework/gfx/src/gfx_gol_radio_button.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1127269358/gfx_gol_scroll_bar.o: ../../../../../framework/gfx/src/gfx_gol_scroll_bar.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1127269358" 
	@${RM} ${OBJECTDIR}/_ext/1127269358/gfx_gol_scroll_bar.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127269358/gfx_gol_scroll_bar.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1127269358/gfx_gol_scroll_bar.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1127269358/gfx_gol_scroll_bar.o.d" -o ${OBJECTDIR}/_ext/1127269358/gfx_gol_scroll_bar.o ../../../../../framework/gfx/src/gfx_gol_scroll_bar.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1127269358/gfx_gol_static_text.o: ../../../../../framework/gfx/src/gfx_gol_static_text.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1127269358" 
	@${RM} ${OBJECTDIR}/_ext/1127269358/gfx_gol_static_text.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127269358/gfx_gol_static_text.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1127269358/gfx_gol_static_text.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1127269358/gfx_gol_static_text.o.d" -o ${OBJECTDIR}/_ext/1127269358/gfx_gol_static_text.o ../../../../../framework/gfx/src/gfx_gol_static_text.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1127269358/jpeg_image.o: ../../../../../framework/gfx/src/jpeg_image.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1127269358" 
	@${RM} ${OBJECTDIR}/_ext/1127269358/jpeg_image.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127269358/jpeg_image.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1127269358/jpeg_image.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1127269358/jpeg_image.o.d" -o ${OBJECTDIR}/_ext/1127269358/jpeg_image.o ../../../../../framework/gfx/src/jpeg_image.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1127269358/bmp_image.o: ../../../../../framework/gfx/src/bmp_image.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1127269358" 
	@${RM} ${OBJECTDIR}/_ext/1127269358/bmp_image.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127269358/bmp_image.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1127269358/bmp_image.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1127269358/bmp_image.o.d" -o ${OBJECTDIR}/_ext/1127269358/bmp_image.o ../../../../../framework/gfx/src/bmp_image.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1127269358/gif_image.o: ../../../../../framework/gfx/src/gif_image.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1127269358" 
	@${RM} ${OBJECTDIR}/_ext/1127269358/gif_image.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127269358/gif_image.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1127269358/gif_image.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1127269358/gif_image.o.d" -o ${OBJECTDIR}/_ext/1127269358/gif_image.o ../../../../../framework/gfx/src/gif_image.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1127269358/gfx_image_decoder.o: ../../../../../framework/gfx/src/gfx_image_decoder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1127269358" 
	@${RM} ${OBJECTDIR}/_ext/1127269358/gfx_image_decoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127269358/gfx_image_decoder.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1127269358/gfx_image_decoder.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1127269358/gfx_image_decoder.o.d" -o ${OBJECTDIR}/_ext/1127269358/gfx_image_decoder.o ../../../../../framework/gfx/src/gfx_image_decoder.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/482662494/sys_devcon.o: ../../../../../framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/482662494" 
	@${RM} ${OBJECTDIR}/_ext/482662494/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/482662494/sys_devcon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/482662494/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/482662494/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/482662494/sys_devcon.o ../../../../../framework/system/devcon/src/sys_devcon.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/482662494/sys_devcon_pic32mz.o: ../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/482662494" 
	@${RM} ${OBJECTDIR}/_ext/482662494/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/482662494/sys_devcon_pic32mz.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/482662494/sys_devcon_pic32mz.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/482662494/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/482662494/sys_devcon_pic32mz.o ../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/853959373/sys_dma.o: ../../../../../framework/system/dma/src/sys_dma.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/853959373" 
	@${RM} ${OBJECTDIR}/_ext/853959373/sys_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/853959373/sys_dma.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/853959373/sys_dma.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/853959373/sys_dma.o.d" -o ${OBJECTDIR}/_ext/853959373/sys_dma.o ../../../../../framework/system/dma/src/sys_dma.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1750042194/sys_fs.o: ../../../../../framework/system/fs/src/dynamic/sys_fs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1750042194" 
	@${RM} ${OBJECTDIR}/_ext/1750042194/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1750042194/sys_fs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1750042194/sys_fs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1750042194/sys_fs.o.d" -o ${OBJECTDIR}/_ext/1750042194/sys_fs.o ../../../../../framework/system/fs/src/dynamic/sys_fs.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1750042194/sys_fs_media_manager.o: ../../../../../framework/system/fs/src/dynamic/sys_fs_media_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1750042194" 
	@${RM} ${OBJECTDIR}/_ext/1750042194/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1750042194/sys_fs_media_manager.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1750042194/sys_fs_media_manager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1750042194/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/1750042194/sys_fs_media_manager.o ../../../../../framework/system/fs/src/dynamic/sys_fs_media_manager.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1964723635/ff.o: ../../../../../framework/system/fs/fat_fs/src/file_system/ff.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1964723635" 
	@${RM} ${OBJECTDIR}/_ext/1964723635/ff.o.d 
	@${RM} ${OBJECTDIR}/_ext/1964723635/ff.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1964723635/ff.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1964723635/ff.o.d" -o ${OBJECTDIR}/_ext/1964723635/ff.o ../../../../../framework/system/fs/fat_fs/src/file_system/ff.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/732200470/diskio.o: ../../../../../framework/system/fs/fat_fs/src/hardware_access/diskio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/732200470" 
	@${RM} ${OBJECTDIR}/_ext/732200470/diskio.o.d 
	@${RM} ${OBJECTDIR}/_ext/732200470/diskio.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/732200470/diskio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/732200470/diskio.o.d" -o ${OBJECTDIR}/_ext/732200470/diskio.o ../../../../../framework/system/fs/fat_fs/src/hardware_access/diskio.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o: ../../../../../framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1042686532" 
	@${RM} ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o ../../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/428873942/sys_msg.o: ../../../../../framework/system/msg/src/sys_msg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/428873942" 
	@${RM} ${OBJECTDIR}/_ext/428873942/sys_msg.o.d 
	@${RM} ${OBJECTDIR}/_ext/428873942/sys_msg.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/428873942/sys_msg.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/428873942/sys_msg.o.d" -o ${OBJECTDIR}/_ext/428873942/sys_msg.o ../../../../../framework/system/msg/src/sys_msg.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2110151058/sys_tmr.o: ../../../../../framework/system/tmr/src/sys_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2110151058" 
	@${RM} ${OBJECTDIR}/_ext/2110151058/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/2110151058/sys_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2110151058/sys_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2110151058/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/2110151058/sys_tmr.o ../../../../../framework/system/tmr/src/sys_tmr.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1595825772/sys_touch.o: ../../../../../framework/system/touch/src/sys_touch.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1595825772" 
	@${RM} ${OBJECTDIR}/_ext/1595825772/sys_touch.o.d 
	@${RM} ${OBJECTDIR}/_ext/1595825772/sys_touch.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1595825772/sys_touch.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1595825772/sys_touch.o.d" -o ${OBJECTDIR}/_ext/1595825772/sys_touch.o ../../../../../framework/system/touch/src/sys_touch.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/426253641/jidctint.o: ../../../../../third_party/decoder/jidctint/src/jidctint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/426253641" 
	@${RM} ${OBJECTDIR}/_ext/426253641/jidctint.o.d 
	@${RM} ${OBJECTDIR}/_ext/426253641/jidctint.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/426253641/jidctint.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src/pic32mz_ef_sk_meb2" -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/426253641/jidctint.o.d" -o ${OBJECTDIR}/_ext/426253641/jidctint.o ../../../../../third_party/decoder/jidctint/src/jidctint.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/media_image_viewer.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../bin/framework/peripheral/PIC32MZ2048EFM144_peripherals.a  
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_REAL_ICE=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/media_image_viewer.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\bin\framework\peripheral\PIC32MZ2048EFM144_peripherals.a      -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1,--defsym=_min_heap_size=4096,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/media_image_viewer.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../bin/framework/peripheral/PIC32MZ2048EFM144_peripherals.a 
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/media_image_viewer.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\bin\framework\peripheral\PIC32MZ2048EFM144_peripherals.a      -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=4096,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/media_image_viewer.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/pic32mz_ef_sk_meb2
	${RM} -r dist/pic32mz_ef_sk_meb2

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
