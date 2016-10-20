/*****************************************************************************
  AUTO-GENERATED CODE:  Graphics Resource Converter version: 4.00.39 BETA

  Company:
      Microchip Technology, Inc.
 
  File Name:
     gfx_resources_reference.c
 
  Summary:
      This file is generated by the Microchip's Graphics Resource Converter.
  Description:
      This file is generated by the Graphics Resource Converter containing
      resources such as images and fonts that can be used by Microchip's
      Graphics Library, which is part of the MLA.
 *****************************************************************************/

// DOM-IGNORE-BEGIN
/*****************************************************************************
  Software License Agreement

  Copyright(c) 2013 Microchip Technology Inc.  All rights reserved.
  Microchip licenses to you the right to use, modify, copy and distribute
  Software only when embedded on a Microchip microcontroller or digital
  signal controller that is integrated into your product or third party
  product (pursuant to the sublicense terms in the accompanying license
  agreement).
 
  You should refer to the license agreement accompanying this Software
  for additional information regarding your rights and obligations.
 
  SOFTWARE AND DOCUMENTATION ARE PROVIDED �AS IS� WITHOUT WARRANTY OF ANY
  KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY
  OF MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR
  PURPOSE. IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR
  OBLIGATED UNDER CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION,
  BREACH OF WARRANTY, OR OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT
  DAMAGES OR EXPENSES INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL,
  INDIRECT, PUNITIVE OR CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA,
  COST OF PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY
  CLAIMS BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
  OR OTHER SIMILAR COSTS.
 *****************************************************************************/
// DOM-IGNORE-END

/*****************************************************************************
 * SECTION:  Includes
 *****************************************************************************/
#include <gfx/gfx.h>
#include <stdint.h>

/*****************************************************************************
 * SECTION:  Graphics Library Firmware Check
 *****************************************************************************/
#if(GRAPHICS_LIBRARY_VERSION != 0x0400)
#warning "It is suggested to use Graphics Library version 4.00 with this version of GRC."
#endif

/*****************************************************************************
 * SECTION:  Graphics Bitmap Padding Check
 *****************************************************************************/
#ifdef GFX_CONFIG_IMAGE_PADDING_DISABLE
#error These bitmap resources have been converted with padding of the horizontal lines, but GFX_CONFIG_IMAGE_PADDING_DISABLE is defined in system_config.h.
#endif


/*****************************************************************************
 * SECTION:  Graphics Configuration: Bitmap Check
 *****************************************************************************/

#ifdef GFX_CONFIG_IMAGE_FLASH_DISABLE
#error The GFX_CONFIG_IMAGE_FLASH_DISABLE is defined in system_config.h header file.
#endif

/*****************************************************************************
 * SECTION:  Graphics Configuration: Font Check
 *****************************************************************************/

#ifdef GFX_CONFIG_FONT_FLASH_DISABLE
#error The GFX_CONFIG_FONT_FLASH_DISABLE is defined in system_config.h header file.
#endif


/*****************************************************************************
 * SECTION:  BITMAPS
 *****************************************************************************/

/*********************************
 * Bitmap Structure
 * Label: MCHP_LOGO
 * Description:  122x30 pixels, 16-bits per pixel
 ***********************************/
#if defined (GFX_CONFIG_IMAGE_PACKED_ENABLE) && (__XC16_VERSION__ >= 1011)
extern uint8_gfx_image_prog __MCHP_LOGO[] __attribute__((section("grc_images")));
#else
extern uint8_gfx_image_prog __MCHP_LOGO[] __attribute__((section("grc_images"), aligned(2)));
#endif

const GFX_RESOURCE_HDR MCHP_LOGO =
{
    .type = (GFX_RESOURCE_MEMORY_FLASH | GFX_RESOURCE_TYPE_MCHP_MBITMAP | GFX_RESOURCE_COMP_NONE),
    .ID = 0,
    .resource.image.location.progByteAddress = (uint8_gfx_image_prog *) __MCHP_LOGO,
    .resource.image.width = 122,
    .resource.image.height = 30,
    .resource.image.parameter1.compressedSize = 0,
    .resource.image.parameter2.rawSize = 7324,
    .resource.image.colorDepth = 16,
    .resource.image.type = 0x00,
    .resource.image.paletteID = 0x0000
};

/*********************************
 * Bitmap Structure
 * Label: USB_DISCONNECTED
 * Description:  30x30 pixels, 16-bits per pixel
 ***********************************/
