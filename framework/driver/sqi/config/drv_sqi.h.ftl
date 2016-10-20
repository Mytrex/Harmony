<#--
/*******************************************************************************
  SQI Driver Freemarker Template File

  Company:
    Microchip Technology Inc.

  File Name:
    drv_sqi.h.ftl

  Summary:
    SQI Driver Freemarker Template File

  Description:

*******************************************************************************/

/*******************************************************************************
Copyright (c) 2016 - 2017 released Microchip Technology Inc. All rights reserved.

Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).

You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.

SOFTWARE AND DOCUMENTATION ARE PROVIDED AS IS  WITHOUT  WARRANTY  OF  ANY  KIND,
EITHER EXPRESS  OR  IMPLIED,  INCLUDING  WITHOUT  LIMITATION,  ANY  WARRANTY  OF
MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A  PARTICULAR  PURPOSE.
IN NO EVENT SHALL MICROCHIP OR  ITS  LICENSORS  BE  LIABLE  OR  OBLIGATED  UNDER
CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION,  BREACH  OF  WARRANTY,  OR
OTHER LEGAL  EQUITABLE  THEORY  ANY  DIRECT  OR  INDIRECT  DAMAGES  OR  EXPENSES
INCLUDING BUT NOT LIMITED TO ANY  INCIDENTAL,  SPECIAL,  INDIRECT,  PUNITIVE  OR
CONSEQUENTIAL DAMAGES, LOST  PROFITS  OR  LOST  DATA,  COST  OF  PROCUREMENT  OF
SUBSTITUTE  GOODS,  TECHNOLOGY,  SERVICES,  OR  ANY  CLAIMS  BY  THIRD   PARTIES
(INCLUDING BUT NOT LIMITED TO ANY DEFENSE  THEREOF),  OR  OTHER  SIMILAR  COSTS.
*******************************************************************************/
-->

/*** SQI Driver Configuration ***/
<#if CONFIG_USE_DRV_SQI == true>

<#-- SQI Driver Defines -->
#define DRV_SQI_INSTANCES_NUMBER     	${CONFIG_DRV_SQI_INSTANCES_NUMBER}
#define DRV_SQI_CLIENTS_NUMBER        	${CONFIG_DRV_SQI_CLIENTS_NUMBER}
#define DRV_SQI_BUFFER_OBJECT_NUMBER  	${CONFIG_DRV_SQI_BUFFER_OBJECT_NUMBER}
#define DRV_SQI_DMA_BUFFER_DESC_NUMBER  ${CONFIG_DRV_SQI_DMA_BUFFER_DESCRIPTORS_NUMBER}

<#if CONFIG_DRV_SQI_INTERRUPT_MODE == true>
#define DRV_SQI_INTERRUPT_MODE        	true
#define DRV_SQI_INTERRUPT_SOURCE      	${CONFIG_DRV_SQI_INTERRUPT_SOURCE}
<#else>
#define DRV_SQI_INTERRUPT_MODE        	false
</#if>
</#if>
<#--
/*******************************************************************************
 End of File
*/
-->

