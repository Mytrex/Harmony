<#--
/*******************************************************************************
  USART Driver Initialization File

  File Name:
    drv_tmr_init.c

  Summary:
    This file contains source code necessary to initialize the system.

  Description:
    This file contains source code necessary to initialize the system.  It
    implements the "SYS_Initialize" function, configuration bits, and allocates
    any necessary global system resources, such as the systemObjects structure
    that contains the object handles to all the MPLAB Harmony module objects in
    the system.
 *******************************************************************************/

/*******************************************************************************
Copyright (c) 2013-2014 released Microchip Technology Inc.  All rights reserved.

Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).

You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.

SOFTWARE AND DOCUMENTATION ARE PROVIDED AS IS WITHOUT WARRANTY OF ANY KIND,
EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF
MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR OBLIGATED UNDER
CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR
OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES
INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR
CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF
SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES
(INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.
 *******************************************************************************/
 -->
// <editor-fold defaultstate="collapsed" desc="DRV_PMP Initialization Data">
<#if CONFIG_USE_DRV_PMP == true>
    DRV_PMP_INIT     pmpInit =
{
    .polarity.addressLatchPolarity = PMP_POLARITY_ACTIVE_HIGH,
    .polarity.rwStrobePolarity = PMP_POLARITY_ACTIVE_LOW,
    .polarity.writeEnableStrobePolarity = PMP_POLARITY_ACTIVE_LOW,
    .polarity.chipselect1Polarity = PMP_POLARITY_ACTIVE_HIGH,
    .polarity.chipselect2Polarity = PMP_POLARITY_ACTIVE_LOW,
    .ports.readWriteStrobe = PORT_ENABLE,
    .ports.writeEnableStrobe = PORT_ENABLE,
    .moduleInit.value = SYS_MODULE_POWER_RUN_FULL,
    .pmpID            = PMP_ID_0,
    .stopInIdle       = false,
    .muxMode          = PMP_MUX_NONE
};
</#if>
// </editor-fold>
<#--
/*******************************************************************************
 End of File
*/
-->