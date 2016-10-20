/*******************************************************************************
  MPLAB Harmony Application Source File
  
  Company:
    Microchip Technology Inc.
  
  File Name:
    app.c

  Summary:
    This file contains the source code for the MPLAB Harmony application.

  Description:
    This file contains the source code for the MPLAB Harmony application.  It 
    implements the logic of the application's state machine and it may call 
    API routines of other MPLAB Harmony modules in the system, such as drivers,
    system services, and middleware.  However, it does not call any of the
    system interfaces (such as the "Initialize" and "Tasks" functions) of any of
    the modules in the system or make any assumptions about when those functions
    are called.  That is the responsibility of the configuration-specific system
    files.
 *******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) 2016 released Microchip Technology Inc. All rights reserved.

Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).

You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.

SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND,
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
// DOM-IGNORE-END


// *****************************************************************************
// *****************************************************************************
// Section: Included Files 
// *****************************************************************************
// *****************************************************************************

#include "app.h"


// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    This structure should be initialized by the APP_Initialize function.
    
    Application strings and buffers are be defined outside this structure.
*/

APP_DATA appData;

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************

/******************************************************************************
  Function:
    void APP_USBDeviceEventHandler
    (
        USB_DEVICE_EVENTS event
        void * pEventData,
        uintptr_t context
    );

  Remarks:
    Handles the Device Layers Events.
*/

void APP_USBDeviceEventHandler
(
    USB_DEVICE_EVENT event, 
    void * pEventData, 
    uintptr_t context
)
{
    APP_DATA * appData = (APP_DATA*)context;

    switch (event)
    {
        case USB_DEVICE_EVENT_RESET:
        case USB_DEVICE_EVENT_DECONFIGURED:
            {
                /* Device was reset or deconfigured. */
                break;
            }

        case USB_DEVICE_EVENT_CONFIGURED:
            {
                /* Device is configured. */
                break;
            }

        case USB_DEVICE_EVENT_SUSPENDED:
            {
                /* Device is suspended. */
                break;
            }

        case USB_DEVICE_EVENT_POWER_DETECTED:
            {
                if (appData->isFsRunning)
                {
                    /* VBUS is detected. Since FS is running defer the event
                     * handling to the Task Routine. */
                }
                else
                {
                    /* VBUS is detected. Attach the device. */
                    USB_DEVICE_Attach(appData->usbDeviceHandle);
                }
                break;
            }

        case USB_DEVICE_EVENT_POWER_REMOVED:
            {
                /* VBUS is not detected. Detach the device */
                USB_DEVICE_Detach(appData->usbDeviceHandle);
                break;
            }

            /* These events are not used in this demo */
        case USB_DEVICE_EVENT_RESUMED:
        case USB_DEVICE_EVENT_ERROR:
        case USB_DEVICE_EVENT_SOF:
        default:
            {
                break;
            }
    }
}

// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************

void APP_USBInitialize ( void )
{
    /* Place the App state machine in its initial state. */
    appData.usbState = APP_USB_STATE_INIT;
    
    /* Set device layer handle as invalid */
    appData.usbDeviceHandle = USB_DEVICE_HANDLE_INVALID;
}

void APP_FSInitialize(void)
{
    /* Place the App state machine in its initial state. */
    appData.fsState = APP_FS_STATE_INIT;
    appData.isFsRunning = 0;
}

/******************************************************************************
  Function:
    void APP_USBTasks ( void )

  Remarks:
    See prototype in app.h.
 */
void APP_USBTasks (void)
{
    /* Check the application's current state. */
    switch (appData.usbState)
    {
        /* Application's initial state. */
        case APP_USB_STATE_INIT:
        {
            appData.usbDeviceHandle = USB_DEVICE_Open(USB_DEVICE_INDEX_0, DRV_IO_INTENT_READWRITE);

            if(appData.usbDeviceHandle != USB_DEVICE_HANDLE_INVALID)
            {
                /* Set the Event Handler. We will start receiving events after
                 * the handler is set */
                USB_DEVICE_EventHandlerSet(appData.usbDeviceHandle, APP_USBDeviceEventHandler, (uintptr_t)&appData);

                /* Move the application to the next state */
                appData.usbState = APP_USB_STATE_RUNNING;
            }

            break;
        }

        case APP_USB_STATE_DEVICE_ATTACH:
        {
            /* VBUS detect event handling was deferred to the task routine.
             * Attach the device. */
            USB_DEVICE_Attach(appData.usbDeviceHandle);
            appData.usbState = APP_USB_STATE_RUNNING;
            break;
        }

        case APP_USB_STATE_RUNNING:
        {
            /* The MSD Device is maintained completely by the MSD function
             * driver and does not require application intervention. So there
             * is nothing related to MSD Device to do here. */
            break;
        }

        /* The default state should never be executed. */
        default:
        {
            break;
        }
    }
}

/******************************************************************************
  Function:
    void APP_FSTasks ( void )

  Remarks:
    See prototype in app.h.
 */