#if defined (GFX_CONFIG_IMAGE_PACKED_ENABLE) && (__XC16_VERSION__ >= 1011)
extern uint8_gfx_image_prog __USB_DISCONNECTED[] __attribute__((section("grc_images")));
#else
extern uint8_gfx_image_prog __USB_DISCONNECTED[] __attribute__((section("grc_images"), aligned(2)));
#endif

const GFX_RESOURCE_HDR USB_DISCONNECTED =
{
    .type = (GFX_RESOURCE_MEMORY_FLASH | GFX_RESOURCE_TYPE_MCHP_MBITMAP | GFX_RESOURCE_COMP_NONE),
    .ID = 0,
    .resource.image.location.progByteAddress = (uint8_gfx_image_prog *) __USB_DISCONNECTED,
    .resource.image.width = 30,
    .resource.image.height = 30,
    .resource.image.parameter1.compressedSize = 0,
    .resource.image.parameter2.rawSize = 1804,
    .resource.image.colorDepth = 16,
    .resource.image.type = 0x00,
    .resource.image.paletteID = 0x0000
};

/*********************************
 * Bitmap Structure
 * Label: USB_NOT_CONNECTED
 * Description:  30x30 pixels, 16-bits per pixel
 ***********************************/
#if defined (GFX_CONFIG_IMAGE_PACKED_ENABLE) && (__XC16_VERSION__ >= 1011)
extern uint8_gfx_image_prog __USB_NOT_CONNECTED[] __attribute__((section("grc_images")));
#else
extern uint8_gfx_image_prog __USB_NOT_CONNECTED[] __attribute__((section("grc_images"), aligned(2)));
#endif

const GFX_RESOURCE_HDR USB_NOT_CONNECTED =
{
    .type = (GFX_RESOURCE_MEMORY_FLASH | GFX_RESOURCE_TYPE_MCHP_MBITMAP | GFX_RESOURCE_COMP_NONE),
    .ID = 0,
    .resource.image.location.progByteAddress = (uint8_gfx_image_prog *) __USB_NOT_CONNECTED,
    .resource.image.width = 30,
    .resource.image.height = 30,
    .resource.image.parameter1.compressedSize = 0,
    .resource.image.parameter2.rawSize = 1804,
    .resource.image.colorDepth = 16,
    .resource.image.type = 0x00,
    .resource.image.paletteID = 0x0000
};

/*********************************
 * Bitmap Structure
 * Label: USB_CONNECTED
 * Description:  30x30 pixels, 16-bits per pixel
 ***********************************/
#if defined (GFX_CONFIG_IMAGE_PACKED_ENABLE) && (__XC16_VERSION__ >= 1011)
extern uint8_gfx_image_prog __USB_CONNECTED[] __attribute__((section("grc_images")));
#else
extern uint8_gfx_image_prog __USB_CONNECTED[] __attribute__((section("grc_images"), aligned(2)));
#endif

const GFX_RESOURCE_HDR USB_CONNECTED =
{
    .type = (GFX_RESOURCE_MEMORY_FLASH | GFX_RESOURCE_TYPE_MCHP_MBITMAP | GFX_RESOURCE_COMP_NONE),
    .ID = 0,
    .resource.image.location.progByteAddress = (uint8_gfx_image_prog *) __USB_CONNECTED,
    .resource.image.width = 30,
    .resource.image.height = 30,
    .resource.image.parameter1.compressedSize = 0,
    .resource.image.parameter2.rawSize = 1804,
    .resource.image.colorDepth = 16,
    .resource.image.type = 0x00,
    .resource.image.paletteID = 0x0000
};

/*********************************
 * Bitmap Structure
 * Label: AudioMute16_2
 * Description:  32x25 pixels, 4-bits per pixel
 ***********************************/
#if defined (GFX_CONFIG_IMAGE_PACKED_ENABLE) && (__XC16_VERSION__ >= 1011)
extern uint8_gfx_image_prog __AudioMute16_2[] __attribute__((section("grc_images")));
#else
extern uint8_gfx_image_prog __AudioMute16_2[] __attribute__((section("grc_images"), aligned(2)));
#endif

const GFX_RESOURCE_HDR AudioMute16_2 =
{
    .type = (GFX_RESOURCE_MEMORY_FLASH | GFX_RESOURCE_TYPE_MCHP_MBITMAP | GFX_RESOURCE_COMP_NONE),
    .ID = 0,
    .resource.image.location.progByteAddress = (uint8_gfx_image_prog *) __AudioMute16_2,
    .resource.image.width = 32,
    .resource.image.height = 25,
    .resource.image.parameter1.compressedSize = 0,
    .resource.image.parameter2.rawSize = 436,
    .resource.image.colorDepth = 4,
    .resource.image.type = 0x00,
    .resource.image.paletteID = 0x0000
};

