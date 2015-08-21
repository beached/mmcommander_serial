/***********************************************************************************

    Filename:     usb_framework_structs.h

    Description:  USB library common data structures.

***********************************************************************************/

#ifndef USBFRAMEWORKSTRUCTS_H
#define USBFRAMEWORKSTRUCTS_H
/** \addtogroup module_usb_framework USB Framework (usbfw)
 * \brief This module contains USB status and descriptor structs
 *
 *
 * @{
 */
//#include "hal_types.h"
#include "../class_cdc/usb_firmware_library_config.h"
#include <stdint.h>

#ifdef EXTERN
   #undef EXTERN
#endif
#ifdef USBFRAMEWORK_C
   #define EXTERN ///< Definition used only for usb_framework.c
#else
   #define EXTERN extern ///< Definition used in other source files to declare external
#endif


//-------------------------------------------------------------------------------------------------------
/// \name Module Data
//@{

/// Endpoint status (used with USB_INFO.ep0Status / pEpInStatus[] / pEpOutStatus[])
typedef enum {
    EP_IDLE      = 0x00,  ///< The endpoint is idle, or a setup token has been received
    EP_TX        = 0x01,  ///< Setup IN data is transmitted automatically by the framework
    EP_RX        = 0x02,  ///< Setup OUT data is received automatically by the framework
    EP_HALT      = 0x03,  ///< The endpoint is halted (returns stalls to the host)
    EP_STALL     = 0x04,  ///< Send procedural stall in the next status phase
    EP_MANUAL_TX = 0x05,  ///< Setup IN data is transmitted manually by the user application
    EP_MANUAL_RX = 0x06,  ///< Setup OUT data is received manually by the user application
    EP_CANCEL    = 0x07   ///< The current transfer was cancelled by the host
} EP_STATUS;

/// Device state (used with USB_INFO.usbState)
typedef enum {
   DEV_ATTACHED   = 0x00,  ///< Device attached (invisible state)
   DEV_POWERED    = 0x01,  ///< Device powered (invisible state)
   DEV_DEFAULT    = 0x02,  ///< Default state (the \c USBADDR register is 0)
   DEV_ADDRESS    = 0x03,  ///< Addressed state (the \c USBADDR register has been set)
   DEV_CONFIGURED = 0x04,  ///< Configured state (\c usbfwData.configurationValue != 0)
   DEV_SUSPENDED  = 0x05   ///< Suspended state (never set)
} USB_STATE;

/// USBFW internal module data
typedef struct {
    USB_STATE usbState;                                           ///< USB device state
    uint8_t configurationValue;                                     ///< Current configuration value
    uint8_t pAlternateSetting[USB_SETUP_MAX_NUMBER_OF_INTERFACES];  ///< Current alternate settings
    EP_STATUS ep0Status;                                          ///< Endpoint 0 status
    EP_STATUS pEpInStatus[5];                                     ///< Endpoint 1-5 IN status
    EP_STATUS pEpOutStatus[5];                                    ///< Endpoint 1-5 OUT status
    uint8_t remoteWakeup;                                           ///< Remote wakeup allowed
    uint8_t selfPowered;                                            ///< Is currently self-powered?
} USBFW_DATA;

//-------------------------------------------------------------------------------------------------------
/// Setup header (contains the 8 bytes received during the setup phase)
typedef struct {
    uint8_t requestType;  ///< Request type (direction, type and recipient, see the \c RT_ definitions)
    uint8_t request;      ///< Request ID
    uint16_t value;       ///< Value field
    uint16_t index;       ///< Index field
    uint16_t length;      ///< Length of data phase
} USB_SETUP_HEADER;

/// Setup handler data phase configuration
typedef struct {
    uint8_t /*__generic*/ *pBuffer;  ///< Pointer to where IN/OUT data should be taken from/received
    uint16_t bytesLeft;         ///< The number of bytes to transfer
} USB_SETUP_DATA;


//@}
//-------------------------------------------------------------------------------------------------------

