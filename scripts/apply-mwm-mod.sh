# network setup 
BOOT=/mnt/rpi/boot
ROOT=/mnt/rpi/root
OLAY=./mwm-mod
# create overlay tarball
tar cjf mwm-mod-etc.tbz2 --owner=root --group=root -C ${OLAY} etc 
tar cjf mwm-mod-home-pi.tbz2 --owner=1000 --group=1000 -C ${OLAY} home/pi
# unpack overlay
sudo tar xjf mwm-mod-etc.tbz2 -C ${ROOT}
sudo tar xjf mwm-mod-home-pi.tbz2 -C ${ROOT}
# enable ssh
echo "foo" | sudo tee ${BOOT}/ssh
