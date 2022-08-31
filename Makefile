#Gmake
# add user to dialer
# less /usr/local/share/arduino-makefile/Arduino.mk
BOARD_TAG =mega 
MCU =atmega2560
# Note: -D is needed for Mega boards.
#       (See https://github.com/sudar/Arduino-Makefile/issues/114#issuecomment-25011005)
# AVRDUDE_ARD_OPTS = -D -c $(AVRDUDE_ARD_PROGRAMMER) -b $(AVRDUDE_ARD_BAUDRATE) -P

AVRDUDE_ARD_BAUDRATE =115200
AVRDUDE_ARD_PROGRAMMER =stk500v2

AVRDUDE_CONF =/etc/avrdude.conf
AVRDUDE_MCU =m2560


#AVRDUDE_CONF=/etc/avrdude.conf
#MCU_FLAG_NAME =mmcu
include /usr/local/share/arduino-makefile/Arduino.mk
