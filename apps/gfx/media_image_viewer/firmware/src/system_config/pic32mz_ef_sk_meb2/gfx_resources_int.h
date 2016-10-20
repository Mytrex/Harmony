/*****************************************************************************
  AUTO-GENERATED CODE:  Graphics Resource Converter version: 4.00.39 BETA

  Company:
      Microchip Technology, Inc.
 
  File Name:
     gfx_resources_int.h
 
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

#ifndef GFX_RESOURCES_INT_H_FILE
#define GFX_RESOURCES_INT_H_FILE
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
 * SECTION: Graphics Configuration
 * Overview:    This defines the size of the buffer used by font functions
 *              to retrieve font data from the external memory. The buffer
 *              size can be increased to accommodate large font sizes.
 *              The user must be aware of the expected glyph sizes of the 
 *              characters stored in the font table. 
 *              To modify the size used, declare this macro in the 
 *              GraphicsConfig.h file with the desired size.
 *
 * #define GFX_EXTERNAL_FONT_RASTER_BUFFER_SIZE     (38)
 *****************************************************************************/

/*****************************************************************************
 * This is an error check for the color depth
 *****************************************************************************/
#if (COLOR_DEPTH > 16)
#error "Color Depth needs to be 16 to correctly use these resources"
#endif



/*****************************************************************************
 * SECTION:  BITMAPS
 *****************************************************************************/

/*********************************
 * Bitmap Structure
 * Label: cog
 * Description:  60x60 pixels, 1-bits per pixel
 ***********************************/
extern const GFX_RESOURCE_HDR cog;
#define cog_WIDTH     (60)
#define cog_HEIGHT    (60)
#define cog_SIZE      (490)
/*********************************
 * Bitmap Structure
 * Label: cog_outline
 * Description:  60x60 pixels, 1-bits per pixel
 ***********************************/
extern const GFX_RESOURCE_HDR cog_outline;
#define cog_outline_WIDTH     (60)
#define cog_outline_HEIGHT    (60)
#define cog_outline_SIZE      (490)
/*********************************
 * Bitmap Structure
 * Label: layers_image
 * Description:  60x60 pixels, 1-bits per pixel
 ***********************************/
extern const GFX_RESOURCE_HDR layers_image;
#define layers_image_WIDTH     (60)
#define layers_image_HEIGHT    (60)
#define layers_image_SIZE      (490)
/*********************************
 * Bitmap Structure
 * Label: layers_image_outline
 * Description:  60x60 pixels, 1-bits per pixel
 ***********************************/
extern const GFX_RESOURCE_HDR layers_image_outline;
#define layers_image_outline_WIDTH     (60)
#define layers_image_outline_HEIGHT    (60)
#define layers_image_outline_SIZE      (490)
/*********************************
 * Bitmap Structure
 * Label: script_invert
 * Description:  60x60 pixels, 1-bits per pixel
 ***********************************/
extern const GFX_RESOURCE_HDR script_invert;
#define script_invert_WIDTH     (60)
#define script_invert_HEIGHT    (60)
#define script_invert_SIZE      (490)
/*********************************
 * Bitmap Structure
 * Label: script_outline
 * Description:  60x60 pixels, 1-bits per pixel
 ***********************************/
extern const GFX_RESOURCE_HDR script_outline;
#define script_outline_WIDTH     (60)
#define script_outline_HEIGHT    (60)
#define script_outline_SIZE      (490)
/*********************************
 * Bitmap Structure
 * Label: NewHarmonyLogo_Small
 * Description:  172x120 pixels, 16-bits per pixel
 ***********************************/
extern const GFX_RESOURCE_HDR NewHarmonyLogo_Small;
#define NewHarmonyLogo_Small_WIDTH     (172)
#define NewHarmonyLogo_Small_HEIGHT    (120)
#define NewHarmonyLogo_Small_SIZE      (41286)
/*********************************
 * Bitmap Structure
 * Label: RoundHomeButton_Outline
 * Description:  90x89 pixels, 16-bits per pixel
 ***********************************/
extern const GFX_RESOURCE_HDR RoundHomeButton_Outline;
#define RoundHomeButton_Outline_WIDTH     (90)
#define RoundHomeButton_Outline_HEIGHT    (89)
#define RoundHomeButton_Outline_SIZE      (16026)
/*********************************
 * Bitmap Structure
 * Label: RoundHomeButton
 * Description:  90x89 pixels, 16-bits per pixel
 ***********************************/
extern const GFX_RESOURCE_HDR RoundHomeButton;
#define RoundHomeButton_WIDTH     (90)
#define RoundHomeButton_HEIGHT    (89)
#define RoundHomeButton_SIZE      (16026)
/*****************************************************************************
 * SECTION:  JPEGS
 *****************************************************************************/

/*********************************
 * JPEG Structure
 * Label: microchipLogo_small
 * Description:  230x120 pixels
 ***********************************/
extern const GFX_RESOURCE_HDR microchipLogo_small;
#define microchipLogo_small_WIDTH     (230)
#define microchipLogo_small_HEIGHT    (120)
#define microchipLogo_small_SIZE      (5593)
/*****************************************************************************
 * SECTION:  Fonts
 *****************************************************************************/

/*********************************
 * TTF Font File Structure
 * Label: VeraMono
 * Description:  Height: 19 pixels, 1 bit per pixel, Range: ' ' to ''
 ***********************************/
extern const GFX_RESOURCE_HDR VeraMono;
#define VeraMono_SIZE    (4040)
/*********************************
 * TTF Font File Structure
 * Label: VeraMono14
 * Description:  Height: 17 pixels, 1 bit per pixel, Range: ' ' to ''
 ***********************************/
extern const GFX_RESOURCE_HDR VeraMono14;
#define VeraMono14_SIZE    (2058)
/*********************************
 * TTF Font File Structure
 * Label: VeraMono12
 * Description:  Height: 15 pixels, 1 bit per pixel, Range: ' ' to ''
 ***********************************/
extern const GFX_RESOURCE_HDR VeraMono12;
#define VeraMono12_SIZE    (1832)
#endif