void APP_FSTasks (void)
{
    SYS_FS_RESULT retVal = SYS_FS_RES_FAILURE;
    uint8_t ledState = 0;

    /* Check the application's current state. */
    switch (appData.fsState)
    {
        /* Application's initial state. */
        case APP_FS_STATE_INIT:
            {
                appData.isFsRunning = false;
                appData.numLedChange = 0;
                appData.fsState = APP_FS_STATE_WAIT_FOR_SWITCH_PRESS;
                /* Fall through */
            }

        case APP_FS_STATE_WAIT_FOR_SWITCH_PRESS:
	    {
		    if (BSP_SwitchStateGet(BSP_SWITCH_1) == BSP_SWITCH_STATE_PRESSED)
		    {
			    BSP_LEDOn (BSP_LED_5);            
			    appData.fsState = APP_FS_STATE_WAIT_FOR_SWITCH_RELEASE;
		    }
		    else
		    {
			    break;
		    }
	    }

	case APP_FS_STATE_WAIT_FOR_SWITCH_RELEASE:
	    {
		    if (BSP_SwitchStateGet(BSP_SWITCH_1) == BSP_SWITCH_STATE_RELEASED)
		    {
			    /* VBUS is not detected. Detach the device */
			    USB_DEVICE_Detach(appData.usbDeviceHandle);

			    /* USB has been detached. Now mount the File System. */
			    appData.isFsRunning = true;
			    appData.fsState = APP_FS_STATE_MOUNT_DISK;
			    /* Fall through. */
		    }
	    }

        case APP_FS_STATE_MOUNT_DISK:
            {
                if (SYS_FS_Mount("/dev/mtda1", "/mnt/myDrive", FAT, 0, NULL) != 0)
                {
                    /* The disk could not be mounted. Try mounting again until
                     * mount is successful. */
                    appData.fsState = APP_FS_STATE_MOUNT_DISK;
                }
                else
                {
                    /* Mount was successful. Now open a file. */
                    appData.fsState = APP_FS_STATE_OPEN_FILE;
                }
                break;
            }

        case APP_FS_STATE_OPEN_FILE:
            {
                appData.fileHandle = SYS_FS_FileOpen("/mnt/myDrive/FILE.TXT", SYS_FS_FILE_OPEN_WRITE_PLUS);
                if (appData.fileHandle == SYS_FS_HANDLE_INVALID)
                {
                    /* Could not open the file. Error out. */
                    appData.fsState = APP_FS_STATE_ERROR;
                }
                else
                {
                    /* Check the file status */
                    appData.fsState = APP_FS_STATE_READ_FILE;
                }
                break;
            }

        case APP_FS_STATE_READ_FILE:
            {
                retVal = SYS_FS_FileStringGet(appData.fileHandle, (char *)appData.fsBuffer, 8);
                if (retVal == SYS_FS_RES_SUCCESS)
                {
                    if ((strncmp((const char *)appData.fsBuffer, "LED9:", 5)) == 0)
                    {
                        appData.numLedChange ++;
                        ledState = atoi((const char *)&appData.fsBuffer[5]);
                        if (ledState)
                        {
                            BSP_LEDOn (BSP_LED_9);
                        }
                        else
                        {
                            BSP_LEDOff (BSP_LED_9);
                        }
                    }

                    if ((strncmp((const char *)appData.fsBuffer, "LED8:", 5)) == 0)
                    {
                        appData.numLedChange ++;
                        ledState = atoi((const char *)&appData.fsBuffer[5]);
                        if (ledState)
                        {
                            BSP_LEDOn (BSP_LED_8);
                        }
                        else
                        {
                            BSP_LEDOff (BSP_LED_8);
                        }
                    }
                }

                if (appData.numLedChange == 2)
                {
                    appData.numLedChange = 0;
                    appData.fsState = APP_FS_STATE_CLOSE_FILE;
                }
                else
                {
                    appData.fsState = APP_FS_STATE_CHECK_EOF;
                }

                break;
            }

        case APP_FS_STATE_CHECK_EOF:
            {
                if (SYS_FS_FileEOF(appData.fileHandle) == true)
                {
                    /* Reached End of the File. */ 
                    appData.fsState = APP_FS_STATE_CLOSE_FILE;
                }
                else
                {
                    /* Not reached end of file. See if there is still data to
                     * be acted upon. */
                    appData.fsState = APP_FS_STATE_READ_FILE;
                }
                break;
            }

        case APP_FS_STATE_CLOSE_FILE:
            {
                SYS_FS_FileClose(appData.fileHandle);
                appData.fsState = APP_FS_STATE_UNMOUNT_DISK;
            }
            break;

        case APP_FS_STATE_ERROR:
            {
                BSP_LEDOn (BSP_LED_6);
		break;
            }

        case APP_FS_STATE_UNMOUNT_DISK:
            {
                SYS_FS_Unmount("/mnt/myDrive");
		BSP_LEDOff (BSP_LED_5);            
                appData.fsState = APP_FS_STATE_INIT;
                appData.usbState = APP_USB_STATE_DEVICE_ATTACH;
                break;
            }

        default:
            {
                break;
            }
    }
}

// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void APP_Initialize ( void )

  Remarks:
    See prototype in app.h.
 */

void APP_Initialize ( void )
{
    APP_USBInitialize ();
    APP_FSInitialize ();
}


/******************************************************************************
  Function:
    void APP_Tasks ( void )

  Remarks:
    See prototype in app.h.
 */

void APP_Tasks (void)
{
    APP_USBTasks ();
    APP_FSTasks ();
}
 

/*******************************************************************************
 End of File
 */