// From usb_descriptor.h
/** \addtogroup module_usb_descriptor  USB Descriptor*/
//-------------------------------------------------------------------------------------------------------
/// USB device descriptor
typedef struct {
    uint8_t bLength;             ///< Size of this descriptor (in bytes)
    uint8_t bDescriptorType;     ///< Descriptor type = \ref DESC_TYPE_DEVICE
    uint16_t bcdUSB;             ///< USB specification release number (in BCD, e.g. 0110 for USB 1.1)
    uint8_t bDeviceClass;        ///< Device class code
    uint8_t bDeviceSubClass;     ///< Device subclass code
    uint8_t bDeviceProtocol;     ///< Device protocol code
    uint8_t bMaxPacketSize0;     ///< Maximum packet size for EP0
    uint16_t idVendor;           ///< Vendor ID
    uint16_t idProduct;          ///< Product ID
    uint16_t bcdDevice;          ///< Device release number (in BCD)
    uint8_t iManufacturer;       ///< Index of the string descriptor for manufacturer
    uint8_t iProduct;            ///< Index of the string descriptor for product
    uint8_t iSerialNumber;       ///< Index of the string descriptor for serial number
    uint8_t bNumConfigurations;  ///< Number of possible configurations
} USB_DEVICE_DESCRIPTOR;

/// USB configuration descriptor
typedef struct {
    uint8_t bLength;             ///< Size of this descriptor (in bytes)
    uint8_t bDescriptorType;     ///< Descriptor type = \ref DESC_TYPE_CONFIG
    uint16_t wTotalLength;       ///< Total length of data for this configuration
    uint8_t bNumInterfaces;      ///< Number of interfaces supported by this configuration (one-based index)
    uint8_t bConfigurationValue; ///< Designator value for this configuration
    uint8_t iConfiguration;      ///< Index of the string descriptor for this configuration
    uint8_t bmAttributes;        ///< Configuration characteristics
    uint8_t bMaxPower;           ///< Maximum power consumption in this configuration (bMaxPower * 2 mA)
} USB_CONFIGURATION_DESCRIPTOR;

/// USB interface descriptor
typedef struct {
    uint8_t bLength;             ///< Size of this descriptor (in bytes)
    uint8_t bDescriptorType;     ///< Descriptor type = \ref DESC_TYPE_INTERFACE
    uint8_t bInterfaceNumber;    ///< Number of *this* interface (zero-based index)
    uint8_t bAlternateSetting;   ///< Alternate setting index for this descriptor (zero-based index)
    uint8_t bNumEndpoints;       ///< Number of endpoints for this interface (excl. EP0)
    uint8_t bInterfaceClass;     ///< Interface class code
    uint8_t bInterfaceSubClass;  ///< Interface subclass code
    uint8_t bInterfaceProtocol;  ///< Interface protocol code
    uint8_t iInterface;          ///< Index of the string descriptor for this interface
} USB_INTERFACE_DESCRIPTOR;

/// USB endpoint descriptor
typedef struct {
    uint8_t bLength;             ///< Size of this descriptor (in bytes)
    uint8_t bDescriptorType;     ///< Descriptor type = \ref DESC_TYPE_ENDPOINT
    uint8_t bEndpointAddress;    ///< Endpoint address (direction[7] + number[3:0])
    uint8_t bmAttributes;        ///< Endpoint attributes (ISO / BULK / INT)
    uint16_t wMaxPacketSize;      ///< Maximum endpoint packet size
    uint8_t bInterval;           ///< \ref EP_ATTR_INT : Polling interval (in ms)
} USB_ENDPOINT_DESCRIPTOR;

/// USB string descriptor
typedef struct {
    uint8_t bLength;             ///< Size of this descriptor (in bytes)
    uint8_t bDescriptorType;     ///< Descriptor type = \ref DESC_TYPE_STRING
    uint16_t pString[1];         ///< Unicode string
} USB_STRING_DESCRIPTOR;

