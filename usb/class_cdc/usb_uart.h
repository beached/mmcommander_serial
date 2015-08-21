/***********************************************************************************

    Filename:     usb_uart.h

    Description:  USB Virtual UART interface.

***********************************************************************************/


#ifndef USB_UART_H
#define USB_UART_H

#include <stddef.h>
#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

#define USB_MAX_PACKET_SIZE             64 // As set in USB endpoint descriptor
#define UART_SET_RTS_LIMIT              200
#define UART_RELEASE_RTS_LIMIT          100

#define UART_FLOW_CTRL_STOP             1
#define UART_FLOW_CTRL_GO               0

#define UART_TX_BUFFER_EMPTY            0x01
#define UART_TX_STOPED_BY_FLOW_CTRL     0x02


typedef struct {
   uint32_t dteRate;
   uint8_t charFormat;
   uint8_t parityType;
   uint8_t dataBits;
}  CDC_LINE_CODING_STRUCTURE;


//void usbUartInit(uint32_t baudrate);
void usbUartInit(void);
void usbUartProcess(void);


#ifdef __cplusplus
}
#endif


#endif
