/*******************************************************************************
  SAMPLE Driver Build Variant implementation for dynamic driver

  Company:
    Microchip Technology Inc.

  File Name:
    drv_sample_hw_dynamic.h

  Summary:
    SAMPLE Driver Build Variant implementation for dynamic driver

  Description:
    This file defines the build variant implementations for the dynamic driver.
*******************************************************************************/

//DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) 2012 released Microchip Technology Inc.  All rights reserved.

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
//DOM-IGNORE-END


#ifndef _DRV_SAMPLE_HW_DYNAMIC_H
#define _DRV_SAMPLE_HW_DYNAMIC_H

#include "sample/src/drv_sample_local.h"


// *****************************************************************************
/* Macro: _DRV_SAMPLE_OBJ(hObj,mem)

  Summary:
    Returns the appropriate Driver object member

  Description:
    Either return the static object or returns the indexed dynamic object.
    This macro has variations for dynamic or static driver.
*/

#define _DRV_SAMPLE_OBJ(hObj,mem)               gDrvSAMPLEObj[hObj].mem


// *****************************************************************************
/* Macro: _DRV_SAMPLE_INDEX_GET(drvIndex)

  Summary:
    Returns the appropriate driver id for the configuration

  Description:
    Either return the statically declared driver id or returns the dynamic index
    passed into the macro. This macro has variations for dynamic or static
    driver.
*/

#define _DRV_SAMPLE_INDEX_GET(drvIndex)            (drvIndex)


// *****************************************************************************
/* Macro: _DRV_SAMPLE_IF_DYN( statement )

  Summary:
    Allows removal of code statements only needed for dynamic configurations

  Description:
    This macro allows removal of code statements that are only needed for
    dynamic configurations.

  Remarks:
    Do not put multiple statements or compound statements within this macro.
    The statement must not include a comma ','.
*/

#define _DRV_SAMPLE_IF_DYN(statement)             statement


// *****************************************************************************
/* Macro: _DRV_SAMPLE_IF_DYN_RETURN_TYPE(type)

  Summary:
    Switches return types needed in dynamic builds to "void" in static builds.

  Description:
    This macro switches return types needed in dynamic builds to "void" in
    static builds.
*/

#define _DRV_SAMPLE_IF_DYN_RETURN_TYPE(type)      type


// *****************************************************************************
/* Macro: _DRV_SAMPLE_IF_DYN_RETURN(retVal)

  Summary:
    Switches "return(value)" statements needed in dynamic builds to just
    "return" in static builds.

  Description:
    This macro switches "return(value)" statements needed in dynamic builds to
    just "return" in static builds.
*/

#define _DRV_SAMPLE_IF_DYN_RETURN(retVal)         return(retVal)


// *****************************************************************************
/* Macro: _DRV_SAMPLE_IF_DYN_COMMA(param)

  Summary:
    Allows removal of multiple function parameters only needed for dynamic
    configurations

  Description:
    This macro allows removal of multiple function arguments that are only
    needed for dynamic configurations.

  Remarks:
    This macro is only for use on parameters that preceed (or are to the Left of)
    other arguments in a function's actual parameter list because it embeds a
    comma ',' at the end of the argument declaration.
*/

#define _DRV_SAMPLE_IF_DYN_COMMA(param)     param,


// *****************************************************************************
/* Macro: _DRV_SAMPLE_ObjectIsValid( dObj )

  Summary:
    Returns the information on whether the object handle is valid or not

  Description:
    Returns the information on whether the object handle is valid or not

*/

#define _DRV_SAMPLE_ObjectIsValid(dObj)        (dObj < DRV_SAMPLE_INSTANCES_NUMBER)


// *****************************************************************************
/* Macro: _DRV_SAMPLE_OBJ_ALLOCATE(drvIndex)

  Summary:
    Allocates the driver object instance

  Description:
    This macro allocates the driver object instance.
*/

#define _DRV_SAMPLE_OBJ_ALLOCATE(drvIndex)     drvIndex


#endif // _DRV_SAMPLE_HW_DYNAMIC_H

/*******************************************************************************
 End of File
*/