/// USB HID descriptor
typedef struct {
    uint8_t bLength;               ///< Size of this descriptor (in bytes)
    uint8_t bDescriptorType;       ///< HID descriptor type
    uint16_t bscHID;               ///< HID specification release number (in BCD)
    uint8_t bCountryCode;          ///< Hardware target country
    uint8_t bNumDescriptors;       ///< Number of HID class descriptors to follow
    uint8_t bRDescriptorType;      ///< Report descriptor type
    uint16_t wDescriptorLength;    ///< Total length of the associated report descriptor
} USB_HID_DESCRIPTOR;
//-------------------------------------------------------------------------------------------------------


//-------------------------------------------------------------------------------------------------------
/// Look-up table entry for non-standard descriptor types (used with \ref usbsrGetDescriptor)
typedef struct {
    uint8_t valueMsb;            ///< LSB of the \ref USB_SETUP_HEADER.value request parameter
    uint8_t valueLsb;            ///< MSB of the \ref USB_SETUP_HEADER.value request parameter
    uint8_t indexMsb;            ///< LSB of the \ref USB_SETUP_HEADER.index request parameter
    uint8_t indexLsb;            ///< MSB of the \ref USB_SETUP_HEADER.index request parameter
    uint8_t __code *pDescStart;  ///< A pointer to the descriptor to be returned for the given index/value
    uint16_t length;            ///< The length of the returned descriptor
} DESC_LUT_INFO;

/// Look-up table for double-buffer settings
typedef struct {
    USB_INTERFACE_DESCRIPTOR __code *pInterface; ///< Pointer to an interface descriptor
    uint8_t inMask;                                 ///< Bitmask for IN endpoints (bit x maps to EPx IN)
    uint8_t outMask;                                ///< Bitmask for OUT endpoints (bit x maps to EPx OUT)
} DBLBUF_LUT_INFO;

// From usb_interrupt.h
//-------------------------------------------------------------------------------------------------------
/// USBIRQ internal module data
typedef struct {
    uint16_t eventMask; ///< Bit mask containing all pending events (see the \c USBIRQ_EVENT definitions)
    uint8_t inSuspend; ///< Is currently in suspend?
    uint16_t irqMask;   ///< USB interrupts to be enabled
} USBIRQ_DATA;

//-------------------------------------------------------------------------------------------------------
/// USBDP internal module data
typedef struct {
    const uint8_t __code *pDesc; ///< Pointer to the current descriptor
} USBDP_DATA;
//@}

/*
+------------------------------------------------------------------------------
|  Copyright 2004-2007 Texas Instruments Incorporated. All rights reserved.
|
|  IMPORTANT: Your use of this Software is limited to those specific rights
|  granted under the terms of a software license agreement between the user who
|  downloaded the software, his/her employer (which must be your employer) and
|  Texas Instruments Incorporated (the "License"). You may not use this Software
|  unless you agree to abide by the terms of the License. The License limits
|  your use, and you acknowledge, that the Software may not be modified, copied
|  or distributed unless embedded on a Texas Instruments microcontroller or used
|  solely and exclusively in conjunction with a Texas Instruments radio
|  frequency transceiver, which is integrated into your product. Other than for
|  the foregoing purpose, you may not use, reproduce, copy, prepare derivative
|  works of, modify, distribute, perform, display or sell this Software and/or
|  its documentation for any purpose.
|
|  YOU FURTHER ACKNOWLEDGE AND AGREE THAT THE SOFTWARE AND DOCUMENTATION ARE
|  PROVIDED “AS IS” WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESS OR IMPLIED,
|  INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF MERCHANTABILITY, TITLE,
|  NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE. IN NO EVENT SHALL
|  TEXAS INSTRUMENTS OR ITS LICENSORS BE LIABLE OR OBLIGATED UNDER CONTRACT,
|  NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR OTHER
|  LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES INCLUDING
|  BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR
|  CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF
|  SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES
|  (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.
|
|  Should you have any questions regarding your right to use this Software,
|  contact Texas Instruments Incorporated at www.TI.com.
|
+------------------------------------------------------------------------------
*/

#endif
