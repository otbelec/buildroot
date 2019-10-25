
mount -t configfs none /sys/kernel/config

cd /sys/kernel/config/usb_gadget

mkdir g1
cd g1

echo "0x1d6b" > idVendor
echo "0x0104" > idProduct

mkdir strings/0x409

echo "0071337" > strings/0x409/serialnumber
echo "Iller Audio" > strings/0x409/manufacturer
echo "Protoboard" > strings/0x409/product

mkdir functions/uac2.usbsound0

mkdir configs/c.1

mkdir configs/c.1/strings/0x409
echo "UAC2 2x4 channels" > configs/c.1/strings/0x409/configuration

ln -s functions/uac2.usbsound0 configs/c.1

echo "ci_hdrc.0" > UDC



