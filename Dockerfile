FROM ghcr.io/sdr-enthusiasts/docker-adsb-ultrafeeder
run ln -s /proc/mounts /etc/mtab

run apt-get update && apt-get install -o Dpkg::Options::="--force-confnew" -y --no-install-recommends -q kmod linux-tools linux-generic hwdata  #linux-tools-usbip hwids-usb device-mapper-libs
run apt-get autoremove -q -o APT::Autoremove::RecommendsImportant=0 -o APT::Autoremove::SuggestsImportant=0 -y && \
    apt-get clean -q -y 
