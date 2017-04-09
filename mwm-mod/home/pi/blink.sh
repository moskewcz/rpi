while /bin/true ; do \
echo 1 | tee /sys/class/leds/led0/brightness ; \
sleep 1 ; \
echo 0 | tee /sys/class/leds/led0/brightness ; \
sleep 1 ;\
done

