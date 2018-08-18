cd /media/$USER/boot
touch ssh
echo "" >> config.txt
echo "max_usb_current=1" >> config.txt
echo "hdmi_group=2" >> config.txt
echo "hdmi_mode=1" >> config.txt
echo "hdmi_mode=87" >> config.txt
echo "hdmi_cvt 800 480 60 6 0 0 0" >> config.txt
echo "hdmi_drive=1" >> config.txt