/*********************************
 * Bitmap Structure
 * Label: AudioPlay16_2
 * Description:  29x22 pixels, 4-bits per pixel
 ***********************************/
#if defined (GFX_CONFIG_IMAGE_PACKED_ENABLE) && (__XC16_VERSION__ >= 1011)
extern uint8_gfx_image_prog __AudioPlay16_2[] __attribute__((section("grc_images")));
#else
extern uint8_gfx_image_prog __AudioPlay16_2[] __attribute__((section("grc_images"), aligned(2)));
#endif

const GFX_RESOURCE_HDR AudioPlay16_2 =
{
    .type = (GFX_RESOURCE_MEMORY_FLASH | GFX_RESOURCE_TYPE_MCHP_MBITMAP | GFX_RESOURCE_COMP_NONE),
    .ID = 0,
    .resource.image.location.progByteAddress = (uint8_gfx_image_prog *) __AudioPlay16_2,
    .resource.image.width = 29,
    .resource.image.height = 22,
    .resource.image.parameter1.compressedSize = 0,
    .resource.image.parameter2.rawSize = 364,
    .resource.image.colorDepth = 4,
    .resource.image.type = 0x00,
    .resource.image.paletteID = 0x0000
};

/*********************************
 * Bitmap Structure
 * Label: Frequency
 * Description:  16x21 pixels, 16-bits per pixel
 ***********************************/
#if defined (GFX_CONFIG_IMAGE_PACKED_ENABLE) && (__XC16_VERSION__ >= 1011)
extern uint8_gfx_image_prog __Frequency[] __attribute__((section("grc_images")));
#else
extern uint8_gfx_image_prog __Frequency[] __attribute__((section("grc_images"), aligned(2)));
#endif

const GFX_RESOURCE_HDR Frequency =
{
    .type = (GFX_RESOURCE_MEMORY_FLASH | GFX_RESOURCE_TYPE_MCHP_MBITMAP | GFX_RESOURCE_COMP_NONE),
    .ID = 0,
    .resource.image.location.progByteAddress = (uint8_gfx_image_prog *) __Frequency,
    .resource.image.width = 16,
    .resource.image.height = 21,
    .resource.image.parameter1.compressedSize = 0,
    .resource.image.parameter2.rawSize = 676,
    .resource.image.colorDepth = 16,
    .resource.image.type = 0x00,
    .resource.image.paletteID = 0x0000
};

/*****************************************************************************
 * SECTION:  FONTS
 *****************************************************************************/

/*********************************
 * TTF Font File Structure
 * Label: Arial14pt
 * Description:  Height: 17 pixels, 1 bit per pixel, Range: ' ' to ''
 ***********************************/
#if defined(GFX_CONFIG_FONT_PROG_SPACE_ENABLE) && (__XC16_VERSION__ >= 1011)
#ifndef GFX_CONFIG_FONT_PACKED_ENABLE
extern GFX_FONT_SPACE char __Arial14pt[] __attribute__((section("grc_text"), aligned(2)));
#else
extern GFX_FONT_SPACE char __Arial14pt[] __attribute__((section("grc_text")));
#endif
#else
extern GFX_FONT_SPACE char __Arial14pt[] __attribute__((aligned(2)));
#endif

const GFX_RESOURCE_HDR Arial14pt = 
{
    .type = (GFX_RESOURCE_MEMORY_FLASH | GFX_RESOURCE_TYPE_FONT | GFX_RESOURCE_COMP_NONE),
    .ID = 0x0000,
    .resource.font.location.progByteAddress = (GFX_FONT_SPACE char *) __Arial14pt,
    .resource.font.header.fontID = 0,
    .resource.font.header.extendedGlyphEntry = 0,
    .resource.font.header.res1 = 0,
    .resource.font.header.bpp = 0,
    .resource.font.header.orientation = 0,
    .resource.font.header.res2 = 0,
    .resource.font.header.firstChar = 0x0020,
    .resource.font.header.lastChar = 0x007F,
    .resource.font.header.height = 0x0011,
};
/*********************************
 * TTF Font File Structure
 * Label: Arial12pt
 * Description:  Height: 15 pixels, 1 bit per pixel, Range: ' ' to ''
 ***********************************/
