#pragma once

/**************************************************************************************************
 *                                        - ioCC1111.h -
 *
 * Special header for the Texas Instruments CC1111 System on Chip.
 *
 **************************************************************************************************
 */

#include "defines.h"
#include <cc1110.h>

#include <compiler.h>
/* ------------------------------------------------------------------------------------------------
 *                                     Interrupt Alias
 * ------------------------------------------------------------------------------------------------
 */
#define  USB_VECTOR     P2INT_VECTOR /*  USB Inter. pending, alias for P2INT_VECTOR          */


/* ------------------------------------------------------------------------------------------------
 *                                      SFR Bit Alias
 * ------------------------------------------------------------------------------------------------
 */
#define  USBIF     P2IF              /*  USB interrupt flag                                  */
/*       USBIE     P2IE      ,   not in a bit addressable register                   */


/* ------------------------------------------------------------------------------------------------
 *                                            SFRs
 * ------------------------------------------------------------------------------------------------
 */

SFR( ENDIAN, 0x95 );               /*  USB Endianness Control                              */


/* ------------------------------------------------------------------------------------------------
 *                                       Xdata USB Registers
 * ------------------------------------------------------------------------------------------------
 */
SFRX( USBADDR, 0xDE00 );  /*  Function Address                                    */
SFRX( USBPOW, 0xDE01 );  /*  Power/Control Register                              */
SFRX( USBIIF, 0xDE02 );  /*  IN Endpoints and EP0 Interrupt Flags                */
SFRX( _XREGDE03, 0xDE03 );  /*  Reserved                                            */
SFRX( USBOIF, 0xDE04 );  /*  OUT Endpoints Interrupt Flags                       */
SFRX( _XREGDE05, 0xDE05 );  /*  Reserved                                            */
SFRX( USBCIF, 0xDE06 );  /*  Common USB Interrupt Flags                          */
SFRX( USBIIE, 0xDE07 );  /*  IN Endpoints and EP0 Interrupt Enable Mask          */
SFRX( _XREGDE08, 0xDE08 );  /*  Reserved                                            */
SFRX( USBOIE, 0xDE09 );  /*  OUT Endpoints Interrupt Enable Mask                 */
SFRX( _XREGDE0A, 0xDE0A );  /*  Reserved                                            */
SFRX( USBCIE, 0xDE0B );  /*  Common USB Interrupt Enable Mask                    */
SFRX( USBFRML, 0xDE0C );  /*  Current Frame Number (Low byte);                     */
SFRX( USBFRMH, 0xDE0D );  /*  Current Frame Number (High byte);                    */
SFRX( USBINDEX, 0xDE0E );  /*  Selects current endpoint                            */
SFRX( USBMAXI, 0xDE10 );  /*  Max. packet size for IN endpoint                    */
SFRX( USBCS0, 0xDE11 );  /*  EP0 Control and Status               (USBINDEX = 0); */
SFRX( USBCSIL, 0xDE11 );  /*  IN EP{1-5} Control and Status Low    (USBINDEX > 0); */
SFRX( USBCSIH, 0xDE12 );  /*  IN EP{1-5} Control and Status High                  */
SFRX( USBMAXO, 0xDE13 );  /*  Max. packet size for OUT endpoint                   */
SFRX( USBCSOL, 0xDE14 );  /*  OUT EP{1-5} Control and Status Low                  */
SFRX( USBCSOH, 0xDE15 );  /*  OUT EP{1-5} Control and Status High                 */
SFRX( USBCNT0, 0xDE16 );  /*  Number of received bytes in EP0 FIFO (USBINDEX = 0); */
SFRX( USBCNTL, 0xDE16 );  /*  Number of bytes in OUT FIFO Low      (USBINDEX > 0); */
SFRX( USBCNTH, 0xDE17 );  /*  Number of bytes in OUT FIFO High                    */
SFRX( USBF0, 0xDE20 );  /*  Endpoint 0 FIFO                                     */
SFRX( USBF1, 0xDE22 );  /*  Endpoint 1 FIFO                                     */
SFRX( USBF2, 0xDE24 );  /*  Endpoint 2 FIFO                                     */
SFRX( USBF3, 0xDE26 );  /*  Endpoint 3 FIFO                                     */
SFRX( USBF4, 0xDE28 );  /*  Endpoint 4 FIFO                                     */
SFRX( USBF5, 0xDE2A );  /*  Endpoint 5 FIFO                                     */



