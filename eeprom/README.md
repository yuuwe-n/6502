# eeprom 

make sure eeprom is in correct orientation or you risk frying the IC

hexdump -C

# minipro
eeprom programmer


```
doas minipro -p AT28C256 -w <rom>.bin
```

https://gitlab.com/DavidGriffith/minipro/

## dependencies
pkg-config
libusb