#if defined(GFX_CONFIG_FONT_PROG_SPACE_ENABLE) && (__XC16_VERSION__ >= 1011)
#ifndef GFX_CONFIG_FONT_PACKED_ENABLE
extern GFX_FONT_SPACE char __Arial12pt[] __attribute__((section("grc_text"), aligned(2)));
#else
extern GFX_FONT_SPACE char __Arial12pt[] __attribute__((section("grc_text")));
#endif
#else
extern GFX_FONT_SPACE char __Arial12pt[] __attribute__((aligned(2)));
#endif

const GFX_RESOURCE_HDR Arial12pt = 
{
    .type = (GFX_RESOURCE_MEMORY_FLASH | GFX_RESOURCE_TYPE_FONT | GFX_RESOURCE_COMP_NONE),
    .ID = 0x0000,
    .resource.font.location.progByteAddress = (GFX_FONT_SPACE char *) __Arial12pt,
    .resource.font.header.fontID = 0,
    .resource.font.header.extendedGlyphEntry = 0,
    .resource.font.header.res1 = 0,
    .resource.font.header.bpp = 0,
    .resource.font.header.orientation = 0,
    .resource.font.header.res2 = 0,
    .resource.font.header.firstChar = 0x0020,
    .resource.font.header.lastChar = 0x007F,
    .resource.font.header.height = 0x000F,
};
/*********************************
 * TTF Font File Structure
 * Label: Arial13pt
 * Description:  Height: 15 pixels, 1 bit per pixel, Range: ' ' to ''
 ***********************************/
#if defined(GFX_CONFIG_FONT_PROG_SPACE_ENABLE) && (__XC16_VERSION__ >= 1011)
#ifndef GFX_CONFIG_FONT_PACKED_ENABLE
extern GFX_FONT_SPACE char __Arial13pt[] __attribute__((section("grc_text"), aligned(2)));
#else
extern GFX_FONT_SPACE char __Arial13pt[] __attribute__((section("grc_text")));
#endif
#else
extern GFX_FONT_SPACE char __Arial13pt[] __attribute__((aligned(2)));
#endif

const GFX_RESOURCE_HDR Arial13pt = 
{
    .type = (GFX_RESOURCE_MEMORY_FLASH | GFX_RESOURCE_TYPE_FONT | GFX_RESOURCE_COMP_NONE),
    .ID = 0x0000,
    .resource.font.location.progByteAddress = (GFX_FONT_SPACE char *) __Arial13pt,
    .resource.font.header.fontID = 0,
    .resource.font.header.extendedGlyphEntry = 0,
    .resource.font.header.res1 = 0,
    .resource.font.header.bpp = 0,
    .resource.font.header.orientation = 0,
    .resource.font.header.res2 = 0,
    .resource.font.header.firstChar = 0x0020,
    .resource.font.header.lastChar = 0x007F,
    .resource.font.header.height = 0x000F,
};
/*********************************
 * TTF Font File Structure
 * Label: Monotype_Corsiva
 * Description:  Height: 21 pixels, 1 bit per pixel, Range: ' ' to ''
 ***********************************/
#if defined(GFX_CONFIG_FONT_PROG_SPACE_ENABLE) && (__XC16_VERSION__ >= 1011)
#ifndef GFX_CONFIG_FONT_PACKED_ENABLE
extern GFX_FONT_SPACE char __Monotype_Corsiva[] __attribute__((section("grc_text"), aligned(2)));
#else
extern GFX_FONT_SPACE char __Monotype_Corsiva[] __attribute__((section("grc_text")));
#endif
#else
extern GFX_FONT_SPACE char __Monotype_Corsiva[] __attribute__((aligned(2)));
#endif

const GFX_RESOURCE_HDR Monotype_Corsiva = 
{
    .type = (GFX_RESOURCE_MEMORY_FLASH | GFX_RESOURCE_TYPE_FONT | GFX_RESOURCE_COMP_NONE),
    .ID = 0x0000,
    .resource.font.location.progByteAddress = (GFX_FONT_SPACE char *) __Monotype_Corsiva,
    .resource.font.header.fontID = 0,
    .resource.font.header.extendedGlyphEntry = 0,
    .resource.font.header.res1 = 0,
    .resource.font.header.bpp = 0,
    .resource.font.header.orientation = 0,
    .resource.font.header.res2 = 0,
    .resource.font.header.firstChar = 0x0020,
    .resource.font.header.lastChar = 0x007F,
    .resource.font.header.height = 0x0015,
};