//#define  USBADDR     XREG( 0xDE00 )  /*  Function Address                                    */
//#define  USBPOW      XREG( 0xDE01 )  /*  Power/Control Register                              */
//#define  USBIIF      XREG( 0xDE02 )  /*  IN Endpoints and EP0 Interrupt Flags                */
//#define  _XREGDE03   XREG( 0xDE03 )  /*  Reserved                                            */
//#define  USBOIF      XREG( 0xDE04 )  /*  OUT Endpoints Interrupt Flags                       */
//#define  _XREGDE05   XREG( 0xDE05 )  /*  Reserved                                            */
//#define  USBCIF      XREG( 0xDE06 )  /*  Common USB Interrupt Flags                          */
//#define  USBIIE      XREG( 0xDE07 )  /*  IN Endpoints and EP0 Interrupt Enable Mask          */
//#define  _XREGDE08   XREG( 0xDE08 )  /*  Reserved                                            */
//#define  USBOIE      XREG( 0xDE09 )  /*  OUT Endpoints Interrupt Enable Mask                 */
//#define  _XREGDE0A   XREG( 0xDE0A )  /*  Reserved                                            */
//#define  USBCIE      XREG( 0xDE0B )  /*  Common USB Interrupt Enable Mask                    */
//#define  USBFRML     XREG( 0xDE0C )  /*  Current Frame Number (Low byte)                     */
//#define  USBFRMH     XREG( 0xDE0D )  /*  Current Frame Number (High byte)                    */
//#define  USBINDEX    XREG( 0xDE0E )  /*  Selects current endpoint                            */
//#define  USBMAXI     XREG( 0xDE10 )  /*  Max. packet size for IN endpoint                    */
//#define  USBCS0      XREG( 0xDE11 )  /*  EP0 Control and Status               (USBINDEX = 0) */
//#define  USBCSIL     XREG( 0xDE11 )  /*  IN EP{1-5} Control and Status Low    (USBINDEX > 0) */
//#define  USBCSIH     XREG( 0xDE12 )  /*  IN EP{1-5} Control and Status High                  */
//#define  USBMAXO     XREG( 0xDE13 )  /*  Max. packet size for OUT endpoint                   */
//#define  USBCSOL     XREG( 0xDE14 )  /*  OUT EP{1-5} Control and Status Low                  */
//#define  USBCSOH     XREG( 0xDE15 )  /*  OUT EP{1-5} Control and Status High                 */
//#define  USBCNT0     XREG( 0xDE16 )  /*  Number of received bytes in EP0 FIFO (USBINDEX = 0) */
//#define  USBCNTL     XREG( 0xDE16 )  /*  Number of bytes in OUT FIFO Low      (USBINDEX > 0) */
//#define  USBCNTH     XREG( 0xDE17 )  /*  Number of bytes in OUT FIFO High                    */
//#define  USBF0       XREG( 0xDE20 )  /*  Endpoint 0 FIFO                                     */
//#define  USBF1       XREG( 0xDE22 )  /*  Endpoint 1 FIFO                                     */
//#define  USBF2       XREG( 0xDE24 )  /*  Endpoint 2 FIFO                                     */
//#define  USBF3       XREG( 0xDE26 )  /*  Endpoint 3 FIFO                                     */
//#define  USBF4       XREG( 0xDE28 )  /*  Endpoint 4 FIFO                                     */
//#define  USBF5       XREG( 0xDE2A )  /*  Endpoint 5 FIFO                                     */


/* ------------------------------------------------------------------------------------------------
 *                                       Xdata Mapped SFRs
 * ------------------------------------------------------------------------------------------------
 */

/*
 *   Most SFRs are also accessible through XDATA address space.  The register definitions for
 *   this type of access are listed below.  The register names are identical to the SFR names
 *   but with the prefix X_ to denote an XDATA register.
 *
 *   For register descriptions, refer to the actual SFR declarations elsewhere in this file.
 */
#define  X_ENDIAN    XREG( 0xDF95 )


/**************************************************************************************************
 */
