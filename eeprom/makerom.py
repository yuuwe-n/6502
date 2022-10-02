#!/bin/python3

# little endian: lsb, msb: 0080 => 8000
rom = bytearray([0xea]) * 32768

rom[0] = 0xa9
rom[1] = 0x42
rom[2] = 0x8d
rom[3] = 0x00
rom[4] = 0x60

rom[0x7ffc] = 0x00
rom[0x7ffd] = 0x80

#0111 1111 1111 0110 => 1111 1111 1111 0110 
#0111 1111 1111 0111 

with open("rom.bin", "wb") as out_file:
    out_file.write(rom);
